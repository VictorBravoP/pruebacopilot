prompt
prompt Creating package PCK_CONSULTA
prompt =============================
prompt
CREATE OR REPLACE PACKAGE TRAMITE.PCK_CONSULTA AS

  PROCEDURE USP_DOCUMENTO_LISTAR_UNO
  (
    PO_CURSOR                     OUT SYS_REFCURSOR,
    PI_ID_DOCUMENTO               TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE
  );

  PROCEDURE USP_DOCUMENTO_MOVIMIENTO
  (
    PO_CURSOR                     OUT SYS_REFCURSOR,
    PI_ID_DOCUMENTO               TRA_D_DOCUMENTO_MOVIMIENTO.ID_DOCUMENTO %TYPE
  );

  PROCEDURE USP_TIPO_DOCUMENTO
  (
    PO_CURSOR                     OUT SYS_REFCURSOR
  );

  PROCEDURE USP_CORRELATIVO
  (
    PI_ID_OFICINA                 TRA_M_CORRELATIVO.ID_OFICINA %TYPE,
    PI_ID_TIPO_DOCUMENTO          TRA_M_CORRELATIVO.ID_TIPO_DOCUMENTO %TYPE,
    PI_ID_PERFIL                  TRA_M_CORRELATIVO.ID_PERFIL %TYPE,
    PI_ID_DOCUMENTO               TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE,
    PI_FLG_OFICIAL                NUMBER,
    --PI_ZIP                      INT,
    PO_NRO_DOCUMENTO              OUT VARCHAR2,  -- OBTIENES NRO DE DOCUMENTO
    PO_VALIDO                     OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE                    OUT VARCHAR2  -- MENSAJE DEL ERROR
  );

  PROCEDURE USP_PLANTILLA_LISTAR
  (
    PO_CURSOR                     OUT SYS_REFCURSOR,
    PI_ID_TIPO_DOCUMENTO          TRA_M_PLANTILLA.ID_TIPO_DOCUMENTO %TYPE
  );

  PROCEDURE USP_OFICINAS_LISTAR2
  (
    PO_CURSOR                     OUT SYS_REFCURSOR
  );

  PROCEDURE USP_OFICINAS_LISTAR
  (
    PO_CURSOR                     OUT SYS_REFCURSOR,
    PI_CRITERIO                   SEG_M_OFICINA.DESC_OFICINA %TYPE
  );

  PROCEDURE USP_DOCUMENTO_ANEXO_LISTAR
  (
    PO_CURSOR        OUT SYS_REFCURSOR,
    PI_ID_DOCUMENTO  TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE
  );

  PROCEDURE USP_DOCUMENTO_ADJUNTO_LISTAR
  (
    PO_CURSOR                     OUT SYS_REFCURSOR,
    PI_ID_DOCUMENTO               TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE
  );

   PROCEDURE USP_DOCUMENTO_DESTINO_LISTAR
  (
    PO_CURSOR                     OUT SYS_REFCURSOR,
    PI_ID_DOCUMENTO               TRA_D_DOCUMENTO_DESTINO.ID_DOCUMENTO %TYPE
  );


  PROCEDURE USP_DOCUMENTO_OFICINA_LISTAR
  (
    PO_CURSOR                     OUT SYS_REFCURSOR,
    PI_ID_DOCUMENTO               TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE,
    PI_ID_SISTEMA                 V_SEG_USUARIO.ID_SISTEMA %TYPE
  );

  PROCEDURE USP_DOCUMENTO_USUARIO_LISTAR
  (
    PO_CURSOR                     OUT SYS_REFCURSOR,
    PI_ID_DOCUMENTO               TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE,
    PI_ID_SISTEMA                 V_SEG_USUARIO.ID_SISTEMA %TYPE
  );

  PROCEDURE USP_DOCUMENTO_PAGINACION
  (
    PO_RESULTADO                  OUT SYS_REFCURSOR,
    PI_PAGINA                     IN INTEGER,
    PI_NROREGISTROS               IN INTEGER,
    PI_ORDEN_COLUMNA              IN VARCHAR2,
    PI_ORDEN                      IN VARCHAR2,
    PI_WHERE                      VARCHAR2 DEFAULT NULL,
    PI_TABLA                      IN VARCHAR2,
    PO_CUENTA                     OUT INT
  );

END PCK_CONSULTA;
/

prompt
prompt Creating package PCK_LOGIN
prompt ==========================
prompt
CREATE OR REPLACE PACKAGE TRAMITE.PCK_LOGIN AS

  PROCEDURE USP_LOGIN
  (
    PI_COD_USUARIO          SEG_M_USUARIO.COD_USUARIO %TYPE,
    PI_CLAVE_USUARIO        SEG_M_USUARIO.CLAVE_USUARIO %TYPE,
    PO_ID_USUARIO           OUT NUMBER,
    PO_VALIDO               OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE              OUT VARCHAR2  -- MENSAJE DEL ERROR
  );

  PROCEDURE USP_LOGIN_SISTEMA
  (
    PO_CURSOR               OUT SYS_REFCURSOR,
    PI_ID_USUARIO           SEG_M_USUARIO.ID_USUARIO %TYPE,
    PI_ID_SISTEMA           SEG_R_USUARIO_PERFIL.ID_SISTEMA %TYPE,
    PO_VALIDO               OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE              OUT VARCHAR2  -- MENSAJE DEL ERROR
  );

END PCK_LOGIN;
/

prompt
prompt Creating package PCK_MANTENIMIENTO
prompt ==================================
prompt
CREATE OR REPLACE PACKAGE TRAMITE.PCK_MANTENIMIENTO AS

  PROCEDURE USP_CUT_INSERTAR
  (
    PO_NRO_CUT                     OUT VARCHAR2,
    PO_VALIDO                      OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE                     OUT VARCHAR2  -- MENSAJE DEL ERROR
  );

  PROCEDURE USP_DOCUMENTO_INSERTAR
  (
    PI_ID_TIPO                     TRA_M_DOCUMENTO.ID_TIPO %TYPE,
    PI_ID_FLUJO                    TRA_M_DOCUMENTO.ID_FLUJO %TYPE,
    PI_ID_TIPO_DOCUMENTO           TRA_M_DOCUMENTO.ID_TIPO_DOCUMENTO %TYPE,
    PI_ID_ESTADO_DOCUMENTO         TRA_M_DOCUMENTO.ID_ESTADO_DOCUMENTO %TYPE,
    PI_NRO_DOCUMENTO               TRA_M_DOCUMENTO.NRO_DOCUMENTO %TYPE,
    PI_ASUNTO                      TRA_M_DOCUMENTO.ASUNTO %TYPE,
    PI_REFERENCIA                  TRA_M_DOCUMENTO.REFERENCIA %TYPE,
    PI_COD_ARCHIVO              TRA_M_DOCUMENTO.COD_ARCHIVO %TYPE,
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
  );

  PROCEDURE USP_DOCUMENTO_ELIMINAR
  (
    PI_ID_DOCUMENTO                TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE,
    PO_VALIDO                      OUT INT,
    PO_MENSAJE                     OUT VARCHAR2
  );

  PROCEDURE USP_DOCUMENTO_ANULAR
  (
    PI_ID_DOCUMENTO                TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE,
    PI_ID_USUARIO                  TRA_M_DOCUMENTO.ID_USUARIO %TYPE,
    PI_ID_OFICINA                  TRA_M_DOCUMENTO.ID_OFICINA %TYPE,
    PI_ID_CARGO                    TRA_M_DOCUMENTO.ID_CARGO %TYPE,
    PI_USU_MODIFICACION            TRA_M_DOCUMENTO.USU_MODIFICACION %TYPE,
    PI_IP_MODIFICACION             TRA_M_DOCUMENTO.IP_MODIFICACION %TYPE,
    PO_VALIDO                      OUT INT,
    PO_MENSAJE                     OUT VARCHAR2
  );

  PROCEDURE USP_DOCUMENTO_MOVIMIENTO
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
  );

  PROCEDURE USP_DOCUMENTO_ENVIAR
  (
    PI_ID_DOCUMENTO                TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE,
    PI_ID_USUARIO                  TRA_M_DOCUMENTO.ID_USUARIO %TYPE,
    PI_ID_OFICINA                  TRA_M_DOCUMENTO.ID_OFICINA %TYPE,
    PI_ID_CARGO                    TRA_M_DOCUMENTO.ID_CARGO %TYPE,
    PI_USU_MODIFICACION            TRA_M_DOCUMENTO.USU_MODIFICACION %TYPE,
    PI_IP_MODIFICACION             TRA_M_DOCUMENTO.IP_MODIFICACION %TYPE,
    PO_VALIDO                      OUT INT,
    PO_MENSAJE                     OUT VARCHAR2
  );

  PROCEDURE USP_DOCUMENTO_ANEXO_INSERTAR
  (
    PI_ID_DOCUMENTO_PADRE          TRA_D_DOCUMENTO_ANEXO.ID_DOCUMENTO_PADRE %TYPE,
    PI_ID_DOCUMENTO_HIJO           TRA_D_DOCUMENTO_ANEXO.ID_DOCUMENTO_HIJO %TYPE,
    PI_NRO_CUT                     TRA_D_DOCUMENTO_ANEXO.NRO_CUT %TYPE,
    PI_USU_CREACION                TRA_D_DOCUMENTO_ANEXO.USU_CREACION %TYPE,
    PI_IP_CREACION                 TRA_D_DOCUMENTO_ANEXO.IP_CREACION %TYPE,
    PO_VALIDO                      OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE                     OUT VARCHAR2  -- MENSAJE DEL ERROR
  );

  PROCEDURE USP_DOCUMENTO_OFICINA_INSERTAR
  (
    PI_ID_DOCUMENTO                TRA_D_DOCUMENTO_OFICINA.ID_DOCUMENTO %TYPE,
    PI_ID_OFICINA                  TRA_D_DOCUMENTO_OFICINA.ID_OFICINA %TYPE,
    PI_ID_USUARIO                  TRA_D_DOCUMENTO_OFICINA.ID_USUARIO %TYPE,
    PI_ID_CARGO                    TRA_D_DOCUMENTO_OFICINA.ID_CARGO %TYPE,
    PI_USU_CREACION                TRA_D_DOCUMENTO_OFICINA.USU_CREACION %TYPE,
    PI_IP_CREACION                 TRA_D_DOCUMENTO_OFICINA.IP_CREACION %TYPE,
    PO_VALIDO                      OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE                     OUT VARCHAR2  -- MENSAJE DEL ERROR
  );

  PROCEDURE USP_DOCUMENTO_DESTINO_INSERTAR
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
  );

  PROCEDURE USP_DOCUMENTO_ADJUNTO_INSERTAR
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
  );

  PROCEDURE USP_DOCUMENTO_USUARIO_INSERTAR
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
  );

  PROCEDURE USP_DOCUMENTO_USUARIO_CUMPLIO
  (
    PI_ID_DOCUMENTO_USUARIO        TRA_D_DOCUMENTO_USUARIO.ID_DOCUMENTO_USUARIO %TYPE,
    PI_ID_DOCUMENTO                TRA_D_DOCUMENTO_USUARIO.ID_DOCUMENTO %TYPE,
    PI_ID_OFICINA                  TRA_D_DOCUMENTO_USUARIO.ID_OFICINA %TYPE,
    PI_ID_USUARIO                  TRA_D_DOCUMENTO_USUARIO.ID_USUARIO %TYPE,
    PI_ID_CARGO                    TRA_D_DOCUMENTO_USUARIO.ID_CARGO %TYPE,
    PI_FLG_RECHAZADO               TRA_D_DOCUMENTO_USUARIO.FLG_RECHAZADO %TYPE,
    PI_FLG_EDITO                   TRA_D_DOCUMENTO_USUARIO.FLG_EDITO %TYPE,
    PI_FLG_FIRMA                   TRA_M_DOCUMENTO.FLG_FIRMA %TYPE,
    PI_COD_ARCHIVO              TRA_M_DOCUMENTO.COD_ARCHIVO %TYPE,
    PI_USU_MODIFICACION            TRA_D_DOCUMENTO_USUARIO.USU_MODIFICACION %TYPE,
    PI_IP_MODIFICACION             TRA_D_DOCUMENTO_USUARIO.IP_MODIFICACION %TYPE,
    PO_VALIDO                      OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE                     OUT VARCHAR2  -- MENSAJE DEL ERROR
  );

  PROCEDURE USP_DOCUMENTO_CARGO
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
  );

END PCK_MANTENIMIENTO;
/

prompt
prompt Creating package PCK_SEG_CONSULTA
prompt =================================
prompt
CREATE OR REPLACE PACKAGE TRAMITE.PCK_SEG_CONSULTA AS

  PROCEDURE USP_USUARIO_CARGO_LISTAR
  (
    PO_CURSOR                     OUT SYS_REFCURSOR,
    PI_ID_SISTEMA                 SEG_R_USUARIO_PERFIL.ID_SISTEMA %TYPE,
    PI_ID_USUARIO                 SEG_D_USUARIO_CARGO.ID_USUARIO %TYPE,
    PI_ID_OFICINA                 SEG_D_USUARIO_CARGO.ID_OFICINA %TYPE
  );

  PROCEDURE USP_USUARIO_JEFE_LISTAR --ACTUALIZADO
  (
    PO_CURSOR                       OUT SYS_REFCURSOR,
    PI_ID_OFICINA                   INT,
    PI_USUARIO                      VARCHAR2
  );

  PROCEDURE USP_USUARIO_LISTAR
  (
    PO_CURSOR           OUT SYS_REFCURSOR,
    PI_ID_SISTEMA       INT,
    PI_ID_OFICINA       VARCHAR2,
    PI_COD_USUARIO      VARCHAR2
  );

  PROCEDURE USP_OFICINA_LISTAR
  (
    PO_CURSOR      OUT SYS_REFCURSOR,
    PI_CRITERIO    SEG_M_OFICINA.DESC_OFICINA %TYPE
  );

  PROCEDURE USP_ENTIDAD_LISTAR
  (
    PO_CURSOR      OUT SYS_REFCURSOR
  );

END PCK_SEG_CONSULTA;
/

prompt
prompt Creating package body PCK_CONSULTA
prompt ==================================
prompt
CREATE OR REPLACE PACKAGE BODY TRAMITE.PCK_CONSULTA  AS

  /*====================================================================================
          Objetivo            : Consulta los borradores generados por oficina
          Autor               : ANA  - Richard Carbajal Garcia
          Fecha Creacion      : 20/03/2021
          Comentarios         : Firma Digital
  =====================================================================================*/

  PROCEDURE USP_DOCUMENTO_LISTAR_UNO
  (
    PO_CURSOR                     OUT SYS_REFCURSOR,
    PI_ID_DOCUMENTO               TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE
  )
  AS
  BEGIN
      OPEN PO_CURSOR FOR
          SELECT
              D.ID_DOCUMENTO,
              D.ID_TIPO,
              D.ID_TIPO_DOCUMENTO,
              D.ID_FLUJO,
              TD.DESC_TIPO_DOCUMENTO,
              D.NRO_DOCUMENTO,
              D.ASUNTO,
              D.REFERENCIA,
              D.ID_ESTADO_DOCUMENTO,
              D.FLG_FIRMA,
              REPLACE(D.NOMBRE_ARCHIVO,',','-') NOMBRE_ARCHIVO,
              D.EXTENSION_ARCHIVO,
              D.COD_ARCHIVO,
              D.COD_ARCHIVO_FIRMADO,
              TO_CHAR(SYSDATE,'DD/MM/YYYY') FECHA_DOCUMENTO,
              D.FLG_PROYECTADO,
              '-' OBSERVACION_RECHAZO,
              '-' OBSERVACION_USUARIO,
              D.ID_USUARIO,
              D.ID_OFICINA,
              O.SIGLA_OFICINA SIGLAS,
              D.CLAVE_FIRMA
          FROM
              TRA_M_DOCUMENTO D
              INNER JOIN TRA_L_TIPO_DOCUMENTO TD ON TD.ID_TIPO_DOCUMENTO = D.ID_TIPO_DOCUMENTO
              INNER JOIN SEG_M_OFICINA O ON O.ID_OFICINA = D.ID_OFICINA
              INNER JOIN TRA_L_ESTADO_DOCUMENTO ED ON ED.ID_ESTADO_DOCUMENTO = D.ID_ESTADO_DOCUMENTO
              --LEFT JOIN T_FDVD_DOCUMENTO_OBSERVACION DO ON DO.ID_DOCUMENTO = D.ID_DOCUMENTO AND DO.FLG_ESTADO = 1
          WHERE
              D.ID_DOCUMENTO = PI_ID_DOCUMENTO;
  END;

  PROCEDURE USP_DOCUMENTO_MOVIMIENTO
  (
    PO_CURSOR                     OUT SYS_REFCURSOR,
    PI_ID_DOCUMENTO               TRA_D_DOCUMENTO_MOVIMIENTO.ID_DOCUMENTO %TYPE
  )
  AS
  BEGIN
       OPEN PO_CURSOR FOR
           SELECT
                DM.ID_DOCUMENTO_MOVIMIENTO,
                DM.ID_DOCUMENTO,
                (DM.MOVIMIENTO || ' - ' || ' Documento con estado: ' || ED.DESC_ESTADO_DOCUMENTO || '') MOVIMIENTO,
                DM.FLG_ESTADO,
                (U.NOMBRE_USUARIO || CHR(13) || ' [' || U.DESC_CARGO || ']' || CHR(13) ||  U.DESC_OFICINA) USU_CREACION,
                DM.FEC_CREACION,
                NVL(TO_CHAR(DM.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.'), '-') STR_FEC_CREACION,
                NVL(DM.IP_CREACION, '-') IP_CREACION,
                NVL(DM.USU_MODIFICACION, '-') USU_MODIFICACION,
                DM.FEC_MODIFICACION,
                NVL(TO_CHAR(DM.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.'), '-') STR_FEC_MODIFICACION,
                NVL(DM.IP_MODIFICACION, '-') IP_MODIFICACION
            FROM
                TRA_D_DOCUMENTO_MOVIMIENTO DM
                INNER JOIN V_SEG_USUARIO U ON U.ID_USUARIO = DM.ID_USUARIO
                                              AND U.ID_OFICINA = DM.ID_OFICINA
                                              AND U.ID_CARGO = DM.ID_CARGO
                LEFT JOIN TRA_L_ESTADO_DOCUMENTO ED ON ED.ID_ESTADO_DOCUMENTO = DM.ID_ESTADO_DOCUMENTO
            WHERE
                DM.ID_DOCUMENTO = PI_ID_DOCUMENTO
            ORDER BY
                DM.ID_DOCUMENTO_MOVIMIENTO ASC;
  END;

  /*====================================================================================
          Objetivo            : Consulta los borradores generados por oficina
          Autor               : ANA  - Richard Carbajal Garcia
          Fecha Creacion      : 20/03/2021
          Comentarios         : Firma Digital
  =====================================================================================*/
  PROCEDURE USP_TIPO_DOCUMENTO
  (
    PO_CURSOR                     OUT SYS_REFCURSOR
  )
  AS
  BEGIN
      OPEN PO_CURSOR FOR
          SELECT
              TD.ID_TIPO_DOCUMENTO,
              TD.DESC_TIPO_DOCUMENTO,
              TD.FLG_MGD
          FROM
              V_TIPO_DOCUMENTO TD
          ORDER BY
              TD.DESC_TIPO_DOCUMENTO ASC;
  END;

  PROCEDURE USP_CORRELATIVO
  (
    PI_ID_OFICINA           TRA_M_CORRELATIVO.ID_OFICINA %TYPE,
    PI_ID_TIPO_DOCUMENTO    TRA_M_CORRELATIVO.ID_TIPO_DOCUMENTO %TYPE,
    PI_ID_PERFIL            TRA_M_CORRELATIVO.ID_PERFIL %TYPE,
    PI_ID_DOCUMENTO         TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE,
    PI_FLG_OFICIAL          NUMBER, -- 0 : NO OFICIAL   1 : OFICIAL-SIN GUARDAR  2 : OFICIAL - GUARDAR
    PO_NRO_DOCUMENTO        OUT VARCHAR2,  -- OBTIENES NRO DE DOCUMENTO
    PO_VALIDO               OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE              OUT VARCHAR2  -- MENSAJE DEL ERROR
  )
  AS
    P_MENSAJE              VARCHAR2(200);
    P_CUENTA               INTEGER := 0;
    P_CUENTA_USUARIOS      INTEGER := 0;
    P_ID_OFICINA           TRA_M_CORRELATIVO.ID_OFICINA %TYPE;
    P_ANIO                 INTEGER;
    P_CORRELATIVO          VARCHAR2(150);
    P_N_CORRELATIVO        NUMBER;
    P_ABREVIACION          VARCHAR2(500);
    P_SIGLA_OFICINA        SEG_M_OFICINA.SIGLA_OFICINA %TYPE;
    P_NRO_DOCUMENTO        VARCHAR2(200);
  BEGIN
      PO_VALIDO := 0;
      SELECT
          COUNT(*)
          INTO
          P_CUENTA_USUARIOS
      FROM
          TRA_D_DOCUMENTO_USUARIO DU
      WHERE
          DU.ID_DOCUMENTO = PI_ID_DOCUMENTO
          AND DU.ID_TAREA = 1
          AND DU.FLG_CUMPLIDO = 0;
      IF P_CUENTA_USUARIOS != 0 THEN
          SELECT
              T.ID_OFICINA
              INTO
              P_ID_OFICINA
                  FROM(
                        SELECT
                            DU.ID_OFICINA,
                            DU.NRO_PRIORIDAD
                        FROM
                            TRA_D_DOCUMENTO_USUARIO DU
                        WHERE
                            DU.ID_DOCUMENTO = PI_ID_DOCUMENTO
                            AND DU.ID_TAREA = 1
                            AND DU.FLG_CUMPLIDO = 0
                      ) T
                  WHERE
                      T.NRO_PRIORIDAD = (SELECT
                                             MAX(DU.NRO_PRIORIDAD)
                                         FROM
                                             TRA_D_DOCUMENTO_USUARIO DU
                                         WHERE
                                             DU.ID_DOCUMENTO = PI_ID_DOCUMENTO
                                             AND DU.ID_TAREA = 1
                                             AND DU.FLG_CUMPLIDO = 0
                                         );
      ELSE
         P_ID_OFICINA := PI_ID_OFICINA;
      END IF;

      --OBTENEMOS ANIO DE HOY
      SELECT
          EXTRACT(YEAR FROM SYSDATE)
          INTO
          P_ANIO
      FROM DUAL;

      -- OBTENEMOS CORRELATIVO DE LA OFICINA FIRMANTE POR SEGURIDAD
      SELECT
          NVL((SELECT
                   LPAD((to_number(C.N_CORRELATIVO) + P_CUENTA), 4, '0')
               FROM
                   TRA_M_CORRELATIVO C
               WHERE
                   C.N_ANIO = P_ANIO
                   AND C.ID_OFICINA = P_ID_OFICINA
                   AND C.ID_PERFIL = PI_ID_PERFIL
                   AND C.ID_TIPO_DOCUMENTO = PI_ID_TIPO_DOCUMENTO),
                 '-'),
          NVL((SELECT
                   C.N_CORRELATIVO + P_CUENTA
               FROM
                   TRA_M_CORRELATIVO C
               WHERE
                   C.N_ANIO = P_ANIO
                   AND C.ID_OFICINA = P_ID_OFICINA
                   AND C.ID_PERFIL = PI_ID_PERFIL
                   AND C.ID_TIPO_DOCUMENTO = PI_ID_TIPO_DOCUMENTO),
                 1)
          INTO
          P_CORRELATIVO,
          P_N_CORRELATIVO
      FROM DUAL;

      -- SI NO EXISTE EL CORRELATIVO LE DAMOS EL DEFAULT
      IF P_CORRELATIVO = '-' THEN
          P_CORRELATIVO := '0001';
          IF PI_FLG_OFICIAL = 2 THEN
              INSERT INTO
                  TRA_M_CORRELATIVO
                   (
                     ID_CORRELATIVO,
                     ID_TIPO_DOCUMENTO,
                     ID_OFICINA,
                     ID_PERFIL,
                     N_CORRELATIVO,
                     N_ANIO
                   )
                   VALUES
                   (
                     SEQ_ID_CORRELATIVO.NEXTVAL,
                     PI_ID_TIPO_DOCUMENTO,
                     P_ID_OFICINA,
                     PI_ID_PERFIL,
                     P_N_CORRELATIVO + 1,
                     P_ANIO
                   );
          END IF;
      ELSE
          IF PI_FLG_OFICIAL = 2 THEN
              UPDATE
                  TRA_M_CORRELATIVO C
              SET
                  C.N_CORRELATIVO = P_N_CORRELATIVO
              WHERE
                  C.N_ANIO = P_ANIO
                  AND C.ID_OFICINA = P_ID_OFICINA
                  AND C.ID_PERFIL = PI_ID_PERFIL
                  AND C.ID_TIPO_DOCUMENTO = PI_ID_TIPO_DOCUMENTO;
          END IF;
      END IF;

      IF PI_FLG_OFICIAL = 0 THEN
          P_CORRELATIVO := 'XXXX';
      END IF;

      -- OBTENEMOS SIGLA DE LA OFICINA FIRMANTE DEL DOCUMENTO
      SELECT
          O.SIGLA_OFICINA
          INTO
          P_SIGLA_OFICINA
      FROM
          SEG_M_OFICINA O
      WHERE
          O.ID_OFICINA = P_ID_OFICINA;

      SELECT
          TD.DESC_TIPO_DOCUMENTO
          INTO
          P_ABREVIACION
      FROM
          TRA_L_TIPO_DOCUMENTO TD
      WHERE
          TD.ID_TIPO_DOCUMENTO = PI_ID_TIPO_DOCUMENTO;
      -- ARMAMOS EL NRO DE DOCUMENTO QUE SE LE ASIGNARA AL DOCUMENTO
      -- EJEMPLO DE NRO DOCUMENTO :
      -- Memo-0664-2003/INGEMMET-UADA
      P_NRO_DOCUMENTO := P_ABREVIACION || ' N° ' || P_CORRELATIVO || '-' ||
                         P_ANIO || '-' || P_SIGLA_OFICINA;

      IF PI_ID_DOCUMENTO != 0 THEN
          UPDATE
              TRA_M_DOCUMENTO
          SET
              CORRELATIVO_DOCUMENTO = P_N_CORRELATIVO,
              NRO_DOCUMENTO         = P_NRO_DOCUMENTO
          WHERE
              ID_DOCUMENTO = PI_ID_DOCUMENTO
              AND FLG_FIRMA = 0;
      END IF;

      PO_NRO_DOCUMENTO := P_NRO_DOCUMENTO;
      PO_MENSAJE := P_MENSAJE;
      PO_VALIDO := 1;
  END;

  PROCEDURE USP_PLANTILLA_LISTAR
  (
    PO_CURSOR                     OUT SYS_REFCURSOR,
    PI_ID_TIPO_DOCUMENTO          TRA_M_PLANTILLA.ID_TIPO_DOCUMENTO %TYPE
  )
  AS
    P_CUENTA INT := 0;
    P_ID_TIPO_DOCUMENTO INT := 0;
    P_FLG_MGD INT := 0;
  BEGIN
      SELECT
          COUNT(*)
          INTO
          P_CUENTA
      FROM
          TRA_D_PLANTILLA_CAMPO PC
          INNER JOIN TRA_L_CAMPO C ON C.ID_CAMPO = PC.ID_CAMPO
                                           AND C.FLG_ESTADO = 1
                                           AND C.ID_CAMPO_PADRE != 0
          INNER JOIN TRA_M_PLANTILLA P ON P.ID_PLANTILLA = PC.ID_PLANTILLA
                                               AND P.FLG_ESTADO = 1
                                               AND P.ID_PLANTILLA != 0
      WHERE
          P.ID_TIPO_DOCUMENTO = PI_ID_TIPO_DOCUMENTO;

      IF P_CUENTA != 0 THEN
        OPEN PO_CURSOR FOR
            -- OBTENEMOS LOS CAMPOS DE LA PLANTILLA
            SELECT
                PC.ID_CAMPO,
                C.CODIGO_CAMPO DESC_CAMPO,
                P.CODIGO_DOCUMENTO,
                P.EXTENSION_DOCUMENTO,
                PC.FLG_ESTADO,
                CA.NOMBRE_ANIO,
                CA.NOMBRE_DECENIO,
                CA.CODIGO_IMAGEN || CA.EXTENSION_IMAGEN AS IMAGEN,
                TD.FLG_MGD
            FROM
                TRA_D_PLANTILLA_CAMPO PC
                INNER JOIN TRA_L_CAMPO C ON C.ID_CAMPO = PC.ID_CAMPO
                                               AND C.FLG_ESTADO = 1
                                               AND C.ID_CAMPO_PADRE != 0
                INNER JOIN TRA_M_PLANTILLA P ON P.ID_PLANTILLA = PC.ID_PLANTILLA
                                                   AND P.FLG_ESTADO = 1
                                                   AND P.ID_PLANTILLA != 0
                LEFT JOIN TRA_L_CABECERA CA ON CA.FLG_ESTADO = 1
                LEFT JOIN V_TIPO_DOCUMENTO  TD ON TD.ID_TIPO_DOCUMENTO = PI_ID_TIPO_DOCUMENTO
            WHERE
                P.ID_TIPO_DOCUMENTO = PI_ID_TIPO_DOCUMENTO
            ORDER BY
                PC.ORDEN ASC;
      ELSE
          SELECT
              NVL
              ((
                  SELECT TD.FLG_MGD
                  FROM V_TIPO_DOCUMENTO TD
                  WHERE TD.ID_TIPO_DOCUMENTO = PI_ID_TIPO_DOCUMENTO
              ),0)
              INTO
              P_FLG_MGD
          FROM DUAL;

          IF P_FLG_MGD = 0 THEN
              P_ID_TIPO_DOCUMENTO := 1;
          ELSE
              P_ID_TIPO_DOCUMENTO := 8;
          END IF;

          OPEN PO_CURSOR FOR
            -- OBTENEMOS LOS CAMPOS POR DEFAULT DE LA PLANTILLA
            SELECT
                PC.ID_CAMPO,
                C.CODIGO_CAMPO DESC_CAMPO,
                P.CODIGO_DOCUMENTO,
                P.EXTENSION_DOCUMENTO,
                PC.FLG_ESTADO,
                CA.NOMBRE_ANIO,
                CA.NOMBRE_DECENIO,
                CA.CODIGO_IMAGEN || CA.EXTENSION_IMAGEN AS IMAGEN,
                TD.FLG_MGD
            FROM
                TRA_D_PLANTILLA_CAMPO PC
                INNER JOIN TRA_L_CAMPO C ON C.ID_CAMPO = PC.ID_CAMPO
                                                 AND C.FLG_ESTADO = 1
                                                 AND C.ID_CAMPO_PADRE != 0
                INNER JOIN TRA_M_PLANTILLA P ON P.ID_PLANTILLA = PC.ID_PLANTILLA
                                                  AND P.FLG_ESTADO = 0
                LEFT JOIN TRA_L_CABECERA CA ON CA.FLG_ESTADO = 1
                LEFT JOIN V_TIPO_DOCUMENTO  TD ON TD.ID_TIPO_DOCUMENTO = P_ID_TIPO_DOCUMENTO
            WHERE
                P.ID_TIPO_DOCUMENTO = P_ID_TIPO_DOCUMENTO
                AND PC.ID_PLANTILLA = 0
            ORDER BY
                PC.ORDEN ASC;
       END IF;
  END;

  PROCEDURE USP_OFICINAS_LISTAR2
  (
    PO_CURSOR  OUT SYS_REFCURSOR
  )
  AS
  BEGIN
      OPEN PO_CURSOR FOR
          SELECT
              O.ID_OFICINA,
              O.DESC_OFICINA,
              O.SIGLA_OFICINA
          FROM
              SEG_M_OFICINA O;
  END;

  PROCEDURE USP_OFICINAS_LISTAR
  (
    PO_CURSOR      OUT SYS_REFCURSOR,
    PI_CRITERIO    SEG_M_OFICINA.DESC_OFICINA %TYPE
  )
  AS
  BEGIN
      OPEN PO_CURSOR FOR
            SELECT
                O.ID_OFICINA,
                O.DESC_OFICINA,
                O.SIGLA_OFICINA SIGLAS
            FROM
                SEG_M_OFICINA O
            WHERE
                 CONCAT(LOWER(O.SIGLA_OFICINA), LOWER(O.DESC_OFICINA)) LIKE
                 '%' || LOWER(PI_CRITERIO) || '%';
  END;

  PROCEDURE USP_DOCUMENTO_ANEXO_LISTAR
  (
    PO_CURSOR        OUT SYS_REFCURSOR,
    PI_ID_DOCUMENTO  TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE
  )
  AS
  BEGIN
      OPEN PO_CURSOR FOR
          SELECT
              DA.ID_DOCUMENTO_ANEXO,
              DA.ID_DOCUMENTO_PADRE,
              DA.ID_DOCUMENTO_HIJO,
              DA.NRO_CUT,
              D.NRO_DOCUMENTO,
              TD.DESC_TIPO_DOCUMENTO,
              D.ASUNTO,
              ED.DESC_ESTADO_DOCUMENTO
          FROM
              TRA_D_DOCUMENTO_ANEXO DA
              INNER JOIN TRA_M_DOCUMENTO D ON D.ID_DOCUMENTO = DA.ID_DOCUMENTO_HIJO OR D.ID_DOCUMENTO = DA.ID_DOCUMENTO_PADRE
              INNER JOIN TRA_L_ESTADO_DOCUMENTO ED ON ED.ID_ESTADO_DOCUMENTO = D.ID_ESTADO_DOCUMENTO
              INNER JOIN V_TIPO_DOCUMENTO TD ON TD.ID_TIPO_DOCUMENTO = D.ID_TIPO_DOCUMENTO
          WHERE
              DA.ID_DOCUMENTO_HIJO = PI_ID_DOCUMENTO
              OR PI_ID_DOCUMENTO = DA.ID_DOCUMENTO_PADRE;
  END;

  PROCEDURE USP_DOCUMENTO_ADJUNTO_LISTAR
  (
    PO_CURSOR        OUT SYS_REFCURSOR,
    PI_ID_DOCUMENTO  TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE
  )
  AS
  BEGIN
      OPEN PO_CURSOR FOR
          SELECT
              DA.ID_DOCUMENTO_ADJUNTO,
              DA.NOMBRE_ARCHIVO,
              DA.CODIGO_ARCHIVO,
              DA.PESO_ARCHIVO,
              DA.EXTENSION_ARCHIVO,
              DA.FLG_FIRMA
          FROM
              TRA_D_DOCUMENTO_ADJUNTO DA
          WHERE
              DA.ID_DOCUMENTO = PI_ID_DOCUMENTO;
  END;

  PROCEDURE USP_DOCUMENTO_DESTINO_LISTAR
  (
    PO_CURSOR           OUT SYS_REFCURSOR,
    PI_ID_DOCUMENTO     TRA_D_DOCUMENTO_DESTINO.ID_DOCUMENTO %TYPE
  )
  AS
  BEGIN
      OPEN PO_CURSOR FOR
          SELECT
              DD.ID_DOCUMENTO_DESTINO,
              DD.ID_DOCUMENTO,
              DD.ID_ENTIDAD,
              E.DESC_ENTIDAD,
              DD.OFICINA,
              DD.RUBRICA,
              DD.REMITENTE,
              DD.CARGO,
              DD.DIRECCION,
              DD.FLG_DOMICILIO,
              DD.FLG_MGD
          FROM
              TRA_D_DOCUMENTO_DESTINO DD
              INNER JOIN TRA_L_ENTIDADES E ON E.ID_ENTIDAD = DD.ID_ENTIDAD
          WHERE
              DD.ID_DOCUMENTO = PI_ID_DOCUMENTO;
  END;

  PROCEDURE USP_DOCUMENTO_OFICINA_LISTAR
  (
    PO_CURSOR           OUT SYS_REFCURSOR,
    PI_ID_DOCUMENTO     TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE,
    PI_ID_SISTEMA       V_SEG_USUARIO.ID_SISTEMA %TYPE
  )
  AS
  BEGIN
      OPEN PO_CURSOR FOR
          SELECT
              DO.ID_DOCUMENTO_OFICINA,
              DO.ID_OFICINA,
              VU.DESC_OFICINA,
              DO.ID_USUARIO,
              VU.NOMBRE_USUARIO,
              DO.ID_CARGO,
              VU.DESC_CARGO
          FROM
              TRA_D_DOCUMENTO_OFICINA DO
              INNER JOIN V_SEG_USUARIO VU ON VU.ID_USUARIO = DO.ID_USUARIO
                                             AND VU.ID_OFICINA = DO.ID_OFICINA
                                             AND VU.ID_CARGO = DO.ID_CARGO
          WHERE
              DO.ID_DOCUMENTO = PI_ID_DOCUMENTO
              AND VU.ID_SISTEMA = PI_ID_SISTEMA
          ORDER BY
              DO.ID_DOCUMENTO_OFICINA ASC;
  END;

  PROCEDURE USP_DOCUMENTO_OFICINA_CARGO
  (
    PO_CURSOR                   OUT SYS_REFCURSOR,
    PI_ID_DOCUMENTO_OFICINA     TRA_D_DOCUMENTO_OFICINA.ID_DOCUMENTO_OFICINA %TYPE
  )
  AS
  BEGIN
      OPEN PO_CURSOR FOR
          SELECT
              DO.ID_DOCUMENTO_OFICINA,
              DO.COD_CARGO,
              (D.NRO_CUT || '-Cargo.pdf') NOMBRE_CARGO
          FROM
              TRA_D_DOCUMENTO_OFICINA DO
              INNER JOIN TRA_M_DOCUMENTO D ON D.ID_DOCUMENTO = DO.ID_DOCUMENTO
          WHERE
              DO.ID_DOCUMENTO_OFICINA = PI_ID_DOCUMENTO_OFICINA;
  END;

  PROCEDURE USP_DOCUMENTO_USUARIO_LISTAR
  (
    PO_CURSOR           OUT SYS_REFCURSOR,
    PI_ID_DOCUMENTO     TRA_M_DOCUMENTO.ID_DOCUMENTO %TYPE,
    PI_ID_SISTEMA       V_SEG_USUARIO.ID_SISTEMA %TYPE
  )
  AS
  BEGIN
      OPEN PO_CURSOR FOR
          SELECT
              DU.ID_DOCUMENTO_USUARIO,
              DU.ID_USUARIO,
              DU.ID_OFICINA,
              DU.ID_TAREA,
              DU.ID_CARGO,
              DU.NRO_PRIORIDAD,
              V.NOMBRE_USUARIO,
              V.DESC_OFICINA,
              V.DESC_CARGO,
              TO_CHAR(DU.FEC_CUMPLIDO,'DD/MM/YYYY hh:mi:ss a.m.') FEC_CUMPLIDO,
              DU.FLG_EDITAR,
              DU.FLG_CUMPLIDO,
              DU.FLG_PERMITIDO,
              DU.FLG_RECHAZADO
          FROM
              TRA_D_DOCUMENTO_USUARIO DU
              INNER JOIN V_SEG_USUARIO V ON V.ID_USUARIO = DU.ID_USUARIO
                                            AND V.ID_OFICINA = DU.ID_OFICINA
                                            AND V.ID_CARGO = DU.ID_CARGO
          WHERE
              DU.ID_DOCUMENTO = PI_ID_DOCUMENTO
              AND V.ID_SISTEMA = PI_ID_SISTEMA
          ORDER BY
              DU.NRO_PRIORIDAD ASC;
  END;

  PROCEDURE USP_DOCUMENTO_PAGINACION
  (
    PO_RESULTADO            OUT SYS_REFCURSOR,
    PI_PAGINA               IN INTEGER,
    PI_NROREGISTROS         IN INTEGER,
    PI_ORDEN_COLUMNA        IN VARCHAR2,
    PI_ORDEN                IN VARCHAR2,
    PI_WHERE                VARCHAR2 DEFAULT NULL,
    PI_TABLA                IN VARCHAR2,
    PO_CUENTA               OUT INT
  )
  IS
    P_PAGINA_AUX              INTEGER := 0;
    P_CUENTA_REGISTROS        INTEGER := 0;
    P_CUENTA_PAGINA           INTEGER := 0;
    P_NROREGISTROS_AUX        INTEGER := PI_NROREGISTROS;
    P_ORDEN_COLUMNA_AUX       VARCHAR2(100);
    P_SQLDR                   VARCHAR2(10000);
  BEGIN
      P_ORDEN_COLUMNA_AUX := PI_ORDEN_COLUMNA;
      IF P_NROREGISTROS_AUX = 0 THEN
          P_NROREGISTROS_AUX := 1;
      END IF;
      IF P_ORDEN_COLUMNA_AUX IS NULL THEN
          P_ORDEN_COLUMNA_AUX := 'ID_DOCUMENTO';
      END IF;
      P_SQLDR := 'SELECT
                      COUNT(*)
                  FROM
                      ' || PI_TABLA || ' V WHERE ' || PI_WHERE;
      EXECUTE IMMEDIATE P_SQLDR INTO P_CUENTA_REGISTROS;
      -- Paginas totales
      P_CUENTA_PAGINA := CEIL(TO_NUMBER(P_CUENTA_REGISTROS) / TO_NUMBER(PI_PAGINA));

      IF PI_PAGINA > P_CUENTA_PAGINA THEN
          P_PAGINA_AUX := P_CUENTA_PAGINA - 1;
      ELSE
          P_PAGINA_AUX := PI_PAGINA - 1 ;
      END IF;
      P_SQLDR := '
                 SELECT
                     V.*,
                     ROWNUM FILA,
                     ROW_NUMBER() OVER (ORDER BY ' || P_ORDEN_COLUMNA_AUX || ' ' || PI_ORDEN || ') AS ROWNUMBER
                 FROM ' || PI_TABLA || ' V';
      IF PI_WHERE <> ' ' AND PI_WHERE IS NOT NULL THEN
          P_SQLDR := P_SQLDR || ' WHERE ' || PI_WHERE;
      END IF;
      P_SQLDR := 'SELECT * FROM (' || P_SQLDR || ') WHERE ROWNUMBER BETWEEN ' ||
      TO_CHAR((P_PAGINA_AUX * P_NROREGISTROS_AUX) + 1) || ' AND ' || TO_CHAR(P_NROREGISTROS_AUX  *( P_PAGINA_AUX + 1)) ||
      ' ORDER BY ' || P_ORDEN_COLUMNA_AUX || ' ' || PI_ORDEN;
      PO_CUENTA := P_CUENTA_REGISTROS;
      OPEN PO_RESULTADO FOR P_SQLDR;
  END;

END PCK_CONSULTA;
/

prompt
prompt Creating package body PCK_LOGIN
prompt ===============================
prompt
CREATE OR REPLACE PACKAGE BODY TRAMITE.PCK_LOGIN  AS

  /*====================================================================================
          Objetivo            : Consulta los borradores generados por oficina
          Autor               : ANA  - Richard Carbajal Garcia
          Fecha Creacion      : 20/03/2021
          Comentarios         : Firma Digital
  =====================================================================================*/
  PROCEDURE USP_LOGIN
  (
    PI_COD_USUARIO          SEG_M_USUARIO.COD_USUARIO %TYPE,
    PI_CLAVE_USUARIO        SEG_M_USUARIO.CLAVE_USUARIO %TYPE,
    PO_ID_USUARIO           OUT NUMBER,
    PO_VALIDO               OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE              OUT VARCHAR2  -- MENSAJE DEL ERROR
  )
  AS
    P_CUENTA            INT := 0;
    P_ID_USUARIO        NUMBER(20) := 0;
    P_MENSAJE           VARCHAR2(200) := '';
  BEGIN
      PO_VALIDO := 0;
      SELECT
          COUNT(*)
          INTO
          P_CUENTA
      FROM
          SEG_M_USUARIO U
      WHERE
          UPPER(U.COD_USUARIO) = UPPER(PI_COD_USUARIO)
          AND U.CLAVE_USUARIO = PI_CLAVE_USUARIO
          AND U.FLG_ESTADO = 1;
      IF P_CUENTA != 0 THEN
          SELECT
              U.ID_USUARIO
              INTO
              P_ID_USUARIO
          FROM
              SEG_M_USUARIO U
          WHERE
              UPPER(U.COD_USUARIO) = UPPER(PI_COD_USUARIO)
              AND U.CLAVE_USUARIO = PI_CLAVE_USUARIO
              AND U.FLG_ESTADO = 1;
          PO_ID_USUARIO := P_ID_USUARIO;
          PO_VALIDO := 1;
      ELSE
          P_MENSAJE := 'El usuario/clave son incorrectos';
      END IF;
      PO_MENSAJE := P_MENSAJE;
  END;

  PROCEDURE USP_LOGIN_SISTEMA
  (
    PO_CURSOR               OUT SYS_REFCURSOR,
    PI_ID_USUARIO           SEG_M_USUARIO.ID_USUARIO %TYPE,
    PI_ID_SISTEMA           SEG_R_USUARIO_PERFIL.ID_SISTEMA %TYPE,
    PO_VALIDO               OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE              OUT VARCHAR2  -- MENSAJE DEL ERROR
  )
  AS
    P_CUENTA            INT := 0;
    P_MENSAJE           VARCHAR2(200) := '';
  BEGIN
      PO_VALIDO := 0;
      SELECT
          COUNT(*)
          INTO
          P_CUENTA
      FROM
          SEG_R_USUARIO_PERFIL UP
      WHERE
          UP.ID_USUARIO = PI_ID_USUARIO
          AND UP.ID_SISTEMA = PI_ID_SISTEMA;
      IF P_CUENTA != 0 THEN
          OPEN PO_CURSOR FOR
              SELECT
                  UP.ID_USUARIO_PERFIL,
                  U.ID_USUARIO,
                  UPPER(U.COD_USUARIO) COD_USUARIO,
                  UPPER(U.NOMBRE_USUARIO) NOMBRE_USUARIO,
                  P.ID_PERFIL,
                  UPPER(P.DESC_PERFIL) || ' - ' || UPPER(O.DESC_OFICINA) DESC_PERFIL,
                  O.ID_OFICINA,
                  '- ' || UPPER(O.DESC_OFICINA) DESC_OFICINA,
                  C.ID_CARGO,
                  '- ' || UPPER(C.DESC_CARGO) DESC_CARGO
              FROM
                  SEG_M_USUARIO U
                  INNER JOIN SEG_R_USUARIO_PERFIL UP ON UP.ID_USUARIO = U.ID_USUARIO
                  INNER JOIN SEG_D_USUARIO_CARGO UC ON UP.ID_USUARIO = UC.ID_USUARIO
                                                        AND UP.ID_OFICINA = UC.ID_OFICINA
                                                        AND UP.ID_CARGO = UC.ID_CARGO
                  INNER JOIN SEG_M_OFICINA O ON O.ID_OFICINA = UP.ID_OFICINA

                  INNER JOIN SEG_M_CARGO C ON C.ID_CARGO = UP.ID_CARGO

                  INNER JOIN SEG_M_PERFIL P ON P.ID_PERFIL = UP.ID_PERFIL
                                               AND P.ID_SISTEMA = UP.ID_SISTEMA
              WHERE
                  U.ID_USUARIO = PI_ID_USUARIO
                  AND U.FLG_ESTADO = 1
                  AND UP.ID_SISTEMA = PI_ID_SISTEMA;
          PO_VALIDO := 1;
      ELSE
          P_MENSAJE := 'El usuario no tiene permisos para el sistema';
      END IF;
      PO_MENSAJE := P_MENSAJE;
  END;

END PCK_LOGIN;
/

prompt
prompt Creating package body PCK_MANTENIMIENTO
prompt =======================================
prompt
CREATE OR REPLACE PACKAGE BODY TRAMITE.PCK_MANTENIMIENTO AS

  PROCEDURE USP_CUT_INSERTAR
  (
    PO_NRO_CUT                     OUT VARCHAR2,
    PO_VALIDO                      OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    PO_MENSAJE                     OUT VARCHAR2  -- MENSAJE DEL ERROR
  )
  AS
    P_CUENTA                  INT := 0;
    P_MENSAJE                 VARCHAR2(200) := '-';
    P_NRO_CUT                 TRA_M_CUT.NRO_CUT %TYPE;
    P_ID_ANIO                 TRA_M_CUT.ID_ANIO %TYPE;
  BEGIN
      PO_VALIDO := 0;
      SELECT
          EXTRACT(YEAR FROM   SYSDATE)
          INTO
          P_ID_ANIO
      FROM
          DUAL;

      SELECT
          COUNT(*)
          INTO
          P_CUENTA
      FROM
          TRA_M_CUT
      WHERE
          ID_ANIO = P_ID_ANIO;

      IF P_CUENTA = 0 THEN
          P_NRO_CUT := 1;
          INSERT INTO
              TRA_M_CUT
              (
                ID_CUT,
                NRO_CUT,
                ID_ANIO,
                FEC_CREACION
              )
              VALUES
              (
                SEQ_ID_CUT.NEXTVAL,
                P_NRO_CUT,
                P_ID_ANIO,
                SYSDATE
              );
          PO_VALIDO := 1;
      ELSE
          SELECT
              NRO_CUT + 1
              INTO
              P_NRO_CUT
          FROM
              TRA_M_CUT
          WHERE
              ID_ANIO = P_ID_ANIO;
          UPDATE
              TRA_M_CUT
          SET
              NRO_CUT = P_NRO_CUT
          WHERE
              ID_ANIO = P_ID_ANIO;
          PO_VALIDO := 1;
      END IF;
      PO_NRO_CUT := P_NRO_CUT || '-' || P_ID_ANIO;
      PO_MENSAJE := P_MENSAJE;
  END;

  PROCEDURE USP_DOCUMENTO_INSERTAR
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

  PROCEDURE USP_DOCUMENTO_ELIMINAR
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

  PROCEDURE USP_DOCUMENTO_ANULAR
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

  PROCEDURE USP_DOCUMENTO_MOVIMIENTO
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

  PROCEDURE USP_DOCUMENTO_ENVIAR
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

  PROCEDURE USP_DOCUMENTO_ANEXO_INSERTAR
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

  PROCEDURE USP_DOCUMENTO_OFICINA_INSERTAR
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

  PROCEDURE USP_DOCUMENTO_DESTINO_INSERTAR
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

  PROCEDURE USP_DOCUMENTO_ADJUNTO_INSERTAR
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

  PROCEDURE USP_DOCUMENTO_USUARIO_INSERTAR
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

  PROCEDURE USP_DOCUMENTO_USUARIO_CUMPLIO
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

  PROCEDURE USP_DOCUMENTO_CARGO
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
/

prompt
prompt Creating package body PCK_SEG_CONSULTA
prompt ======================================
prompt
CREATE OR REPLACE PACKAGE BODY TRAMITE.PCK_SEG_CONSULTA  AS

  /*====================================================================================
          Objetivo            : -
          Autor               : ANA  - Richard Carbajal Garcia
          Fecha Creacion      : 20/04/2021
          Comentarios         : Sistema de Gestión
  =====================================================================================*/
  PROCEDURE USP_USUARIO_CARGO_LISTAR
  (
    PO_CURSOR                     OUT SYS_REFCURSOR,
    PI_ID_SISTEMA                 SEG_R_USUARIO_PERFIL.ID_SISTEMA %TYPE,
    PI_ID_USUARIO                 SEG_D_USUARIO_CARGO.ID_USUARIO %TYPE,
    PI_ID_OFICINA                 SEG_D_USUARIO_CARGO.ID_OFICINA %TYPE
  )
  AS
  BEGIN
      OPEN PO_CURSOR FOR
          SELECT
              UC.ID_USUARIO_CARGO,
              UC.ID_USUARIO,
              UC.ID_CARGO,
              UPPER(C.DESC_CARGO) || ' - ' || UPPER(P.DESC_PERFIL) DESC_CARGO,
              P.ID_PERFIL,
              UPPER(P.DESC_PERFIL) DESC_PERFIL
          FROM
              SEG_D_USUARIO_CARGO UC
              INNER JOIN SEG_R_USUARIO_PERFIL UP ON UP.ID_USUARIO = UC.ID_USUARIO
                                                    AND UP.ID_OFICINA = UC.ID_OFICINA
                                                    AND UP.ID_CARGO = UC.ID_CARGO
              INNER JOIN SEG_M_CARGO C ON C.ID_CARGO = UC.ID_CARGO
              INNER JOIN SEG_M_PERFIL P ON P.ID_PERFIL = UP.ID_PERFIL
                                           AND UP.ID_SISTEMA = P.ID_SISTEMA
          WHERE
              UP.ID_SISTEMA = PI_ID_SISTEMA
              AND UC.ID_OFICINA = PI_ID_OFICINA
              AND UC.ID_USUARIO = PI_ID_USUARIO
          ORDER BY
              C.DESC_CARGO ASC;
  END;

  PROCEDURE USP_USUARIO_JEFE_LISTAR --ACTUALIZADO
  (
    PO_CURSOR                       OUT SYS_REFCURSOR,
    PI_ID_OFICINA                   INT,
    PI_USUARIO                      VARCHAR2
  )
  AS
  BEGIN
      OPEN PO_CURSOR FOR
          SELECT
              U.ID_USUARIO,
              U.COD_USUARIO,
              U.NOMBRE_USUARIO NOMBRE_COMPLETO,
              C.DESC_CARGO CARGO
          FROM
              SEG_M_USUARIO U
              INNER JOIN SEG_D_USUARIO_CARGO UC ON UC.ID_USUARIO = U.ID_USUARIO
              INNER JOIN SEG_R_USUARIO_PERFIL UP ON UP.ID_USUARIO = UC.ID_USUARIO
                                                    AND UP.ID_OFICINA = UC.ID_OFICINA
                                                    AND UP.ID_CARGO = UC.ID_CARGO
              INNER JOIN SEG_M_CARGO C ON C.ID_CARGO = UC.ID_CARGO
          WHERE
              UC.FLG_JEFE = 1
              AND UC.ID_OFICINA = PI_ID_OFICINA;
  END;

  PROCEDURE USP_USUARIO_LISTAR
  (
    PO_CURSOR           OUT SYS_REFCURSOR,
    PI_ID_SISTEMA       INT,
    PI_ID_OFICINA       VARCHAR2,
    PI_COD_USUARIO      VARCHAR2
  )
  AS
  BEGIN
      OPEN PO_CURSOR FOR
          SELECT
              DISTINCT VU.ID_USUARIO AS ID_GESTOR_PERSONAL,
              VU.ID_USUARIO,
              VU.COD_USUARIO,
              VO.ID_OFICINA,
              VO.SIGLA_OFICINA SIGLA,
              VO.DESC_OFICINA,
              UPPER(VU.NOMBRE_USUARIO) NOMBRE,
              '' CARGO
          FROM
              SEG_M_USUARIO VU
              INNER JOIN SEG_R_USUARIO_PERFIL UP ON UP.ID_USUARIO = VU.ID_USUARIO AND UP.ID_SISTEMA = PI_ID_SISTEMA
              --INNER JOIN SEG_M_CARGO C ON C.ID_CARGO = UP.ID_CARGO
              INNER JOIN SEG_M_OFICINA VO  ON VO.ID_OFICINA = UP.ID_OFICINA
          WHERE
              VO.ID_OFICINA = PI_ID_OFICINA
              AND CONCAT(LOWER(VU.NOMBRE_USUARIO), LOWER(VU.COD_USUARIO)) LIKE
                 '%' || LOWER(PI_COD_USUARIO) || '%';
  END;

  PROCEDURE USP_OFICINA_LISTAR
  (
    PO_CURSOR      OUT SYS_REFCURSOR,
    PI_CRITERIO    SEG_M_OFICINA.DESC_OFICINA %TYPE
  )
  AS
  BEGIN
      OPEN PO_CURSOR FOR
          SELECT
              O.ID_OFICINA,
              O.DESC_OFICINA,
              O.SIGLA_OFICINA SIGLAS
          FROM
              SEG_M_OFICINA O
          WHERE
               CONCAT(LOWER(O.SIGLA_OFICINA), LOWER(O.DESC_OFICINA)) LIKE
               '%' || LOWER(PI_CRITERIO) || '%';
  END;

  PROCEDURE USP_ENTIDAD_LISTAR
  (
    PO_CURSOR      OUT SYS_REFCURSOR
  )
  AS
  BEGIN
      OPEN PO_CURSOR FOR
          SELECT
              E.ID_ENTIDAD,
              E.DESC_ENTIDAD
          FROM
              TRA_L_ENTIDADES E
          WHERE
              E.FLG_ESTADO = 1;
  END;

END PCK_SEG_CONSULTA;
/

