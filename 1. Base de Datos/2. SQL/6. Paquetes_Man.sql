--CREATE OR REPLACE PACKAGE BODY PCK_MANTENIMIENTO AS

  ALTER PROCEDURE [dbo].[P_MANTE_CUT_INSERTAR]
  (
    @PO_NRO_CUT                      VARCHAR(20) OUTPUT,
    @PO_VALIDO                       NUMERIC OUTPUT, -- 0 : HAY ERROR , 1 : NO HAY ERROR
    @PO_MENSAJE                      VARCHAR(200) OUTPUT  -- MENSAJE DEL ERROR
  )
  AS
    DECLARE   
	@P_CUENTA      AS INT  = 0,
    @P_MENSAJE	   AS VARCHAR(200) = '-',
    @P_NRO_CUT     AS NUMERIC(20) ,
    @P_ID_ANIO     AS NUMERIC(10);
  BEGIN
      SET @PO_VALIDO = 0;
      SET @P_ID_ANIO  = YEAR(GETDATE());
            
      SELECT @P_CUENTA = COUNT(*) 
      FROM
          TRA_M_CUT
      WHERE
          ID_ANIO = @P_ID_ANIO;

      IF @P_CUENTA = 0  
	      BEGIN
			  SET @P_NRO_CUT = 1;
			  INSERT INTO
				  TRA_M_CUT
				  (
					NRO_CUT,
					ID_ANIO,
					FEC_CREACION
				  )
				  VALUES
				  (
					@P_NRO_CUT,
					@P_ID_ANIO,
					GETDATE()
				  );
			  SET @PO_VALIDO = 1;
	      END;
	  ELSE
          SELECT
		    @P_NRO_CUT = NRO_CUT + 1
               
          FROM
              TRA_M_CUT
          WHERE
              ID_ANIO = @P_ID_ANIO;
          UPDATE
              TRA_M_CUT
          SET
              NRO_CUT = @P_NRO_CUT
          WHERE
              ID_ANIO = @P_ID_ANIO;
          SET @PO_VALIDO = 1;
       
      SET @PO_NRO_CUT = CONCAT(@P_NRO_CUT,'-',@P_ID_ANIO);
      SET @PO_MENSAJE = @P_MENSAJE;
  END;
  GO
  
  
  CREATE PROCEDURE USP_DOCUMENTO_INSERTAR
  (
    PI_ID_TIPO                     TRA_M_DOCUMENTO.ID_TIPO %TYPE,
    PI_ID_FLUJO                    TRA_M_DOCUMENTO.ID_FLUJO %TYPE,
    PI_ID_TIPO_DOCUMENTO           TRA_M_DOCUMENTO.ID_TIPO_DOCUMENTO %TYPE,
    PI_ID_ESTADO_DOCUMENTO         TRA_M_DOCUMENTO.ID_ESTADO_DOCUMENTO %TYPE,
    PI_NRO_DOCUMENTO               TRA_M_DOCUMENTO.NRO_DOCUMENTO %TYPE,
    PI_ASUNTO                      TRA_M_DOCUMENTO.ASUNTO %TYPE,
    PI_REFERENCIA                  TRA_M_DOCUMENTO.REFERENCIA %TYPE,
    PI_COD_ARCHIVO                 TRA_M_DOCUMENTO.COD_ARCHIVO %TYPE,
    PI_NOMBRE_ARCHIVO              TRA_M_DOCUMENTO.NOMBRE_ARCHIVO %TYPE,
    PI_EXTENSION_ARCHIVO           TRA_M_DOCUMENTO.EXTENSION_ARCHIVO %TYPE,
    PI_ID_USUARIO                  TRA_M_DOCUMENTO.ID_USUARIO %TYPE,
    PI_ID_OFICINA                  TRA_M_DOCUMENTO.ID_OFICINA %TYPE,
    PI_ID_CARGO                    TRA_M_DOCUMENTO.ID_CARGO %TYPE,
    PI_FLG_PROYECTADO              TRA_M_DOCUMENTO.FLG_PROYECTADO %TYPE,
    PI_USU_CREACION                TRA_M_DOCUMENTO.USU_CREACION %TYPE,
    PI_IP_CREACION                 TRA_M_DOCUMENTO.IP_CREACION %TYPE,
    PO_ID_DOCUMENTO                OUT NUMBER,
    PO_VALIDO                      OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE                     OUT VARCHAR2  -- MENSAJE DEL ERROR
  )
  AS
    P_ID_DOCUMENTO            TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE;
    P_NRO_DOCUMENTO           TRA_M_DOCUMENTO.NRO_DOCUMENTO %TYPE;
    P_CLAVE                   TRA_M_DOCUMENTO.CLAVE_FIRMA %TYPE;
    P_NRO_CUT                 VARCHAR2(20) := '-';
  BEGIN
      SELECT
          SEQ_ID_DOCUMENTO.NEXTVAL
          INTO
          P_ID_DOCUMENTO
      FROM
          DUAL;

      IF PI_ID_TIPO = 2 THEN -- FISICO
          PCK_CONSULTA.USP_CORRELATIVO(PI_ID_OFICINA        => PI_ID_OFICINA,
                                       PI_ID_TIPO_DOCUMENTO => PI_ID_TIPO_DOCUMENTO,
                                       PI_ID_PERFIL         => PI_ID_CARGO,
                                       PI_ID_DOCUMENTO      => P_ID_DOCUMENTO,
                                       PI_FLG_OFICIAL       => 2,
                                       po_nro_documento     => P_NRO_DOCUMENTO,
                                       PO_VALIDO            => PO_VALIDO,
                                       PO_MENSAJE           => PO_MENSAJE);
      ELSE
          P_NRO_DOCUMENTO := PI_NRO_DOCUMENTO;
      END IF;

      SELECT
          TRAMITE.FN_GENERAR_CLAVE
          INTO
          P_CLAVE
      FROM
          DUAL;

      PCK_MANTENIMIENTO.USP_CUT_INSERTAR(PO_NRO_CUT => P_NRO_CUT,
                                         PO_VALIDO  => PO_VALIDO,
                                         PO_MENSAJE => PO_MENSAJE);
      INSERT INTO
          TRA_M_DOCUMENTO
          (
            ID_DOCUMENTO,
            NRO_CUT,
            ID_TIPO,
            ID_FLUJO,
            ID_TIPO_DOCUMENTO,
            ID_ESTADO_DOCUMENTO,
            NRO_DOCUMENTO,
            ASUNTO,
            REFERENCIA,
            COD_ARCHIVO,
            CLAVE_FIRMA,
            NOMBRE_ARCHIVO,
            EXTENSION_ARCHIVO,
            ID_USUARIO,
            ID_OFICINA,
            ID_CARGO,
            FLG_PROYECTADO,
            USU_CREACION,
            IP_CREACION
          )
          VALUES
          (
            P_ID_DOCUMENTO,
            P_NRO_CUT,
            PI_ID_TIPO,
            PI_ID_FLUJO,
            PI_ID_TIPO_DOCUMENTO,
            PI_ID_ESTADO_DOCUMENTO,
            P_NRO_DOCUMENTO,
            PI_ASUNTO,
            PI_REFERENCIA,
            PI_COD_ARCHIVO,
            P_CLAVE,
            PI_NOMBRE_ARCHIVO,
            PI_EXTENSION_ARCHIVO,
            PI_ID_USUARIO,
            PI_ID_OFICINA,
            PI_ID_CARGO,
            PI_FLG_PROYECTADO,
            PI_USU_CREACION,
            PI_IP_CREACION
          );
      -- SE GUARDA EL MOVIMIENTO DE CREACION
      PCK_MANTENIMIENTO.USP_DOCUMENTO_MOVIMIENTO(PI_ID_DOCUMENTO        => P_ID_DOCUMENTO,
                                                 PI_ID_ESTADO_DOCUMENTO => PI_ID_ESTADO_DOCUMENTO,
                                                 PI_ID_USUARIO          => PI_ID_USUARIO,
                                                 PI_ID_OFICINA          => PI_ID_OFICINA,
                                                 PI_ID_CARGO            => PI_ID_CARGO,
                                                 PI_MOVIMIENTO          => 'Se crea el documento',
                                                 PI_USU_CREACION        => PI_USU_CREACION,
                                                 PI_IP_CREACION         => PI_IP_CREACION,
                                                 PO_VALIDO              => PO_VALIDO,
                                                 PO_MENSAJE             => PO_MENSAJE);

      /*IF PI_ID_ESTADO_DOCUMENTO = 2 THEN
          PCK_MANTENIMIENTO.USP_DOCUMENTO_MOVIMIENTO(PI_ID_DOCUMENTO        => P_ID_DOCUMENTO,
                                                     PI_ID_ESTADO_DOCUMENTO => PI_ID_ESTADO_DOCUMENTO,
                                                     PI_ID_USUARIO          => PI_ID_USUARIO,
                                                     PI_ID_OFICINA          => PI_ID_OFICINA,
                                                     PI_ID_CARGO            => PI_ID_CARGO,
                                                     PI_MOVIMIENTO          => 'Se habilita el documento',
                                                     PI_USU_CREACION        => PI_USU_CREACION,
                                                     PI_IP_CREACION         => PI_IP_CREACION,
                                                     PO_VALIDO              => PO_VALIDO,
                                                     PO_MENSAJE             => PO_MENSAJE);
      END IF;*/

      PO_ID_DOCUMENTO := P_ID_DOCUMENTO;
  END;

  CREATE PROCEDURE USP_DOCUMENTO_ELIMINAR
  (
    PI_ID_DOCUMENTO                TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE,
    PO_VALIDO                      OUT INT,
    PO_MENSAJE                     OUT VARCHAR2
  )
  AS
    P_MENSAJE             VARCHAR2(200) := '-';
    P_CUENTA              INT := 0;
  BEGIN
      PO_VALIDO := 0;
      SELECT
          COUNT(*)
          INTO
          P_CUENTA
      FROM
          TRA_M_DOCUMENTO
      WHERE
          ID_DOCUMENTO = PI_ID_DOCUMENTO;
      IF P_CUENTA != 0 THEN
          DELETE FROM
              TRA_M_DOCUMENTO
          WHERE
              ID_DOCUMENTO = PI_ID_DOCUMENTO;
          PO_VALIDO := 1;
      ELSE
          P_MENSAJE := 'El documento fue eliminado por otro usuario.';
      END IF;
      PO_MENSAJE := P_MENSAJE;
  END;

  CREATE PROCEDURE USP_DOCUMENTO_ANULAR
  (
    PI_ID_DOCUMENTO                TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE,
    PI_ID_USUARIO                  TRA_M_DOCUMENTO.ID_USUARIO %TYPE,
    PI_ID_OFICINA                  TRA_M_DOCUMENTO.ID_OFICINA %TYPE,
    PI_ID_CARGO                    TRA_M_DOCUMENTO.ID_CARGO %TYPE,
    PI_USU_MODIFICACION            TRA_M_DOCUMENTO.USU_MODIFICACION %TYPE,
    PI_IP_MODIFICACION             TRA_M_DOCUMENTO.IP_MODIFICACION %TYPE,
    PO_VALIDO                      OUT INT,
    PO_MENSAJE                     OUT VARCHAR2
  )
  AS
    P_MENSAJE             VARCHAR2(200) := '';
    P_CUENTA              INT := 0;
  BEGIN
      PO_VALIDO := 0;
      SELECT
          COUNT(*)
          INTO
          P_CUENTA
      FROM
          TRA_M_DOCUMENTO
      WHERE
          ID_DOCUMENTO = PI_ID_DOCUMENTO;
      IF P_CUENTA != 0 THEN
          UPDATE
              TRA_M_DOCUMENTO
          SET
              ID_ESTADO_DOCUMENTO = 4
          WHERE
              ID_DOCUMENTO = PI_ID_DOCUMENTO;

          -- SE GUARDA EL MOVIMIENTO DE ANULACION
          PCK_MANTENIMIENTO.USP_DOCUMENTO_MOVIMIENTO(PI_ID_DOCUMENTO        => PI_ID_DOCUMENTO,
                                                     PI_ID_ESTADO_DOCUMENTO => 4,
                                                     PI_ID_USUARIO          => PI_ID_USUARIO,
                                                     PI_ID_OFICINA          => PI_ID_OFICINA,
                                                     PI_ID_CARGO            => PI_ID_CARGO,
                                                     PI_MOVIMIENTO          => 'Se anula el documento',
                                                     PI_USU_CREACION        => PI_USU_MODIFICACION,
                                                     PI_IP_CREACION         => PI_IP_MODIFICACION,
                                                     PO_VALIDO              => PO_VALIDO,
                                                     PO_MENSAJE             => PO_MENSAJE);
          PO_VALIDO := 1;
      ELSE
          P_MENSAJE := 'El documento ya fue anulado por otro usuario.';
      END IF;
      PO_MENSAJE := P_MENSAJE;
  END;

  CREATE PROCEDURE USP_DOCUMENTO_MOVIMIENTO
  (
    PI_ID_DOCUMENTO                TRA_D_DOCUMENTO_MOVIMIENTO.ID_DOCUMENTO %TYPE,
    PI_ID_ESTADO_DOCUMENTO         TRA_D_DOCUMENTO_MOVIMIENTO.ID_ESTADO_DOCUMENTO %TYPE,
    PI_ID_USUARIO                  TRA_D_DOCUMENTO_MOVIMIENTO.ID_USUARIO %TYPE,
    PI_ID_OFICINA                  TRA_D_DOCUMENTO_MOVIMIENTO.ID_OFICINA %TYPE,
    PI_ID_CARGO                    TRA_D_DOCUMENTO_MOVIMIENTO.ID_CARGO %TYPE,
    PI_MOVIMIENTO                  TRA_D_DOCUMENTO_MOVIMIENTO.MOVIMIENTO %TYPE,
    PI_USU_CREACION                TRA_D_DOCUMENTO_MOVIMIENTO.USU_CREACION %TYPE,
    PI_IP_CREACION                 TRA_D_DOCUMENTO_MOVIMIENTO.IP_CREACION %TYPE,
    PO_VALIDO                      OUT INT,
    PO_MENSAJE                     OUT VARCHAR2
  )
  AS
    P_MENSAJE             VARCHAR2(200) := '';
  BEGIN
      PO_VALIDO := 1;
      INSERT INTO
          TRA_D_DOCUMENTO_MOVIMIENTO
          (
            ID_DOCUMENTO_MOVIMIENTO,
            ID_DOCUMENTO,
            ID_ESTADO_DOCUMENTO,
            ID_USUARIO,
            ID_OFICINA,
            ID_CARGO,
            MOVIMIENTO,
            USU_CREACION,
            FEC_CREACION,
            IP_CREACION
          )
          VALUES
          (
            SEQ_ID_DOCUMENTO_MOVIMIENTO.NEXTVAL,
            PI_ID_DOCUMENTO,
            PI_ID_ESTADO_DOCUMENTO,
            PI_ID_USUARIO,
            PI_ID_OFICINA,
            PI_ID_CARGO,
            PI_MOVIMIENTO,
            PI_USU_CREACION,
            SYSDATE,
            PI_IP_CREACION
          );
      PO_MENSAJE := P_MENSAJE;
  END;

  CREATE PROCEDURE USP_DOCUMENTO_ENVIAR
  (
    PI_ID_DOCUMENTO                TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE,
    PI_ID_USUARIO                  TRA_M_DOCUMENTO.ID_USUARIO %TYPE,
    PI_ID_OFICINA                  TRA_M_DOCUMENTO.ID_OFICINA %TYPE,
    PI_ID_CARGO                    TRA_M_DOCUMENTO.ID_CARGO %TYPE,
    PI_USU_MODIFICACION            TRA_M_DOCUMENTO.USU_MODIFICACION %TYPE,
    PI_IP_MODIFICACION             TRA_M_DOCUMENTO.IP_MODIFICACION %TYPE,
    PO_VALIDO                      OUT INT,
    PO_MENSAJE                     OUT VARCHAR2
  )
  AS
    P_ID_ESTADO               TRA_M_DOCUMENTO.ID_ESTADO_DOCUMENTO %TYPE;
    P_DESC_TAREA              TRA_L_TAREA.DESC_TAREA %TYPE;
    P_NRO_PRIORIDAD           TRA_D_DOCUMENTO_USUARIO.NRO_PRIORIDAD %TYPE;
    P_ID_DOCUMENTO_USUARIO    TRA_D_DOCUMENTO_USUARIO.ID_DOCUMENTO_USUARIO %TYPE;
    P_NOMBRE_USUARIO          V_SEG_USUARIO.NOMBRE_USUARIO %TYPE;
    P_DESC_OFICINA            V_SEG_USUARIO.DESC_OFICINA %TYPE;
    P_DESC_CARGO              V_SEG_USUARIO.DESC_CARGO %TYPE;
    P_ID_TIPO                 TRA_M_DOCUMENTO.ID_TIPO %TYPE;
    P_MENSAJE                 VARCHAR2(200) := '';
    P_CUENTA                  INT := 0;
  BEGIN
      PO_VALIDO := 0;
      -- VERIFICAMOS SI EL DOCUMENTO EXISTE
      SELECT
          COUNT(*)
          INTO
          P_CUENTA
      FROM
          TRA_M_DOCUMENTO
      WHERE
          ID_DOCUMENTO = PI_ID_DOCUMENTO;
      IF P_CUENTA != 0 THEN
          SELECT
              ID_TIPO
              INTO
              P_ID_TIPO
          FROM
              TRA_M_DOCUMENTO
          WHERE
              ID_DOCUMENTO = PI_ID_DOCUMENTO;
          -- ACTUALIZAMOS EL ESTADO DEL DOCUMENTO
          UPDATE
              TRA_M_DOCUMENTO
          SET
              ID_ESTADO_DOCUMENTO = 2,
              USU_MODIFICACION = PI_USU_MODIFICACION,
              IP_MODIFICACION = PI_IP_MODIFICACION
          WHERE
              ID_DOCUMENTO = PI_ID_DOCUMENTO;

          -- GUARDAMOS EL MOVIMIENTO DEL DOCUMENTO
          PCK_MANTENIMIENTO.USP_DOCUMENTO_MOVIMIENTO(PI_ID_DOCUMENTO        => PI_ID_DOCUMENTO,
                                                     PI_ID_ESTADO_DOCUMENTO => 2,
                                                     PI_ID_USUARIO          => PI_ID_USUARIO,
                                                     PI_ID_OFICINA          => PI_ID_OFICINA,
                                                     PI_ID_CARGO            => PI_ID_CARGO,
                                                     PI_MOVIMIENTO          => 'Se envia el documento',
                                                     PI_USU_CREACION        => PI_USU_MODIFICACION,
                                                     PI_IP_CREACION         => PI_IP_MODIFICACION,
                                                     PO_VALIDO              => PO_VALIDO,
                                                     PO_MENSAJE             => PO_MENSAJE);
          IF P_ID_TIPO = 1 THEN
              -- REINICIAMOS LAS VARIABLES DE LOS USUARIOS ASIGNADOS
              UPDATE
                  TRA_D_DOCUMENTO_USUARIO
              SET
                  FLG_CUMPLIDO = 0,
                  FEC_CUMPLIDO = NULL,
                  FLG_RECHAZADO = 0,
                  FLG_PERMITIDO = 0,
                  FLG_EDITO = 0
              WHERE
                  ID_DOCUMENTO = PI_ID_DOCUMENTO;

              -- OBTENEMOS LOS DATOS DEL PRIMER USUARIO
              SELECT
                  DU.ID_DOCUMENTO_USUARIO,
                  DU.NRO_PRIORIDAD,
                  U.NOMBRE_USUARIO,
                  U.DESC_OFICINA,
                  U.DESC_CARGO,
                  T.DESC_TAREA
                  INTO
                  P_ID_DOCUMENTO_USUARIO,
                  P_NRO_PRIORIDAD,
                  P_NOMBRE_USUARIO,
                  P_DESC_OFICINA,
                  P_DESC_CARGO,
                  P_DESC_TAREA
              FROM
                  TRA_D_DOCUMENTO_USUARIO DU
                  INNER JOIN TRA_L_TAREA T ON T.ID_TAREA = DU.ID_TAREA
                  INNER JOIN V_SEG_USUARIO U ON U.ID_USUARIO = DU.ID_USUARIO
                                             AND U.ID_OFICINA = DU.ID_OFICINA
                                             AND U.ID_CARGO = DU.ID_CARGO
              WHERE
                  ID_DOCUMENTO = PI_ID_DOCUMENTO
                  AND FLG_CUMPLIDO = 0
                  AND NRO_PRIORIDAD = (SELECT
                                           MIN(NRO_PRIORIDAD)
                                       FROM
                                           TRA_D_DOCUMENTO_USUARIO
                                       WHERE
                                           ID_DOCUMENTO = PI_ID_DOCUMENTO
                                           AND FLG_CUMPLIDO = 0);

              -- HABILITAMOS LOS PERMISOS PARA EL SIGUIENTE USUARIO
              UPDATE
                  TRA_D_DOCUMENTO_USUARIO
              SET
                  FLG_PERMITIDO = 1
              WHERE
                  ID_DOCUMENTO = PI_ID_DOCUMENTO
                  AND ID_DOCUMENTO_USUARIO = P_ID_DOCUMENTO_USUARIO
                  AND NRO_PRIORIDAD = P_NRO_PRIORIDAD;

              PCK_MANTENIMIENTO.USP_DOCUMENTO_MOVIMIENTO(PI_ID_DOCUMENTO        => PI_ID_DOCUMENTO,
                                                         PI_ID_ESTADO_DOCUMENTO => P_ID_ESTADO,
                                                         PI_ID_USUARIO          => PI_ID_USUARIO,
                                                         PI_ID_OFICINA          => PI_ID_OFICINA,
                                                         PI_ID_CARGO            => PI_ID_CARGO,
                                                         PI_MOVIMIENTO          => 'Se habilitó el documento para la tarea de ' || P_DESC_TAREA || ' a ' || P_NOMBRE_USUARIO || ' [' || P_DESC_CARGO || '] - ' ||  P_DESC_OFICINA,
                                                         PI_USU_CREACION        => PI_USU_MODIFICACION,
                                                         PI_IP_CREACION         => PI_IP_MODIFICACION,
                                                         PO_VALIDO              => PO_VALIDO,
                                                         PO_MENSAJE             => PO_MENSAJE);
          ELSE
              DELETE FROM
                  TRA_D_DOCUMENTO_USUARIO
              WHERE
                  ID_DOCUMENTO = PI_ID_DOCUMENTO;
          END IF;
          PO_VALIDO := 1;
      ELSE
          P_MENSAJE := 'El documento no fue encontrado.';
      END IF;
      PO_MENSAJE := P_MENSAJE;
  END;

  CREATE PROCEDURE USP_DOCUMENTO_ANEXO_INSERTAR
  (
    PI_ID_DOCUMENTO_PADRE          TRA_D_DOCUMENTO_ANEXO.ID_DOCUMENTO_PADRE %TYPE,
    PI_ID_DOCUMENTO_HIJO           TRA_D_DOCUMENTO_ANEXO.ID_DOCUMENTO_HIJO %TYPE,
    PI_NRO_CUT                     TRA_D_DOCUMENTO_ANEXO.NRO_CUT %TYPE,
    PI_USU_CREACION                TRA_D_DOCUMENTO_ANEXO.USU_CREACION %TYPE,
    PI_IP_CREACION                 TRA_D_DOCUMENTO_ANEXO.IP_CREACION %TYPE,
    PO_VALIDO                      OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE                     OUT VARCHAR2  -- MENSAJE DEL ERROR
  )
  AS
    P_CUENTA           INT := 0;
    P_MENSAJE          VARCHAR2(200) := '';
  BEGIN
      PO_VALIDO := 0;
      SELECT
          COUNT(*)
          INTO
          P_CUENTA
      FROM
          TRA_D_DOCUMENTO_ANEXO
      WHERE
          ID_DOCUMENTO_PADRE = PI_ID_DOCUMENTO_PADRE
          AND ID_DOCUMENTO_HIJO = PI_ID_DOCUMENTO_HIJO;

      IF P_CUENTA = 0 THEN
          INSERT INTO
              TRA_D_DOCUMENTO_ANEXO
              (
                ID_DOCUMENTO_ANEXO,
                NRO_CUT,
                ID_DOCUMENTO_PADRE,
                ID_DOCUMENTO_HIJO,
                USU_CREACION,
                FEC_CREACION,
                IP_CREACION
              )
              VALUES
              (
                SEQ_ID_DOCUMENTO_ANEXO.NEXTVAL,
                PI_NRO_CUT,
                PI_ID_DOCUMENTO_PADRE,
                PI_ID_DOCUMENTO_HIJO,
                PI_USU_CREACION,
                SYSDATE,
                PI_IP_CREACION
              );
          PO_VALIDO := 1;
      ELSE
          P_MENSAJE := 'El documento ya fue anexado';
      END IF;
      PO_MENSAJE := P_MENSAJE;
  END;

  CREATE PROCEDURE USP_DOCUMENTO_OFICINA_INSERTAR
  (
    PI_ID_DOCUMENTO                TRA_D_DOCUMENTO_OFICINA.ID_DOCUMENTO %TYPE,
    PI_ID_OFICINA                  TRA_D_DOCUMENTO_OFICINA.ID_OFICINA %TYPE,
    PI_ID_USUARIO                  TRA_D_DOCUMENTO_OFICINA.ID_USUARIO %TYPE,
    PI_ID_CARGO                    TRA_D_DOCUMENTO_OFICINA.ID_CARGO %TYPE,
    PI_USU_CREACION                TRA_D_DOCUMENTO_OFICINA.USU_CREACION %TYPE,
    PI_IP_CREACION                 TRA_D_DOCUMENTO_OFICINA.IP_CREACION %TYPE,
    PO_VALIDO                      OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE                     OUT VARCHAR2  -- MENSAJE DEL ERROR
  )
  AS
    P_CUENTA           INT := 0;
    P_MENSAJE          VARCHAR2(200) := '';
  BEGIN
      PO_VALIDO := 0;
      SELECT
          COUNT(*)
          INTO
          P_CUENTA
      FROM
          TRA_D_DOCUMENTO_OFICINA
      WHERE
          ID_DOCUMENTO = PI_ID_DOCUMENTO
          AND ID_OFICINA = PI_ID_OFICINA
          AND ID_USUARIO = PI_ID_USUARIO;
      IF P_CUENTA = 0 THEN
          INSERT INTO
              TRA_D_DOCUMENTO_OFICINA
              (
                ID_DOCUMENTO_OFICINA,
                ID_DOCUMENTO,
                ID_OFICINA,
                ID_USUARIO,
                ID_CARGO,
                USU_CREACION,
                FEC_CREACION,
                IP_CREACION
              )
              VALUES
              (
                SEQ_ID_DOCUMENTO_OFICINA.NEXTVAL,
                PI_ID_DOCUMENTO,
                PI_ID_OFICINA,
                PI_ID_USUARIO,
                PI_ID_CARGO,
                PI_USU_CREACION,
                SYSDATE,
                PI_IP_CREACION
              );
          PO_VALIDO := 1;
      ELSE
          P_MENSAJE := 'La oficina ya se encuentra registra';
      END IF;
      PO_MENSAJE := P_MENSAJE;
  END;

  CREATE PROCEDURE USP_DOCUMENTO_DESTINO_INSERTAR
  (
    PI_ID_DOCUMENTO                TRA_D_DOCUMENTO_DESTINO.ID_DOCUMENTO %TYPE,
    PI_ID_ENTIDAD                  TRA_D_DOCUMENTO_DESTINO.ID_ENTIDAD %TYPE,
    PI_OFICINA                     TRA_D_DOCUMENTO_DESTINO.OFICINA %TYPE,
    PI_RUBRICA                     TRA_D_DOCUMENTO_DESTINO.RUBRICA %TYPE,
    PI_REMITENTE                   TRA_D_DOCUMENTO_DESTINO.REMITENTE %TYPE,
    PI_CARGO                       TRA_D_DOCUMENTO_DESTINO.CARGO %TYPE,
    PI_DIRECCION                   TRA_D_DOCUMENTO_DESTINO.DIRECCION %TYPE,
    PI_FLG_DOMICILIO               TRA_D_DOCUMENTO_DESTINO.FLG_DOMICILIO %TYPE,
    PI_USU_CREACION                TRA_D_DOCUMENTO_DESTINO.USU_CREACION %TYPE,
    PI_IP_CREACION                 TRA_D_DOCUMENTO_DESTINO.IP_CREACION %TYPE,
    PO_VALIDO                      OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE                     OUT VARCHAR2  -- MENSAJE DEL ERROR
  )
  AS
    P_CUENTA           INT:= 0;
    P_MENSAJE          VARCHAR2(200) := '';
  BEGIN
      PO_VALIDO := 0;
      SELECT
          COUNT(*)
          INTO
          P_CUENTA
      FROM
          TRA_D_DOCUMENTO_DESTINO
      WHERE
          ID_DOCUMENTO = PI_ID_DOCUMENTO
          AND ID_ENTIDAD = PI_ID_ENTIDAD;
      IF P_CUENTA = 0 THEN
          INSERT INTO
              TRA_D_DOCUMENTO_DESTINO
              (
                ID_DOCUMENTO_DESTINO,
                ID_DOCUMENTO,
                ID_ENTIDAD,
                OFICINA,
                RUBRICA,
                REMITENTE,
                CARGO,
                DIRECCION,
                FLG_DOMICILIO,
                USU_CREACION,
                FEC_CREACION,
                IP_CREACION
              )
              VALUES
              (
                SEQ_ID_DOCUMENTO_DESTINO.NEXTVAL,
                PI_ID_DOCUMENTO,
                PI_ID_ENTIDAD,
                UPPER(PI_OFICINA),
                UPPER(PI_RUBRICA),
                UPPER(PI_REMITENTE),
                UPPER(PI_CARGO),
                UPPER(PI_DIRECCION),
                PI_FLG_DOMICILIO,
                PI_USU_CREACION,
                SYSDATE,
                PI_IP_CREACION
              );
          PO_VALIDO := 1;
      ELSE
          P_MENSAJE := 'La entidad ya se encuentra registra';
      END IF;
      PO_MENSAJE := P_MENSAJE;
  END;

  CREATE PROCEDURE USP_DOCUMENTO_ADJUNTO_INSERTAR
  (
    PI_ID_DOCUMENTO                TRA_D_DOCUMENTO_ADJUNTO.ID_DOCUMENTO %TYPE,
    PI_NOMBRE_ARCHIVO              TRA_D_DOCUMENTO_ADJUNTO.NOMBRE_ARCHIVO %TYPE,
    PI_CODIGO_ARCHIVO              TRA_D_DOCUMENTO_ADJUNTO.CODIGO_ARCHIVO %TYPE,
    PI_PESO_ARCHIVO                TRA_D_DOCUMENTO_ADJUNTO.PESO_ARCHIVO %TYPE,
    PI_EXTENSION_ARCHIVO           TRA_D_DOCUMENTO_ADJUNTO.EXTENSION_ARCHIVO %TYPE,
    PI_FLG_FIRMA                   TRA_D_DOCUMENTO_ADJUNTO.FLG_FIRMA %TYPE,
    PI_USU_CREACION                TRA_D_DOCUMENTO_ADJUNTO.USU_CREACION %TYPE,
    PI_IP_CREACION                 TRA_D_DOCUMENTO_ADJUNTO.IP_CREACION %TYPE,
    PO_VALIDO                      OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE                     OUT VARCHAR2  -- MENSAJE DEL ERROR
  )
  AS
    P_MENSAJE          VARCHAR2(200) := '';
  BEGIN
      PO_VALIDO := 0;
      INSERT INTO
          TRA_D_DOCUMENTO_ADJUNTO
          (
             ID_DOCUMENTO_ADJUNTO,
             ID_DOCUMENTO,
             NOMBRE_ARCHIVO,
             CODIGO_ARCHIVO,
             PESO_ARCHIVO,
             EXTENSION_ARCHIVO,
             FLG_FIRMA,
             USU_CREACION,
             FEC_CREACION,
             IP_CREACION
           )
           VALUES
           (
             SEQ_ID_DOCUMENTO_ADJUNTO.NEXTVAL,
             PI_ID_DOCUMENTO,
             PI_NOMBRE_ARCHIVO,
             PI_CODIGO_ARCHIVO,
             PI_PESO_ARCHIVO,
             PI_EXTENSION_ARCHIVO,
             PI_FLG_FIRMA,
             PI_USU_CREACION,
             SYSDATE,
             PI_IP_CREACION
           );
       PO_VALIDO := 1;
       PO_MENSAJE := P_MENSAJE;
  END;

  CREATE PROCEDURE USP_DOCUMENTO_USUARIO_INSERTAR
  (
    PI_ID_DOCUMENTO                  TRA_D_DOCUMENTO_USUARIO.ID_DOCUMENTO %TYPE,
    PI_ID_USUARIO                    TRA_D_DOCUMENTO_USUARIO.ID_USUARIO %TYPE,
    PI_ID_OFICINA                    TRA_D_DOCUMENTO_USUARIO.ID_OFICINA %TYPE,
    PI_ID_CARGO                      TRA_D_DOCUMENTO_USUARIO.ID_CARGO %TYPE,
    PI_ID_TAREA                      TRA_D_DOCUMENTO_USUARIO.ID_TAREA %TYPE,
    PI_NRO_PRIORIDAD                 TRA_D_DOCUMENTO_USUARIO.NRO_PRIORIDAD %TYPE,
    PI_NOMBRE_USUARIO                TRA_D_DOCUMENTO_USUARIO.NOMBRE_USUARIO %TYPE,
    PI_NOMBRE_OFICINA                TRA_D_DOCUMENTO_USUARIO.NOMBRE_OFICINA %TYPE,
    PI_FLG_EDITAR                    TRA_D_DOCUMENTO_USUARIO.FLG_EDITAR %TYPE,
    PI_FLG_PERMITIDO                 TRA_D_DOCUMENTO_USUARIO.FLG_PERMITIDO %TYPE,
    PI_USU_CREACION                  TRA_D_DOCUMENTO_USUARIO.USU_CREACION %TYPE,
    PI_IP_CREACION                   TRA_D_DOCUMENTO_USUARIO.IP_CREACION %TYPE,
    PO_VALIDO                        OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE                       OUT VARCHAR2  -- MENSAJE DEL ERROR
  )
  AS
    P_CUENTA                  INT := 0;
    P_MENSAJE                 VARCHAR2(200) := '';
    P_FLG_PERMITIDO           VARCHAR2(200) := '0';
    P_ID_ESTADO               TRA_M_DOCUMENTO.ID_ESTADO_DOCUMENTO %TYPE;
    P_DESC_TAREA              TRA_L_TAREA.DESC_TAREA %TYPE;
    P_NOMBRE_USUARIO          V_SEG_USUARIO.NOMBRE_USUARIO %TYPE;
    P_DESC_OFICINA            V_SEG_USUARIO.DESC_OFICINA %TYPE;
    P_DESC_CARGO              V_SEG_USUARIO.DESC_CARGO %TYPE;
  BEGIN
      -- PREGUNTAMOS SI EXISTE EL USUARIO
      PO_VALIDO := 0;
      SELECT
          COUNT(*)
          INTO
          P_CUENTA
      FROM
          TRA_D_DOCUMENTO_USUARIO DU
      WHERE
          DU.ID_USUARIO = PI_ID_USUARIO
          AND DU.ID_DOCUMENTO = PI_ID_DOCUMENTO
          AND DU.ID_OFICINA = PI_ID_OFICINA
          AND DU.ID_CARGO = PI_ID_CARGO
          AND DU.ID_TAREA = PI_ID_TAREA;

      -- SI NO EXISTE EL USUARIO, SE AGREGA
      IF P_CUENTA = 0 THEN
          SELECT
              COUNT(*)
              INTO
              P_CUENTA
          FROM
              TRA_D_DOCUMENTO_USUARIO DU
          WHERE
              DU.ID_DOCUMENTO = PI_ID_DOCUMENTO
              AND DU.FLG_PERMITIDO = 1;

          IF P_CUENTA = 0 THEN
              P_FLG_PERMITIDO := '1';
              SELECT
                  D.ID_ESTADO_DOCUMENTO
                  INTO
                  P_ID_ESTADO
              FROM
                  TRA_M_DOCUMENTO D
              WHERE
                  D.ID_DOCUMENTO = PI_ID_DOCUMENTO;

              -- SI TIENE ESTADO ENVIADO
              IF P_ID_ESTADO = 2 THEN
                  -- OBTENEMOS LOS DATOS DEL PRIMER USUARIO
                  SELECT
                      U.NOMBRE_USUARIO,
                      U.DESC_OFICINA,
                      U.DESC_CARGO,
                      T.DESC_TAREA,
                      D.ID_ESTADO_DOCUMENTO
                      INTO
                      P_NOMBRE_USUARIO,
                      P_DESC_OFICINA,
                      P_DESC_CARGO,
                      P_DESC_TAREA,
                      P_ID_ESTADO
                  FROM
                      TRA_M_DOCUMENTO D
                      INNER JOIN TRA_L_TAREA T ON T.ID_TAREA = PI_ID_TAREA
                      INNER JOIN V_SEG_USUARIO U ON U.ID_USUARIO = PI_ID_USUARIO
                                                    AND U.ID_OFICINA = PI_ID_OFICINA
                                                    AND U.ID_CARGO = PI_ID_CARGO
                  WHERE
                      ID_DOCUMENTO = PI_ID_DOCUMENTO;

                  -- GUARDAMOS EL MOVIMIENTO PARA EL USUARIO
                  PCK_MANTENIMIENTO.USP_DOCUMENTO_MOVIMIENTO(PI_ID_DOCUMENTO        => PI_ID_DOCUMENTO,
                                                             PI_ID_ESTADO_DOCUMENTO => P_ID_ESTADO,
                                                             PI_ID_USUARIO          => PI_ID_USUARIO,
                                                             PI_ID_OFICINA          => PI_ID_OFICINA,
                                                             PI_ID_CARGO            => PI_ID_CARGO,
                                                             PI_MOVIMIENTO          => 'Se habilitó el documento para la tarea de ' || P_DESC_TAREA || ' a ' || P_NOMBRE_USUARIO || ' [' || P_DESC_CARGO || '] - ' ||  P_DESC_OFICINA,
                                                             PI_USU_CREACION        => PI_USU_CREACION,
                                                             PI_IP_CREACION         => PI_IP_CREACION,
                                                             PO_VALIDO              => PO_VALIDO,
                                                             PO_MENSAJE             => PO_MENSAJE);
              END IF;
          END IF;

          INSERT INTO
              TRA_D_DOCUMENTO_USUARIO
              (
                ID_DOCUMENTO_USUARIO,
                ID_USUARIO,
                ID_DOCUMENTO,
                ID_OFICINA,
                ID_CARGO,
                ID_TAREA,
                NRO_PRIORIDAD,
                FLG_PERMITIDO,
                NOMBRE_USUARIO,
                NOMBRE_OFICINA,
                FLG_EDITAR,
                USU_CREACION,
                FEC_CREACION,
                IP_CREACION
              )
              VALUES
              (
                SEQ_ID_DOCUMENTO_USUARIO.NEXTVAL,
                PI_ID_USUARIO,
                PI_ID_DOCUMENTO,
                PI_ID_OFICINA,
                PI_ID_CARGO,
                PI_ID_TAREA,
                PI_NRO_PRIORIDAD,
                P_FLG_PERMITIDO,
                PI_NOMBRE_USUARIO,
                PI_NOMBRE_OFICINA,
                PI_FLG_EDITAR,
                PI_USU_CREACION,
                SYSDATE,
                PI_IP_CREACION
              );

          PO_VALIDO := 1;
      ELSE
          P_MENSAJE := 'El usuario ya se encuentra agregado';
      END IF;
      PO_MENSAJE := P_MENSAJE;
  END;

  CREATE PROCEDURE USP_DOCUMENTO_USUARIO_CUMPLIO
  (
    PI_ID_DOCUMENTO_USUARIO        TRA_D_DOCUMENTO_USUARIO.ID_DOCUMENTO_USUARIO %TYPE,
    PI_ID_DOCUMENTO                TRA_D_DOCUMENTO_USUARIO.ID_DOCUMENTO %TYPE,
    PI_ID_OFICINA                  TRA_D_DOCUMENTO_USUARIO.ID_OFICINA %TYPE,
    PI_ID_USUARIO                  TRA_D_DOCUMENTO_USUARIO.ID_USUARIO %TYPE,
    PI_ID_CARGO                    TRA_D_DOCUMENTO_USUARIO.ID_CARGO %TYPE,
    PI_FLG_RECHAZADO               TRA_D_DOCUMENTO_USUARIO.FLG_RECHAZADO %TYPE,
    PI_FLG_EDITO                   TRA_D_DOCUMENTO_USUARIO.FLG_EDITO %TYPE,
    PI_FLG_FIRMA                   TRA_M_DOCUMENTO.FLG_FIRMA %TYPE,
    PI_COD_ARCHIVO                 TRA_M_DOCUMENTO.COD_ARCHIVO %TYPE,
    PI_USU_MODIFICACION            TRA_D_DOCUMENTO_USUARIO.USU_MODIFICACION %TYPE,
    PI_IP_MODIFICACION             TRA_D_DOCUMENTO_USUARIO.IP_MODIFICACION %TYPE,
    PO_VALIDO                      OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE                     OUT VARCHAR2  -- MENSAJE DEL ERROR
  )
  AS
    P_CUENTA                  INT := 0;
    P_MENSAJE                 VARCHAR2(200) := '';
    P_ID_ESTADO               TRA_M_DOCUMENTO.ID_ESTADO_DOCUMENTO %TYPE;
    P_ID_TAREA                TRA_D_DOCUMENTO_USUARIO.ID_TAREA %TYPE;
    P_DESC_TAREA              TRA_L_TAREA.DESC_TAREA %TYPE;
    P_NRO_PRIORIDAD           TRA_D_DOCUMENTO_USUARIO.NRO_PRIORIDAD %TYPE;
    P_ID_DOCUMENTO_USUARIO    TRA_D_DOCUMENTO_USUARIO.ID_DOCUMENTO_USUARIO %TYPE;
    P_NOMBRE_USUARIO          V_SEG_USUARIO.NOMBRE_USUARIO %TYPE;
    P_DESC_OFICINA            V_SEG_USUARIO.DESC_OFICINA %TYPE;
    P_DESC_CARGO              V_SEG_USUARIO.DESC_CARGO %TYPE;
  BEGIN
      PO_VALIDO := 0;
      SELECT
          COUNT(*)
          INTO
          P_CUENTA
      FROM
          TRA_D_DOCUMENTO_USUARIO
      WHERE
          ID_DOCUMENTO_USUARIO = PI_ID_DOCUMENTO_USUARIO
          AND ID_DOCUMENTO = PI_ID_DOCUMENTO
          AND ID_OFICINA = PI_ID_OFICINA
          AND ID_USUARIO = PI_ID_USUARIO
          AND ID_CARGO = PI_ID_CARGO
          AND FLG_CUMPLIDO = 0;
      INSERT INTO LOGG VALUES(PI_ID_DOCUMENTO_USUARIO)   ;
      INSERT INTO LOGG VALUES(PI_ID_DOCUMENTO)   ;
      INSERT INTO LOGG VALUES(PI_ID_OFICINA)   ;
      INSERT INTO LOGG VALUES(PI_ID_CARGO)   ;
      IF P_CUENTA != 0 THEN

          SELECT
              DU.ID_TAREA,
              DU.NRO_PRIORIDAD
              INTO
              P_ID_TAREA,
              P_NRO_PRIORIDAD
          FROM
              TRA_D_DOCUMENTO_USUARIO DU
          WHERE
              ID_DOCUMENTO_USUARIO = PI_ID_DOCUMENTO_USUARIO
              AND ID_DOCUMENTO = PI_ID_DOCUMENTO
              AND ID_OFICINA = PI_ID_OFICINA
              AND ID_USUARIO = PI_ID_USUARIO
              AND ID_CARGO = PI_ID_CARGO
              AND FLG_CUMPLIDO = 0;

          UPDATE
              TRA_D_DOCUMENTO_USUARIO
          SET
              FLG_CUMPLIDO = 1,
              FEC_CUMPLIDO = SYSDATE,
              FLG_PERMITIDO = 0,
              FLG_RECHAZADO = PI_FLG_RECHAZADO,
              FLG_EDITO = PI_FLG_EDITO,
              USU_MODIFICACION = PI_USU_MODIFICACION,
              FEC_MODIFICACION = SYSDATE,
              IP_MODIFICACION = PI_IP_MODIFICACION
          WHERE
              ID_DOCUMENTO_USUARIO = PI_ID_DOCUMENTO_USUARIO
              AND ID_DOCUMENTO = PI_ID_DOCUMENTO
              AND ID_OFICINA = PI_ID_OFICINA
              AND ID_USUARIO = PI_ID_USUARIO
              AND ID_CARGO = PI_ID_CARGO;



          -- OBTENEMOS EL ESTADO SEGUN LA TAREA
          IF P_ID_TAREA = 4 THEN -- REVISAR
              P_ID_ESTADO := 6;
          ELSE IF P_ID_TAREA = 3 THEN -- APROBAR
              P_ID_ESTADO := 7;
          ELSE IF P_ID_TAREA = 2 THEN -- VISAR
              P_ID_ESTADO := 8;
          ELSE IF P_ID_TAREA = 1 THEN -- FIRMAR
              P_ID_ESTADO := 9;
          END IF;
          END IF;
          END IF;
          END IF;

          -- CONTAMOS LOS USUARIOS QUE QUEDAN PENDIENTES
          SELECT
              COUNT(*)
              INTO
              P_CUENTA
          FROM
              TRA_D_DOCUMENTO_USUARIO
          WHERE
              ID_DOCUMENTO_USUARIO != PI_ID_DOCUMENTO_USUARIO
              AND ID_DOCUMENTO = PI_ID_DOCUMENTO
              AND FLG_CUMPLIDO = 0;

          IF PI_FLG_RECHAZADO = 1 THEN -- SI LO OBSERVA O LO MANDA A REHACER
              IF P_CUENTA != 0 THEN
                  P_ID_ESTADO := 5;
              ELSE
                  P_ID_ESTADO := 3;
              END IF;
          ELSE IF PI_FLG_RECHAZADO = 2 THEN
              P_ID_ESTADO := 3;
          END IF;
          END IF;

          -- ACTUALIZAMOS EL DOCUMENTO
          UPDATE
              TRA_M_DOCUMENTO
          SET
              COD_ARCHIVO = (CASE WHEN PI_FLG_EDITO = 1 THEN PI_COD_ARCHIVO ELSE COD_ARCHIVO END),
              COD_ARCHIVO_FIRMADO = (CASE WHEN PI_FLG_FIRMA = 1 THEN PI_COD_ARCHIVO ELSE COD_ARCHIVO_FIRMADO END),
              ID_ESTADO_DOCUMENTO = P_ID_ESTADO,
              FLG_FIRMA = PI_FLG_FIRMA,
              FEC_FIRMA = (CASE WHEN PI_FLG_FIRMA = 1 THEN SYSDATE ELSE FEC_FIRMA END)
          WHERE
              ID_DOCUMENTO = PI_ID_DOCUMENTO;

          PCK_MANTENIMIENTO.USP_DOCUMENTO_MOVIMIENTO(PI_ID_DOCUMENTO        => PI_ID_DOCUMENTO,
                                                     PI_ID_ESTADO_DOCUMENTO => P_ID_ESTADO,
                                                     PI_ID_USUARIO          => PI_ID_USUARIO,
                                                     PI_ID_OFICINA          => PI_ID_OFICINA,
                                                     PI_ID_CARGO            => PI_ID_CARGO,
                                                     PI_MOVIMIENTO          => 'Se actualizó la atención asignada del documento',
                                                     PI_USU_CREACION        => PI_USU_MODIFICACION,
                                                     PI_IP_CREACION         => PI_IP_MODIFICACION,
                                                     PO_VALIDO              => PO_VALIDO,
                                                     PO_MENSAJE             => PO_MENSAJE);



          IF PI_FLG_RECHAZADO = 2 THEN -- SI MANDO A REHACER EL DOCUMENTO
              PCK_MANTENIMIENTO.USP_DOCUMENTO_MOVIMIENTO(PI_ID_DOCUMENTO        => PI_ID_DOCUMENTO,
                                                         PI_ID_ESTADO_DOCUMENTO => P_ID_ESTADO,
                                                         PI_ID_USUARIO          => PI_ID_USUARIO,
                                                         PI_ID_OFICINA          => PI_ID_OFICINA,
                                                         PI_ID_CARGO            => PI_ID_CARGO,
                                                         PI_MOVIMIENTO          => 'Se devuelve el documento',
                                                         PI_USU_CREACION        => PI_USU_MODIFICACION,
                                                         PI_IP_CREACION         => PI_IP_MODIFICACION,
                                                         PO_VALIDO              => PO_VALIDO,
                                                         PO_MENSAJE             => PO_MENSAJE);
          END IF;
          -- SI NO ENCONTRAMOS MAS USUARIOS, FINALIZAMOS LA ATENCION DEL DOCUMENTO
          IF P_CUENTA = 0 THEN
              -- SI EL USUARIO FINAL NO RECHAZO EL DOCUMENTO, FINALIZA
              IF PI_FLG_RECHAZADO != 1 AND PI_FLG_RECHAZADO != 2 THEN
                  -- SE FINALIZA EL DOCUMENTO
                  P_ID_ESTADO := 10;
                  UPDATE
                      TRA_M_DOCUMENTO
                  SET
                      ID_ESTADO_DOCUMENTO = P_ID_ESTADO
                  WHERE
                      ID_DOCUMENTO = PI_ID_DOCUMENTO;

                  PCK_MANTENIMIENTO.USP_DOCUMENTO_MOVIMIENTO(PI_ID_DOCUMENTO        => PI_ID_DOCUMENTO,
                                                             PI_ID_ESTADO_DOCUMENTO => P_ID_ESTADO,
                                                             PI_ID_USUARIO          => PI_ID_USUARIO,
                                                             PI_ID_OFICINA          => PI_ID_OFICINA,
                                                             PI_ID_CARGO            => PI_ID_CARGO,
                                                             PI_MOVIMIENTO          => 'Se finaliza el documento',
                                                             PI_USU_CREACION        => PI_USU_MODIFICACION,
                                                             PI_IP_CREACION         => PI_IP_MODIFICACION,
                                                             PO_VALIDO              => PO_VALIDO,
                                                             PO_MENSAJE             => PO_MENSAJE);
              END IF;

          ELSE
              IF PI_FLG_RECHAZADO != 2 THEN -- SI NO MANDO A REHACER EL DOCUMENTO
                  -- OBTENEMOS LOS DATOS DEL SIGUIENTE USUARIO
                  SELECT
                      DU.ID_DOCUMENTO_USUARIO,
                      DU.NRO_PRIORIDAD,
                      U.NOMBRE_USUARIO,
                      U.DESC_OFICINA,
                      U.DESC_CARGO,
                      T.DESC_TAREA
                      INTO
                      P_ID_DOCUMENTO_USUARIO,
                      P_NRO_PRIORIDAD,
                      P_NOMBRE_USUARIO,
                      P_DESC_OFICINA,
                      P_DESC_CARGO,
                      P_DESC_TAREA
                  FROM
                      TRA_D_DOCUMENTO_USUARIO DU
                      INNER JOIN TRA_L_TAREA T ON T.ID_TAREA = DU.ID_TAREA
                      INNER JOIN V_SEG_USUARIO U ON U.ID_USUARIO = DU.ID_USUARIO
                                                 AND U.ID_OFICINA = DU.ID_OFICINA
                                                 AND U.ID_CARGO = DU.ID_CARGO
                  WHERE
                      ID_DOCUMENTO_USUARIO != PI_ID_DOCUMENTO_USUARIO
                      AND ID_DOCUMENTO = PI_ID_DOCUMENTO
                      AND FLG_CUMPLIDO = 0
                      AND NRO_PRIORIDAD = (SELECT
                                               MIN(NRO_PRIORIDAD)
                                           FROM
                                               TRA_D_DOCUMENTO_USUARIO
                                           WHERE
                                               ID_DOCUMENTO = PI_ID_DOCUMENTO
                                               AND FLG_CUMPLIDO = 0);
                  -- HABILITAMOS LOS PERMISOS PARA EL SIGUIENTE USUARIO
                  UPDATE
                      TRA_D_DOCUMENTO_USUARIO
                  SET
                      FLG_PERMITIDO = 1
                  WHERE
                      ID_DOCUMENTO = PI_ID_DOCUMENTO
                      AND ID_DOCUMENTO_USUARIO = P_ID_DOCUMENTO_USUARIO
                      AND NRO_PRIORIDAD = P_NRO_PRIORIDAD;

                  PCK_MANTENIMIENTO.USP_DOCUMENTO_MOVIMIENTO(PI_ID_DOCUMENTO        => PI_ID_DOCUMENTO,
                                                             PI_ID_ESTADO_DOCUMENTO => P_ID_ESTADO,
                                                             PI_ID_USUARIO          => PI_ID_USUARIO,
                                                             PI_ID_OFICINA          => PI_ID_OFICINA,
                                                             PI_ID_CARGO            => PI_ID_CARGO,
                                                             PI_MOVIMIENTO          => 'Se habilitó el documento para la tarea de ' || P_DESC_TAREA || ' a ' || P_NOMBRE_USUARIO || ' [' || P_DESC_CARGO || '] - ' ||  P_DESC_OFICINA,
                                                             PI_USU_CREACION        => PI_USU_MODIFICACION,
                                                             PI_IP_CREACION         => PI_IP_MODIFICACION,
                                                             PO_VALIDO              => PO_VALIDO,
                                                             PO_MENSAJE             => PO_MENSAJE);

              END IF;
          END IF;
          PO_VALIDO := 1;
      ELSE
          P_MENSAJE := 'No se encontró el documento para su atención.';
      END IF;
      PO_MENSAJE := P_MENSAJE;
  END;

  CREATE PROCEDURE USP_DOCUMENTO_CARGO
  (
    PI_ID_DOCUMENTO_OFICINA        TRA_D_DOCUMENTO_OFICINA.ID_DOCUMENTO_OFICINA %TYPE,
    PI_ID_DOCUMENTO                TRA_D_DOCUMENTO_OFICINA.ID_DOCUMENTO %TYPE,
    PI_ID_OFICINA                  TRA_D_DOCUMENTO_OFICINA.ID_OFICINA %TYPE,
    PI_ID_USUARIO                  TRA_D_DOCUMENTO_OFICINA.ID_USUARIO %TYPE,
    PI_ID_CARGO                    TRA_D_DOCUMENTO_OFICINA.ID_CARGO %TYPE,
    PI_COD_CARGO                   TRA_D_DOCUMENTO_OFICINA.COD_CARGO %TYPE,
    PI_USU_MODIFICACION            TRA_D_DOCUMENTO_OFICINA.USU_MODIFICACION %TYPE,
    PI_IP_MODIFICACION             TRA_D_DOCUMENTO_OFICINA.IP_MODIFICACION %TYPE,
    PO_VALIDO                      OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE                     OUT VARCHAR2  -- MENSAJE DEL ERROR
  )
  AS
    P_CUENTA           INT := 0;
    P_MENSAJE          VARCHAR2(200) := '';
  BEGIN
      PO_VALIDO := 0;
      SELECT
          COUNT(*)
          INTO
          P_CUENTA
      FROM
          TRA_D_DOCUMENTO_OFICINA
      WHERE
          ID_DOCUMENTO_OFICINA = PI_ID_DOCUMENTO_OFICINA
          AND FLG_CARGO = 0;

      IF P_CUENTA != 0 THEN
          UPDATE
              TRA_D_DOCUMENTO_OFICINA
          SET
              FLG_CARGO = 1,
              USU_MODIFICACION = PI_USU_MODIFICACION,
              IP_MODIFICACION = PI_IP_MODIFICACION,
              COD_CARGO = PI_COD_CARGO,
              FEC_CARGO = SYSDATE
          WHERE
              ID_DOCUMENTO_OFICINA = PI_ID_DOCUMENTO_OFICINA;

          -- GUARDAMOS EL MOVIMIENTO PARA EL USUARIO
          PCK_MANTENIMIENTO.USP_DOCUMENTO_MOVIMIENTO(PI_ID_DOCUMENTO        => PI_ID_DOCUMENTO,
                                                     PI_ID_ESTADO_DOCUMENTO => 11,
                                                     PI_ID_USUARIO          => PI_ID_USUARIO,
                                                     PI_ID_OFICINA          => PI_ID_OFICINA,
                                                     PI_ID_CARGO            => PI_ID_CARGO,
                                                     PI_MOVIMIENTO          => 'Se firmó el cargo ',
                                                     PI_USU_CREACION        => PI_USU_MODIFICACION,
                                                     PI_IP_CREACION         => PI_IP_MODIFICACION,
                                                     PO_VALIDO              => PO_VALIDO,
                                                     PO_MENSAJE             => PO_MENSAJE);
          PO_VALIDO := 1;
      ELSE
          P_MENSAJE := 'El cargo de este documento ya fue firmado';
      END IF;
      PO_MENSAJE := P_MENSAJE;
  END;
END PCK_MANTENIMIENTO;
