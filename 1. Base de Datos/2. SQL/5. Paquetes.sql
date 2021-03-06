USE [TRAMITE]
GO
/****** Object:  StoredProcedure [dbo].[P_CONS_CORRELATIVO]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_CONS_CORRELATIVO]
  (
    @PI_ID_OFICINA           NUMERIC(20),
    @PI_ID_TIPO_DOCUMENTO    NUMERIC(20),
    @PI_ID_PERFIL            NUMERIC(20),
    @PI_ID_DOCUMENTO         NUMERIC(20),
    @PI_FLG_OFICIAL          INT, -- 0 : NO OFICIAL   1 : OFICIAL-SIN GUARDAR  2 : OFICIAL - GUARDAR
    @PO_NRO_DOCUMENTO        VARCHAR(200) OUTPUT ,  -- OBTIENES NRO DE DOCUMENTO
    @PO_VALIDO               INT OUTPUT  ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    @PO_MENSAJE              VARCHAR(200) OUTPUT   -- MENSAJE DEL ERROR
  )
  AS
    DECLARE @P_MENSAJE              VARCHAR(200) ,
    @P_CUENTA						INTEGER = 0,
    @P_CUENTA_USUARIOS				INTEGER = 0,
    @P_ID_OFICINA					NUMERIC(20),
    @P_ANIO							INTEGER,
    @P_CORRELATIVO					VARCHAR(150),
    @P_N_CORRELATIVO				INTEGER,
    @P_ABREVIACION					VARCHAR(500),
    @P_SIGLA_OFICINA				VARCHAR(150),
    @P_NRO_DOCUMENTO				VARCHAR(200);
  BEGIN
      SET @PO_VALIDO = 0;
      SELECT
          @P_CUENTA_USUARIOS = COUNT(*)
      FROM
          TRA_D_DOCUMENTO_USUARIO DU
      WHERE
          DU.ID_DOCUMENTO = @PI_ID_DOCUMENTO
          AND DU.ID_TAREA = 1
          AND DU.FLG_CUMPLIDO = 0;
      IF @P_CUENTA_USUARIOS != 0 
	  BEGIN
          SELECT
              @P_ID_OFICINA = T.ID_OFICINA
                  FROM(
                        SELECT
                            DU.ID_OFICINA,
                            DU.NRO_PRIORIDAD
                        FROM
                            TRA_D_DOCUMENTO_USUARIO DU
                        WHERE
                            DU.ID_DOCUMENTO = @PI_ID_DOCUMENTO
                            AND DU.ID_TAREA = 1
                            AND DU.FLG_CUMPLIDO = 0
                      ) T
                  WHERE
                      T.NRO_PRIORIDAD = (SELECT
                                             MAX(DU.NRO_PRIORIDAD)
                                         FROM
                                             TRA_D_DOCUMENTO_USUARIO DU
                                         WHERE
                                             DU.ID_DOCUMENTO = @PI_ID_DOCUMENTO
                                             AND DU.ID_TAREA = 1
                                             AND DU.FLG_CUMPLIDO = 0
                                         );
      END 
	  ELSE 
	  BEGIN
         SET @P_ID_OFICINA = @PI_ID_OFICINA;
      END;

      --OBTENEMOS ANIO DE HOY
      SET @P_ANIO = YEAR(GETDATE());

      -- OBTENEMOS CORRELATIVO DE LA OFICINA FIRMANTE POR SEGURIDAD
      SELECT
          @P_CORRELATIVO = ISNULL((SELECT
			       RIGHT('0000' + CAST(C.N_CORRELATIVO AS varchar), 4)
                   --LPAD((to_number(C.N_CORRELATIVO) + @P_CUENTA), 4, '0')
               FROM
                   TRA_M_CORRELATIVO C
               WHERE
                   C.N_ANIO = @P_ANIO
                   AND C.ID_OFICINA = @P_ID_OFICINA
                   AND C.ID_PERFIL = @PI_ID_PERFIL
                   AND C.ID_TIPO_DOCUMENTO = @PI_ID_TIPO_DOCUMENTO),
                 '-'),
          @P_N_CORRELATIVO = ISNULL((SELECT
                   C.N_CORRELATIVO + @P_CUENTA
               FROM
                   TRA_M_CORRELATIVO C
               WHERE
                   C.N_ANIO = @P_ANIO
                   AND C.ID_OFICINA = @P_ID_OFICINA
                   AND C.ID_PERFIL = @PI_ID_PERFIL
                   AND C.ID_TIPO_DOCUMENTO = @PI_ID_TIPO_DOCUMENTO),
                 1);

      -- SI NO EXISTE EL CORRELATIVO LE DAMOS EL DEFAULT
      IF @P_CORRELATIVO = '-' 
	  BEGIN
          SET @P_CORRELATIVO = '0001';
          IF @PI_FLG_OFICIAL = 2 BEGIN
              INSERT INTO
                  TRA_M_CORRELATIVO
                   (
                     --ID_CORRELATIVO,
                     ID_TIPO_DOCUMENTO,
                     ID_OFICINA,
                     ID_PERFIL,
                     N_CORRELATIVO,
                     N_ANIO
                   )
                   VALUES
                   (
                     --SEQ_ID_CORRELATIVO.NEXTVAL,
                     @PI_ID_TIPO_DOCUMENTO,
                     @P_ID_OFICINA,
                     @PI_ID_PERFIL,
                     @P_N_CORRELATIVO + 1,
                     @P_ANIO
                   );
          END   
      END 
	  ELSE 
	  BEGIN
          IF @PI_FLG_OFICIAL = 2 
		  BEGIN
              UPDATE
                  TRA_M_CORRELATIVO  
              SET
                  N_CORRELATIVO = @P_N_CORRELATIVO
              WHERE
                  N_ANIO = @P_ANIO
                  AND ID_OFICINA = @P_ID_OFICINA
                  AND ID_PERFIL = @PI_ID_PERFIL
                  AND ID_TIPO_DOCUMENTO = @PI_ID_TIPO_DOCUMENTO;
          END;
      END;

      IF @PI_FLG_OFICIAL = 0 
	  BEGIN
           SET @P_CORRELATIVO = 'XXXX';
      END;

      -- OBTENEMOS SIGLA DE LA OFICINA FIRMANTE DEL DOCUMENTO
      SELECT
          @P_SIGLA_OFICINA = O.SIGLA_OFICINA
      FROM
          SEG_M_OFICINA O
      WHERE
          O.ID_OFICINA = @P_ID_OFICINA;

      SELECT
          @P_ABREVIACION = TD.DESC_TIPO_DOCUMENTO
      FROM
          TRA_L_TIPO_DOCUMENTO TD
      WHERE
          TD.ID_TIPO_DOCUMENTO = @PI_ID_TIPO_DOCUMENTO;

      -- ARMAMOS EL NRO DE DOCUMENTO QUE SE LE ASIGNARA AL DOCUMENTO
      -- EJEMPLO DE NRO DOCUMENTO :
      -- Memo-0664-2003/INGEMMET-UADA
      SET @P_NRO_DOCUMENTO = @P_ABREVIACION + ' N° ' + @P_CORRELATIVO + '-' + CAST(@P_ANIO AS VARCHAR) + '-' + @P_SIGLA_OFICINA;

      IF @PI_ID_DOCUMENTO != 0 
	  BEGIN
          UPDATE
              TRA_M_DOCUMENTO
          SET
              CORRELATIVO_DOCUMENTO = @P_N_CORRELATIVO,
              NRO_DOCUMENTO         = @P_NRO_DOCUMENTO
          WHERE
              ID_DOCUMENTO = @PI_ID_DOCUMENTO
              AND FLG_FIRMA = 0;
      END;

      SET @PO_NRO_DOCUMENTO = @P_NRO_DOCUMENTO;
      SET @PO_MENSAJE = @P_MENSAJE;
      SET @PO_VALIDO = 1;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_CONS_DOCUMENTO_ADJUNTO_LISTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_CONS_DOCUMENTO_ADJUNTO_LISTAR]
  (
    @PI_ID_DOCUMENTO		NUMERIC(20)
  )
  AS
  BEGIN
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
        DA.ID_DOCUMENTO = @PI_ID_DOCUMENTO;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_CONS_DOCUMENTO_ANEXO_LISTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_CONS_DOCUMENTO_ANEXO_LISTAR]
  (
    @PI_ID_DOCUMENTO		NUMERIC(20)
  )
  AS
  BEGIN
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
        DA.ID_DOCUMENTO_HIJO = @PI_ID_DOCUMENTO
        OR @PI_ID_DOCUMENTO = DA.ID_DOCUMENTO_PADRE;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_CONS_DOCUMENTO_DESTINO_LISTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_CONS_DOCUMENTO_DESTINO_LISTAR]
  (
    @PI_ID_DOCUMENTO		NUMERIC(20)
  )
  AS
  BEGIN
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
        DD.ID_DOCUMENTO = @PI_ID_DOCUMENTO;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_CONS_DOCUMENTO_LISTAR_UNO]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
--CREATE OR REPLACE PACKAGE BODY TRAMITE.PCK_CONSULTA  AS

  /*====================================================================================
          Objetivo            : Consulta los borradores generados por oficina
          Autor               : ANA  - Richard Carbajal Garcia
          Fecha Creacion      : 20/03/2021
          Comentarios         : Firma Digital
  =====================================================================================*/

  CREATE PROCEDURE [dbo].[P_CONS_DOCUMENTO_LISTAR_UNO]
  (
    @PI_ID_DOCUMENTO               NUMERIC(20)
  )
  AS
  BEGIN
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
		'' FECHA_DOCUMENTO,
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
	WHERE
		D.ID_DOCUMENTO = @PI_ID_DOCUMENTO;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_CONS_DOCUMENTO_MOVIMIENTO]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_CONS_DOCUMENTO_MOVIMIENTO]
  (
    @PI_ID_DOCUMENTO               NUMERIC(20)
  )
  AS
  BEGIN
    SELECT
        DM.ID_DOCUMENTO_MOVIMIENTO,
        DM.ID_DOCUMENTO,
        (DM.MOVIMIENTO + ' - ' + ' Documento con estado: ' + ED.DESC_ESTADO_DOCUMENTO + '') MOVIMIENTO,
        DM.FLG_ESTADO,
        (U.NOMBRE_USUARIO + CHAR(13) + ' [' + U.DESC_CARGO + ']' + CHAR(13) +  U.DESC_OFICINA) USU_CREACION,
        DM.FEC_CREACION,
		ISNULL(CONCAT(CONVERT(VARCHAR,DM.FEC_CREACION, 103), ' ', CONVERT(VARCHAR, DM.FEC_CREACION, 8)), '-') STR_FEC_CREACION,
        --ISNULL(CONVERT(VARCHAR, DM.FEC_CREACION, 109), '-') STR_FEC_CREACION,
        ISNULL(DM.IP_CREACION, '-') IP_CREACION,
        ISNULL(DM.USU_MODIFICACION, '-') USU_MODIFICACION,
        DM.FEC_MODIFICACION,
		ISNULL(CONCAT(CONVERT(VARCHAR,DM.FEC_MODIFICACION, 103), ' ', CONVERT(VARCHAR, DM.FEC_MODIFICACION, 8)), '-') STR_FEC_MODIFICACION,
        --ISNULL(CONVERT(VARCHAR, DM.FEC_MODIFICACION, 109), '-') STR_FEC_MODIFICACION,
        ISNULL(DM.IP_MODIFICACION, '-') IP_MODIFICACION
    FROM
        TRA_D_DOCUMENTO_MOVIMIENTO DM
        INNER JOIN V_SEG_USUARIO U ON U.ID_USUARIO = DM.ID_USUARIO
                                      AND U.ID_OFICINA = DM.ID_OFICINA
                                      AND U.ID_CARGO = DM.ID_CARGO
        LEFT JOIN TRA_L_ESTADO_DOCUMENTO ED ON ED.ID_ESTADO_DOCUMENTO = DM.ID_ESTADO_DOCUMENTO
    WHERE
        DM.ID_DOCUMENTO = @PI_ID_DOCUMENTO
    ORDER BY
        DM.ID_DOCUMENTO_MOVIMIENTO ASC;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_CONS_DOCUMENTO_OFICINA_CARGO]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_CONS_DOCUMENTO_OFICINA_CARGO]
  (
    @PI_ID_DOCUMENTO_OFICINA		NUMERIC(20)
  )
  AS
  BEGIN
    SELECT
        DO.ID_DOCUMENTO_OFICINA,
        DO.COD_CARGO,
        CONCAT(D.NRO_CUT, '-Cargo.pdf') NOMBRE_CARGO
    FROM
        TRA_D_DOCUMENTO_OFICINA DO
        INNER JOIN TRA_M_DOCUMENTO D ON D.ID_DOCUMENTO = DO.ID_DOCUMENTO
    WHERE
        DO.ID_DOCUMENTO_OFICINA = @PI_ID_DOCUMENTO_OFICINA;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_CONS_DOCUMENTO_OFICINA_LISTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_CONS_DOCUMENTO_OFICINA_LISTAR]
  (
    @PI_ID_DOCUMENTO		NUMERIC(20),
    @PI_ID_SISTEMA			NUMERIC(20)
  )
  AS
  BEGIN
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
        DO.ID_DOCUMENTO   = @PI_ID_DOCUMENTO
        AND VU.ID_SISTEMA = @PI_ID_SISTEMA
    ORDER BY
        DO.ID_DOCUMENTO_OFICINA ASC;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_CONS_DOCUMENTO_PAGINACION]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_CONS_DOCUMENTO_PAGINACION]
  (
    @PI_PAGINA               INTEGER,
    @PI_NROREGISTROS         INTEGER,
    @PI_ORDEN_COLUMNA        VARCHAR(100),
    @PI_ORDEN                VARCHAR(100),
    @PI_WHERE                VARCHAR(1000),
    @PI_TABLA                VARCHAR(100),
    @PO_CUENTA               INT OUTPUT
  )
  AS
    DECLARE @P_PAGINA_AUX              INTEGER = 0,
    @P_CUENTA_REGISTROS        INTEGER = 0,
    @P_CUENTA_PAGINA           INTEGER = 0,
    @P_NROREGISTROS_AUX        INTEGER = @PI_NROREGISTROS,
    @P_ORDEN_COLUMNA_AUX       VARCHAR(100),
    @P_SQLDR                   NVARCHAR(4000),
	@ParmDefinition			   NVARCHAR(100);
  BEGIN
      SET @P_ORDEN_COLUMNA_AUX = @PI_ORDEN_COLUMNA;
      IF @P_NROREGISTROS_AUX = 0 
	  BEGIN
          SET @P_NROREGISTROS_AUX = 1;
      END;
      IF @P_ORDEN_COLUMNA_AUX IS NULL BEGIN
          SET @P_ORDEN_COLUMNA_AUX = 'ID_DOCUMENTO';
      END;
      SET @P_SQLDR = 'SELECT
                          @retvalOUT = COUNT(*)
					  FROM
	  					  ' + @PI_TABLA + ' V WHERE ' + @PI_WHERE;
      SET @ParmDefinition = N'@retvalOUT int OUTPUT';
      -- Paginas totales
	  EXEC sp_executesql @P_SQLDR, @ParmDefinition, @retvalOUT = @P_CUENTA_REGISTROS OUTPUT;
      SET @P_CUENTA_PAGINA = @P_CUENTA_REGISTROS / @PI_PAGINA;
	  IF @P_CUENTA_PAGINA = 0
	  BEGIN
	      SET @P_CUENTA_PAGINA = 1
	  END;
	  --INSERT INTO LOGG VALUES('@P_CUENTA_REGISTROS:'+cast(@P_CUENTA_REGISTROS as varchar));
	  --INSERT INTO LOGG VALUES('@@PI_PAGINA:'+cast(@PI_PAGINA as varchar));
	  --INSERT INTO LOGG VALUES('@@P_CUENTA_PAGINA:'+cast(@P_CUENTA_PAGINA as varchar));
      IF @PI_PAGINA > @P_CUENTA_PAGINA 
	  BEGIN
          SET @P_PAGINA_AUX = @P_CUENTA_PAGINA - 1;
      END 
	  ELSE 
	  BEGIN
          SET @P_PAGINA_AUX = @PI_PAGINA - 1 ;
      END;
	  --INSERT INTO LOGG VALUES('@@@P_PAGINA_AUX:'+cast(@P_PAGINA_AUX as varchar));
	  --INSERT INTO LOGG VALUES('@@@P_NROREGISTROS_AUX:'+cast(@P_NROREGISTROS_AUX as varchar));
      SET @P_SQLDR = '
					 SELECT
						 V.*, 
						 ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS FILA,
						 ROW_NUMBER() OVER (ORDER BY ' + @P_ORDEN_COLUMNA_AUX + ' ' + @PI_ORDEN + ') AS ROWNUMBER
					 FROM ' + @PI_TABLA + ' V';
      IF @PI_WHERE <> ' ' AND @PI_WHERE IS NOT NULL BEGIN
          SET @P_SQLDR = @P_SQLDR + ' WHERE ' + @PI_WHERE;
      END;
      SET @P_SQLDR = 'SELECT * FROM (' + @P_SQLDR + ') t WHERE ROWNUMBER BETWEEN ' +
       CAST(((@P_PAGINA_AUX * @P_NROREGISTROS_AUX) + 1) AS VARCHAR) + ' AND ' +  CAST((@P_NROREGISTROS_AUX  *( @P_PAGINA_AUX + 1)) AS VARCHAR) +
      ' ORDER BY ' + @P_ORDEN_COLUMNA_AUX + ' ' + @PI_ORDEN;
      SET @PO_CUENTA = @P_CUENTA_REGISTROS;
	  --INSERT INTO LOGG VALUES(@P_SQLDR);
	  EXEC sp_executesql @P_SQLDR;
  END;
GO
/****** Object:  StoredProcedure [dbo].[P_CONS_DOCUMENTO_USUARIO_LISTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_CONS_DOCUMENTO_USUARIO_LISTAR]
  (
    @PI_ID_DOCUMENTO     NUMERIC(20),
    @PI_ID_SISTEMA       NUMERIC(20)
  )
  AS
  BEGIN
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
        CONVERT(VARCHAR, DU.FEC_CUMPLIDO, 109) FEC_CUMPLIDO,
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
        DU.ID_DOCUMENTO = @PI_ID_DOCUMENTO
        AND V.ID_SISTEMA = @PI_ID_SISTEMA
    ORDER BY
        DU.NRO_PRIORIDAD ASC;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_CONS_OFICINAS_LISTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_CONS_OFICINAS_LISTAR]
  (
    @PI_CRITERIO		VARCHAR(250)
  )
  AS
  BEGIN
    SELECT
        O.ID_OFICINA,
        O.DESC_OFICINA,
        O.SIGLA_OFICINA SIGLAS
    FROM
        SEG_M_OFICINA O
    WHERE
        LOWER(CONCAT(O.SIGLA_OFICINA, O.DESC_OFICINA)) LIKE '%' + LOWER(@PI_CRITERIO) + '%';
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_CONS_OFICINAS_LISTAR2]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_CONS_OFICINAS_LISTAR2]
  AS
  BEGIN
      --OPEN --PO_CURSOR FOR
          SELECT
              O.ID_OFICINA,
              O.DESC_OFICINA,
              O.SIGLA_OFICINA
          FROM
              SEG_M_OFICINA O;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_CONS_PLANTILLA_LISTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_CONS_PLANTILLA_LISTAR]
  (
    @PI_ID_TIPO_DOCUMENTO          NUMERIC(20)
  )
  AS
    DECLARE 
	@P_CUENTA	          INT = 0,
    @P_ID_TIPO_DOCUMENTO  INT = 0,
    @P_FLG_MGD			  INT = 0;
  BEGIN
      SELECT
          @P_CUENTA = COUNT(*)
      FROM
          TRA_D_PLANTILLA_CAMPO PC
          INNER JOIN TRA_L_CAMPO C ON C.ID_CAMPO = PC.ID_CAMPO
                                           AND C.FLG_ESTADO = 1
                                           AND C.ID_CAMPO_PADRE != 0
          INNER JOIN TRA_M_PLANTILLA P ON P.ID_PLANTILLA = PC.ID_PLANTILLA
                                               AND P.FLG_ESTADO = 1
                                               AND P.ID_PLANTILLA != 0
      WHERE
          P.ID_TIPO_DOCUMENTO = @PI_ID_TIPO_DOCUMENTO;

      IF @P_CUENTA != 0 
	  BEGIN
		-- OBTENEMOS LOS CAMPOS DE LA PLANTILLA
		SELECT
			PC.ID_CAMPO,
			C.CODIGO_CAMPO DESC_CAMPO,
			P.CODIGO_DOCUMENTO,
			P.EXTENSION_DOCUMENTO,
			PC.FLG_ESTADO,
			CA.NOMBRE_ANIO,
			CA.NOMBRE_DECENIO,
			CA.CODIGO_IMAGEN + CA.EXTENSION_IMAGEN AS IMAGEN,
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
			LEFT JOIN V_TIPO_DOCUMENTO  TD ON TD.ID_TIPO_DOCUMENTO = @PI_ID_TIPO_DOCUMENTO
		WHERE
			P.ID_TIPO_DOCUMENTO = @PI_ID_TIPO_DOCUMENTO
		ORDER BY
			PC.ORDEN ASC;
      END 
	  ELSE 
	  BEGIN
          SET @P_FLG_MGD = ISNULL
						  ((
							  SELECT TD.FLG_MGD
							  FROM V_TIPO_DOCUMENTO TD
							  WHERE TD.ID_TIPO_DOCUMENTO = @PI_ID_TIPO_DOCUMENTO
						  ),0);

          IF @P_FLG_MGD = 0 
		  BEGIN
              SET @P_ID_TIPO_DOCUMENTO = 1;
          END 
		  ELSE 
		  BEGIN
              SET @P_ID_TIPO_DOCUMENTO = 8;
          END;

          --OPEN --PO_CURSOR FOR
            -- OBTENEMOS LOS CAMPOS POR DEFAULT DE LA PLANTILLA
            SELECT
                PC.ID_CAMPO,
                C.CODIGO_CAMPO DESC_CAMPO,
                P.CODIGO_DOCUMENTO,
                P.EXTENSION_DOCUMENTO,
                PC.FLG_ESTADO,
                CA.NOMBRE_ANIO,
                CA.NOMBRE_DECENIO,
                CA.CODIGO_IMAGEN + CA.EXTENSION_IMAGEN AS IMAGEN,
                TD.FLG_MGD
            FROM
                TRA_D_PLANTILLA_CAMPO PC
                INNER JOIN TRA_L_CAMPO C ON C.ID_CAMPO = PC.ID_CAMPO
                                                 AND C.FLG_ESTADO = 1
                                                 AND C.ID_CAMPO_PADRE != 0
                INNER JOIN TRA_M_PLANTILLA P ON P.ID_PLANTILLA = PC.ID_PLANTILLA
                                                  AND P.FLG_ESTADO = 0
                LEFT JOIN TRA_L_CABECERA CA ON CA.FLG_ESTADO = 1
                LEFT JOIN V_TIPO_DOCUMENTO  TD ON TD.ID_TIPO_DOCUMENTO = @P_ID_TIPO_DOCUMENTO
            WHERE
                P.ID_TIPO_DOCUMENTO = @P_ID_TIPO_DOCUMENTO
                AND PC.ID_PLANTILLA = 0
            ORDER BY
                PC.ORDEN ASC;
       END;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_CONS_TIPO_DOCUMENTO]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  /*====================================================================================
          Objetivo            : Consulta los borradores generados por oficina
          Autor               : ANA  - Richard Carbajal Garcia
          Fecha Creacion      : 20/03/2021
          Comentarios         : Firma Digital
  =====================================================================================*/
  CREATE PROCEDURE [dbo].[P_CONS_TIPO_DOCUMENTO]
  AS
  BEGIN
    SELECT
        TD.ID_TIPO_DOCUMENTO,
        TD.DESC_TIPO_DOCUMENTO,
        TD.FLG_MGD
    FROM
        V_TIPO_DOCUMENTO TD
    ORDER BY
        TD.DESC_TIPO_DOCUMENTO ASC;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_LOGIN_LOGIN]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--END PCK_CONSULTA;
--/
--prompt
--prompt Creating package body PCK_LOGIN
--prompt ===============================
--prompt
--CREATE OR REPLACE PACKAGE BODY TRAMITE.PCK_LOGIN  AS

  /*====================================================================================
          Objetivo            : Consulta los borradores generados por oficina
          Autor               : ANA  - Richard Carbajal Garcia
          Fecha Creacion      : 20/03/2021
          Comentarios         : Firma Digital
  =====================================================================================*/
  CREATE PROCEDURE [dbo].[P_LOGIN_LOGIN]
  (
    @PI_COD_USUARIO          VARCHAR(500),
    @PI_CLAVE_USUARIO        VARCHAR(100),
    @PO_ID_USUARIO           INT OUTPUT,
    @PO_VALIDO               INT OUTPUT,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    @PO_MENSAJE              VARCHAR(200) OUTPUT  -- MENSAJE DEL ERROR
  )
  AS
  DECLARE  @P_CUENTA            INT,
           @P_ID_USUARIO        INT,
           @P_MENSAJE           VARCHAR(200) = ''
  BEGIN
     SET @PO_VALIDO = 0;
     SET  @P_CUENTA = ( SELECT
						    COUNT(*)
					    FROM
						    SEG_M_USUARIO U
					    WHERE
						    UPPER(U.COD_USUARIO) = UPPER(@PI_COD_USUARIO)
						    AND U.CLAVE_USUARIO = @PI_CLAVE_USUARIO
						    AND U.FLG_ESTADO = 1)
      IF @P_CUENTA != 0 
	  BEGIN
          SET @P_ID_USUARIO = (SELECT
								 U.ID_USUARIO        
							   FROM
								 SEG_M_USUARIO U 
							   WHERE
								 UPPER(U.COD_USUARIO) = UPPER(@PI_COD_USUARIO)
								 AND U.CLAVE_USUARIO = @PI_CLAVE_USUARIO
								 AND U.FLG_ESTADO = 1)
           SET @PO_ID_USUARIO = @P_ID_USUARIO;
           SET @PO_VALIDO = 1;
       END 
	  ELSE
	   BEGIN
           SET @P_MENSAJE = 'El usuario/clave son incorrectos';
      END 
     SET @PO_MENSAJE = @P_MENSAJE;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_LOGIN_SISTEMA]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_LOGIN_SISTEMA]
  (
    @PI_ID_USUARIO           INT,
    @PI_ID_SISTEMA           INT,
    @PO_VALIDO               INT OUT,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    @PO_MENSAJE              VARCHAR(200) OUT   -- MENSAJE DEL ERROR
  )
  AS
  DECLARE  @P_CUENTA            INT = 0,
           @P_MENSAJE           VARCHAR(200) = ''
  BEGIN
     SET @PO_VALIDO = 0;
     SET @P_CUENTA = (SELECT
					      COUNT(*)
					  FROM
						  SEG_R_USUARIO_PERFIL UP
					  WHERE
						  UP.ID_USUARIO = @PI_ID_USUARIO
						  AND UP.ID_SISTEMA = @PI_ID_SISTEMA)
      IF @P_CUENTA != 0 
	  BEGIN
        SELECT
            UP.ID_USUARIO_PERFIL,
            U.ID_USUARIO,
            UPPER(U.COD_USUARIO) COD_USUARIO,
            UPPER(U.NOMBRE_USUARIO) NOMBRE_USUARIO,
            P.ID_PERFIL,
            UPPER(P.DESC_PERFIL) + ' - ' + UPPER(O.DESC_OFICINA) DESC_PERFIL,
            O.ID_OFICINA,
            '- ' + UPPER(O.DESC_OFICINA) DESC_OFICINA,
            C.ID_CARGO,
            '- ' + UPPER(C.DESC_CARGO) DESC_CARGO
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
            U.ID_USUARIO = @PI_ID_USUARIO
            AND U.FLG_ESTADO = 1
            AND UP.ID_SISTEMA = @PI_ID_SISTEMA;
        SET  @PO_VALIDO = 1;
      END
	   ELSE 
	  BEGIN
        SET @P_MENSAJE = 'El usuario no tiene permisos para el sistema';
      END 
      SET @PO_MENSAJE = @P_MENSAJE;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_MANT_CUT_INSERTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--prompt
--prompt Creating package body PCK_MANTENIMIENTO
--prompt =======================================
--prompt
--CREATE OR REPLACE PACKAGE BODY TRAMITE.PCK_MANTENIMIENTO AS
  CREATE PROCEDURE [dbo].[P_MANT_CUT_INSERTAR]
  (
    @PO_NRO_CUT			VARCHAR(20) OUTPUT,
    @PO_VALIDO          NUMERIC OUTPUT, -- 0 : HAY ERROR , 1 : NO HAY ERROR
    @PO_MENSAJE         VARCHAR(200) OUTPUT  -- MENSAJE DEL ERROR
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
/****** Object:  StoredProcedure [dbo].[P_MANT_DOCUMENTO_ADJUNTO_INSERTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_MANT_DOCUMENTO_ADJUNTO_INSERTAR]
  (
    @PI_ID_DOCUMENTO                NUMERIC(20),
    @PI_NOMBRE_ARCHIVO              VARCHAR(500),
    @PI_CODIGO_ARCHIVO              VARCHAR(500),
    @PI_PESO_ARCHIVO                NUMERIC(18),
    @PI_EXTENSION_ARCHIVO           VARCHAR(100),
    @PI_FLG_FIRMA                   INT,
    @PI_USU_CREACION                VARCHAR(50),
    @PI_IP_CREACION                 VARCHAR(50),
    @PO_VALIDO                      INT OUT,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    @PO_MENSAJE                     VARCHAR(200) OUT  -- MENSAJE DEL ERROR
  )
  AS
    DECLARE
	@P_MENSAJE          VARCHAR(200) = '';
  BEGIN
      SET @PO_VALIDO = 0;
      INSERT INTO
          TRA_D_DOCUMENTO_ADJUNTO
          (
             --ID_DOCUMENTO_ADJUNTO,
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
             --SEQ_ID_DOCUMENTO_ADJUNTO.NEXTVAL,
             @PI_ID_DOCUMENTO,
             @PI_NOMBRE_ARCHIVO,
             @PI_CODIGO_ARCHIVO,
             @PI_PESO_ARCHIVO,
             @PI_EXTENSION_ARCHIVO,
             @PI_FLG_FIRMA,
             @PI_USU_CREACION,
             GETDATE(),
             @PI_IP_CREACION
           );
       SET @PO_VALIDO = 1;
       SET @PO_MENSAJE = @P_MENSAJE;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_MANT_DOCUMENTO_ANEXO_INSERTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_MANT_DOCUMENTO_ANEXO_INSERTAR]
  (
    @PI_ID_DOCUMENTO_PADRE          NUMERIC(20),
    @PI_ID_DOCUMENTO_HIJO           NUMERIC(20),
    @PI_NRO_CUT                     VARCHAR(20),
    @PI_USU_CREACION                VARCHAR(50),
    @PI_IP_CREACION                 VARCHAR(50),
    @PO_VALIDO                      INT OUT,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    @PO_MENSAJE                     VARCHAR(200) OUT  -- MENSAJE DEL ERROR
  )
  AS
    DECLARE
    @P_CUENTA           INT = 0,
    @P_NRO_CUT          VARCHAR(20) = '',
    @P_MENSAJE          VARCHAR(200) = '',
	@P_ID_DOCUMENTO_PADRE      NUMERIC(20);
  BEGIN
      SET @PO_VALIDO = 0;
      SELECT
          @P_CUENTA = COUNT(*)
      FROM
          TRA_D_DOCUMENTO_ANEXO
      WHERE
          ID_DOCUMENTO_PADRE = @PI_ID_DOCUMENTO_PADRE
          AND ID_DOCUMENTO_HIJO = @PI_ID_DOCUMENTO_HIJO;
      
      IF @P_CUENTA = 0 BEGIN
	      SET @P_ID_DOCUMENTO_PADRE = ISNULL((SELECT ID_DOCUMENTO_PADRE FROM TRA_D_DOCUMENTO_ANEXO WHERE ID_DOCUMENTO_HIJO = @PI_ID_DOCUMENTO_PADRE),@PI_ID_DOCUMENTO_PADRE);
		  SELECT
			  @P_NRO_CUT = NRO_CUT
		  FROM
			  TRA_M_DOCUMENTO
		  WHERE
			  ID_DOCUMENTO = @P_ID_DOCUMENTO_PADRE;
          UPDATE TRA_M_DOCUMENTO
		      SET NRO_CUT = @P_NRO_CUT
		  WHERE
		      ID_DOCUMENTO = @PI_ID_DOCUMENTO_HIJO;
		  INSERT INTO
              TRA_D_DOCUMENTO_ANEXO
              (
                NRO_CUT,
                ID_DOCUMENTO_PADRE,
				ID_DOCUMENTO_VINCULO,
                ID_DOCUMENTO_HIJO,
                USU_CREACION,
                FEC_CREACION,
                IP_CREACION
              )
              VALUES
              (
                @PI_NRO_CUT,
                @P_ID_DOCUMENTO_PADRE,
				@PI_ID_DOCUMENTO_PADRE,
                @PI_ID_DOCUMENTO_HIJO,
                @PI_USU_CREACION,
                GETDATE(),
                @PI_IP_CREACION
              );
          SET @PO_VALIDO = 1;
      END
	  ELSE
	  BEGIN
          SET @P_MENSAJE = 'El documento ya fue anexado';
      END;
      SET @PO_MENSAJE = @P_MENSAJE;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_MANT_DOCUMENTO_ANULAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_MANT_DOCUMENTO_ANULAR]
  (
    @PI_ID_DOCUMENTO                NUMERIC(20),
    @PI_ID_USUARIO                  NUMERIC(20),
    @PI_ID_OFICINA                  NUMERIC(20),
    @PI_ID_CARGO                    NUMERIC(20),
    @PI_USU_MODIFICACION            VARCHAR(50),
    @PI_IP_MODIFICACION             VARCHAR(50),
    @PO_VALIDO                      INT OUT,
    @PO_MENSAJE                     VARCHAR(200) OUT 
  )
  AS
    DECLARE
	@P_MENSAJE             VARCHAR(200) = '',
    @P_CUENTA              INT = 0;
  BEGIN
      SET @PO_VALIDO = 0;
      SELECT
          @P_CUENTA = COUNT(*)
      FROM
          TRA_M_DOCUMENTO
      WHERE
          ID_DOCUMENTO = @PI_ID_DOCUMENTO;
      IF @P_CUENTA != 0 BEGIN
          UPDATE
              TRA_M_DOCUMENTO
          SET
              ID_ESTADO_DOCUMENTO = 4
          WHERE
              ID_DOCUMENTO = @PI_ID_DOCUMENTO;

          -- SE GUARDA EL MOVIMIENTO DE ANULACION
		  EXEC dbo.P_MANT_DOCUMENTO_MOVIMIENTO @PI_ID_DOCUMENTO, 
											   4, 
											   @PI_ID_USUARIO, 
											   @PI_ID_OFICINA, 
											   @PI_ID_CARGO, 
											   'Se anula el documento',
											   @PI_USU_MODIFICACION, 
											   @PI_IP_MODIFICACION,
											   @PO_VALIDO,
											   @PO_MENSAJE;
          /*dbo.P_MANT_DOCUMENTO_MOVIMIENTO(@PI_ID_DOCUMENTO        => @PI_ID_DOCUMENTO,
                                                     @PI_ID_ESTADO_DOCUMENTO => 4,
                                                     @PI_ID_USUARIO          => @PI_ID_USUARIO,
                                                     @PI_ID_OFICINA          => @PI_ID_OFICINA,
                                                     @PI_ID_CARGO            => @PI_ID_CARGO,
                                                     @PI_MOVIMIENTO          => 'Se anula el documento',
                                                     @PI_USU_CREACION        => @PI_USU_MODIFICACION,
                                                     @PI_IP_CREACION         => @PI_IP_MODIFICACION,
                                                     @PO_VALIDO              => @PO_VALIDO,
                                                     @PO_MENSAJE             => @PO_MENSAJE);*/
          SET @PO_VALIDO = 1;
      END 
	  ELSE 
	  BEGIN
          SET @P_MENSAJE = 'El documento ya fue anulado por otro usuario.';
      END;
      SET @PO_MENSAJE = @P_MENSAJE;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_MANT_DOCUMENTO_CARGO]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_MANT_DOCUMENTO_CARGO]
  (
    @PI_ID_DOCUMENTO_OFICINA        NUMERIC(20),
    @PI_ID_DOCUMENTO                NUMERIC(20),
    @PI_ID_OFICINA                  NUMERIC(20),
    @PI_ID_USUARIO                  NUMERIC(20),
    @PI_ID_CARGO                    NUMERIC(20),
    @PI_COD_CARGO                   VARCHAR(200),
    @PI_USU_MODIFICACION            VARCHAR(50),
    @PI_IP_MODIFICACION             VARCHAR(50),
    @PO_VALIDO                      INT OUT,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    @PO_MENSAJE                     VARCHAR(200) OUT  -- MENSAJE DEL ERROR
  )
  AS
    DECLARE
	@P_CUENTA           INT = 0,
    @P_MENSAJE          VARCHAR(200) = '';
  BEGIN
      SET @PO_VALIDO = 0;
      SELECT
          @P_CUENTA = COUNT(*)
      FROM
          TRA_D_DOCUMENTO_OFICINA
      WHERE
          ID_DOCUMENTO_OFICINA = @PI_ID_DOCUMENTO_OFICINA
          AND FLG_CARGO = 0;

      IF @P_CUENTA != 0 BEGIN
          UPDATE
              TRA_D_DOCUMENTO_OFICINA
          SET
              FLG_CARGO = 1,
              USU_MODIFICACION = @PI_USU_MODIFICACION,
              IP_MODIFICACION = @PI_IP_MODIFICACION,
              COD_CARGO = @PI_COD_CARGO,
              FEC_CARGO = GETDATE()
          WHERE
              ID_DOCUMENTO_OFICINA = @PI_ID_DOCUMENTO_OFICINA;

          -- GUARDAMOS EL MOVIMIENTO PARA EL USUARIO
		EXEC dbo.P_MANT_DOCUMENTO_MOVIMIENTO @PI_ID_DOCUMENTO, 
											11, 
											@PI_ID_USUARIO, 
											@PI_ID_OFICINA, 
											@PI_ID_CARGO, 
                                            'Se firmó el cargo ',
											@PI_USU_MODIFICACION, 
											@PI_IP_MODIFICACION,
											@PO_VALIDO,
											@PO_MENSAJE; 
          /*PCK_MANTENIMIENTO.US@P_DOCUMENTO_MOVIMIENTO(@PI_ID_DOCUMENTO        => @PI_ID_DOCUMENTO,
                                                    @PI_ID_ESTADO_DOCUMENTO => @P_ID_ESTADO,
                                                    @PI_ID_USUARIO          => @PI_ID_USUARIO,
                                                    @PI_ID_OFICINA          => @PI_ID_OFICINA,
                                                    @PI_ID_CARGO            => @PI_ID_CARGO,
                                                    @PI_MOVIMIENTO          => 'Se habilit� el documento para la tarea de ' + @P_DESC_TAREA + ' a ' + @P_NOMBRE_USUARIO + ' [' + @P_DESC_CARGO + '] - ' +  @P_DESC_OFICINA,
                                                    @PI_USU_CREACION        => @PI_USU_MODIFICACION,
                                                    @PI_IP_CREACION         => @PI_IP_MODIFICACION,
                                                    @PO_VALIDO              => @PO_VALIDO,
                                                    @PO_MENSAJE             => @PO_MENSAJE);
          PCK_MANTENIMIENTO.US@P_DOCUMENTO_MOVIMIENTO(@PI_ID_DOCUMENTO        => @PI_ID_DOCUMENTO,
                                                     @PI_ID_ESTADO_DOCUMENTO => 11,
                                                     @PI_ID_USUARIO          => @PI_ID_USUARIO,
                                                     @PI_ID_OFICINA          => @PI_ID_OFICINA,
                                                     @PI_ID_CARGO            => @PI_ID_CARGO,
                                                     @PI_MOVIMIENTO          => 'Se firm� el cargo ',
                                                     @PI_USU_CREACION        => @PI_USU_MODIFICACION,
                                                     @PI_IP_CREACION         => @PI_IP_MODIFICACION,
                                                     @PO_VALIDO              => @PO_VALIDO,
                                                     @PO_MENSAJE             => @PO_MENSAJE);*/
          SET @PO_VALIDO = 1;
      END 
	  ELSE 
	  BEGIN
          SET @P_MENSAJE = 'El cargo de este documento ya fue firmado';
      END;
      SET @PO_MENSAJE = @P_MENSAJE;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_MANT_DOCUMENTO_DESTINO_INSERTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_MANT_DOCUMENTO_DESTINO_INSERTAR]
  (
    @PI_ID_DOCUMENTO                NUMERIC(20),
    @PI_ID_ENTIDAD                  NUMERIC(20),
    @PI_OFICINA                     VARCHAR(150),
    @PI_RUBRICA                     VARCHAR(30),
    @PI_REMITENTE                   VARCHAR(150),
    @PI_CARGO                       VARCHAR(150),
    @PI_DIRECCION                   VARCHAR(500),
    @PI_FLG_DOMICILIO               INT,
    @PI_USU_CREACION                VARCHAR(50),
    @PI_IP_CREACION                 VARCHAR(50),
    @PO_VALIDO                      INT OUT,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    @PO_MENSAJE                     VARCHAR(200) OUT  -- MENSAJE DEL ERROR
  )
  AS
    DECLARE
	@P_CUENTA           INT= 0,
    @P_MENSAJE          VARCHAR(200) = '';
  BEGIN
      SET @PO_VALIDO = 0;
      SELECT
          @P_CUENTA = COUNT(*)
      FROM
          TRA_D_DOCUMENTO_DESTINO
      WHERE
          ID_DOCUMENTO = @PI_ID_DOCUMENTO
          AND ID_ENTIDAD = @PI_ID_ENTIDAD;
      IF @P_CUENTA = 0 
	  BEGIN
          INSERT INTO
              TRA_D_DOCUMENTO_DESTINO
              (
                --ID_DOCUMENTO_DESTINO,
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
                --SEQ_ID_DOCUMENTO_DESTINO.NEXTVAL,
                @PI_ID_DOCUMENTO,
                @PI_ID_ENTIDAD,
                UPPER(@PI_OFICINA),
                UPPER(@PI_RUBRICA),
                UPPER(@PI_REMITENTE),
                UPPER(@PI_CARGO),
                UPPER(@PI_DIRECCION),
                @PI_FLG_DOMICILIO,
                @PI_USU_CREACION,
                GETDATE(),
                @PI_IP_CREACION
              );
          SET @PO_VALIDO = 1;
      END 
	  ELSE 
	  BEGIN
          SET @P_MENSAJE = 'La entidad ya se encuentra registra';
      END;
      SET @PO_MENSAJE = @P_MENSAJE;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_MANT_DOCUMENTO_ELIMINAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_MANT_DOCUMENTO_ELIMINAR]
  (
    @PI_ID_DOCUMENTO                NUMERIC(20),
    @PO_VALIDO                      INT OUT,
    @PO_MENSAJE                     VARCHAR(200) OUT
  )
  AS
    DECLARE 
	@P_MENSAJE             VARCHAR(200) = '-',
    @P_CUENTA              INT = 0;
  BEGIN
      SET @PO_VALIDO = 0;
      SELECT
          @P_CUENTA = COUNT(*)
      FROM
          TRA_M_DOCUMENTO
      WHERE
          ID_DOCUMENTO = @PI_ID_DOCUMENTO;
      IF @P_CUENTA != 0 
	  BEGIN
          DELETE FROM
              TRA_M_DOCUMENTO
          WHERE
              ID_DOCUMENTO = @PI_ID_DOCUMENTO;
          SET @PO_VALIDO = 1;
      END 
	  ELSE 
	  BEGIN
          SET @P_MENSAJE = 'El documento fue eliminado por otro usuario.';
      END;
      SET @PO_MENSAJE = @P_MENSAJE;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_MANT_DOCUMENTO_ENVIAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_MANT_DOCUMENTO_ENVIAR]
  (
    @PI_ID_DOCUMENTO                NUMERIC(20),
    @PI_ID_USUARIO                  NUMERIC(20),
    @PI_ID_OFICINA                  NUMERIC(20),
    @PI_ID_CARGO                    NUMERIC(20),
    @PI_USU_MODIFICACION            VARCHAR(50),
    @PI_IP_MODIFICACION             VARCHAR(50),
    @PO_VALIDO                      INT OUT,
    @PO_MENSAJE                     VARCHAR(200) OUT 
  )
  AS
    DECLARE
	@P_ID_ESTADO               INT,
    @P_DESC_TAREA              VARCHAR(150),
    @P_NRO_PRIORIDAD           INT,
    @P_ID_DOCUMENTO_USUARIO    NUMERIC(20),
    @P_NOMBRE_USUARIO          VARCHAR(150),
    @P_DESC_OFICINA            VARCHAR(150),
    @P_DESC_CARGO              VARCHAR(150),
    @P_ID_TIPO                 INT,
    @P_MENSAJE                 VARCHAR(200) = '',
    @P_CUENTA                  INT = 0,
	@P_MOV					   VARCHAR(4000) = '';
  BEGIN
      SET @PO_VALIDO = 0;
      -- VERIFICAMOS SI EL DOCUMENTO EXISTE
      SELECT
          @P_CUENTA = COUNT(*)
      FROM
          TRA_M_DOCUMENTO
      WHERE
          ID_DOCUMENTO = @PI_ID_DOCUMENTO;
      IF @P_CUENTA != 0 BEGIN
          SELECT
              @P_ID_TIPO = ID_TIPO
          FROM
              TRA_M_DOCUMENTO
          WHERE
              ID_DOCUMENTO = @PI_ID_DOCUMENTO;
          -- ACTUALIZAMOS EL ESTADO DEL DOCUMENTO
          UPDATE
              TRA_M_DOCUMENTO
          SET
              ID_ESTADO_DOCUMENTO = 2,
              USU_MODIFICACION = @PI_USU_MODIFICACION,
              IP_MODIFICACION = @PI_IP_MODIFICACION
          WHERE
              ID_DOCUMENTO = @PI_ID_DOCUMENTO;

          -- GUARDAMOS EL MOVIMIENTO DEL DOCUMENTO
		  EXEC dbo.P_MANT_DOCUMENTO_MOVIMIENTO @PI_ID_DOCUMENTO, 
											   2, 
											   @PI_ID_USUARIO, 
											   @PI_ID_OFICINA, 
											   @PI_ID_CARGO, 
											   'Se envia el documento',
											   @PI_USU_MODIFICACION, 
											   @PI_IP_MODIFICACION,
											   @PO_VALIDO,
											   @PO_MENSAJE;
          IF @P_ID_TIPO = 1 BEGIN
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
                  ID_DOCUMENTO = @PI_ID_DOCUMENTO;

              -- OBTENEMOS LOS DATOS DEL PRIMER USUARIO
              SELECT
                  @P_ID_DOCUMENTO_USUARIO = DU.ID_DOCUMENTO_USUARIO,
                  @P_NRO_PRIORIDAD = DU.NRO_PRIORIDAD,
                  @P_NOMBRE_USUARIO = U.NOMBRE_USUARIO,
                  @P_DESC_OFICINA = U.DESC_OFICINA,
                  @P_DESC_CARGO = U.DESC_CARGO,
                  @P_DESC_TAREA = T.DESC_TAREA 
              FROM
                  TRA_D_DOCUMENTO_USUARIO DU
                  INNER JOIN TRA_L_TAREA T ON T.ID_TAREA = DU.ID_TAREA
                  INNER JOIN V_SEG_USUARIO U ON U.ID_USUARIO = DU.ID_USUARIO
                                             AND U.ID_OFICINA = DU.ID_OFICINA
                                             AND U.ID_CARGO = DU.ID_CARGO
              WHERE
                  ID_DOCUMENTO = @PI_ID_DOCUMENTO
                  AND FLG_CUMPLIDO = 0
                  AND NRO_PRIORIDAD = (SELECT
                                           MIN(NRO_PRIORIDAD)
                                       FROM
                                           TRA_D_DOCUMENTO_USUARIO
                                       WHERE
                                           ID_DOCUMENTO = @PI_ID_DOCUMENTO
                                           AND FLG_CUMPLIDO = 0);

              -- HABILITAMOS LOS PERMISOS PARA EL SIGUIENTE USUARIO
              UPDATE
                  TRA_D_DOCUMENTO_USUARIO
              SET
                  FLG_PERMITIDO = 1
              WHERE
                  ID_DOCUMENTO = @PI_ID_DOCUMENTO
                  AND ID_DOCUMENTO_USUARIO = @P_ID_DOCUMENTO_USUARIO
                  AND NRO_PRIORIDAD = @P_NRO_PRIORIDAD;
			  
			  SET @P_MOV = CONCAT('Se habilita el documento para la tarea de', @P_DESC_TAREA, ' a ', @P_NOMBRE_USUARIO, ' [', @P_DESC_CARGO , '] - ',  @P_DESC_OFICINA);
			  EXEC dbo.P_MANT_DOCUMENTO_MOVIMIENTO @PI_ID_DOCUMENTO, 
												   2, 
												   @PI_ID_USUARIO, 
												   @PI_ID_OFICINA, 
												   @PI_ID_CARGO, 
												   @P_MOV,
												   @PI_USU_MODIFICACION, 
												   @PI_IP_MODIFICACION,
												   @PO_VALIDO,
												   @PO_MENSAJE; 
          END 
		  ELSE 
		  BEGIN
              DELETE FROM
                  TRA_D_DOCUMENTO_USUARIO
              WHERE
                  ID_DOCUMENTO = @PI_ID_DOCUMENTO;
          END;
          SET @PO_VALIDO = 1;
      END ELSE BEGIN
          SET @P_MENSAJE = 'El documento no fue encontrado.';
      END;
      SET @PO_MENSAJE = @P_MENSAJE;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_MANT_DOCUMENTO_INSERTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_MANT_DOCUMENTO_INSERTAR]
  (
    @PI_ID_TIPO                     INT,
    @PI_ID_FLUJO                    INT,
    @PI_ID_TIPO_DOCUMENTO           NUMERIC(20),
    @PI_ID_ESTADO_DOCUMENTO         INT,
    @PI_NRO_DOCUMENTO               VARCHAR(500),
    @PI_ASUNTO                      VARCHAR(2000),
    @PI_REFERENCIA                  VARCHAR(2000),
    @PI_COD_ARCHIVO                 VARCHAR(100),
    @PI_NOMBRE_ARCHIVO              VARCHAR(200),
    @PI_EXTENSION_ARCHIVO           VARCHAR(50),
    @PI_ID_USUARIO                  NUMERIC(20),
    @PI_ID_OFICINA                  NUMERIC(20),
    @PI_ID_CARGO                    NUMERIC(20),
    @PI_FLG_PROYECTADO              INT,
    @PI_FLG_ANEXADO                 INT,
    @PI_USU_CREACION                VARCHAR(50),
    @PI_IP_CREACION                 VARCHAR(50),
    @PO_ID_DOCUMENTO                NUMERIC(20) OUT,
    @PO_VALIDO                      INT OUT,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    @PO_MENSAJE                     VARCHAR(200) OUT  -- MENSAJE DEL ERROR
  )
  AS
    DECLARE 
	@P_ID_DOCUMENTO            NUMERIC(20),
    @P_NRO_DOCUMENTO           VARCHAR(500),
    @P_CLAVE                   VARCHAR(20),
    @P_NRO_CUT                 VARCHAR(20) = '-';
  BEGIN
      IF @PI_ID_TIPO = 2 -- FISICO
	  BEGIN 
          EXEC dbo.P_CONS_CORRELATIVO @PI_ID_OFICINA, @PI_ID_TIPO_DOCUMENTO, @PI_ID_CARGO, @P_ID_DOCUMENTO, 2, @P_NRO_DOCUMENTO OUTPUT, @PO_VALIDO OUTPUT, @PO_MENSAJE OUTPUT;
      END 
	  ELSE 
	  BEGIN -- DIGITAL
          SET @P_NRO_DOCUMENTO = @PI_NRO_DOCUMENTO;
      END;

      SET @P_CLAVE = dbo.FN_GENERAR_CLAVE();

	  IF @PI_FLG_ANEXADO = 0 
	  BEGIN
          EXEC dbo.P_MANT_CUT_INSERTAR  @P_NRO_CUT OUTPUT, @PO_VALIDO OUTPUT , @PO_MENSAJE OUTPUT;
	  END

      INSERT INTO
          TRA_M_DOCUMENTO
          (
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
			FLG_ANEXADO,
            USU_CREACION,
            IP_CREACION
          )
          VALUES
          (
            @P_NRO_CUT,
            @PI_ID_TIPO,
            @PI_ID_FLUJO,
            @PI_ID_TIPO_DOCUMENTO,
            @PI_ID_ESTADO_DOCUMENTO,
            @P_NRO_DOCUMENTO,
            @PI_ASUNTO,
            @PI_REFERENCIA,
            @PI_COD_ARCHIVO,
            @P_CLAVE,
            @PI_NOMBRE_ARCHIVO,
            @PI_EXTENSION_ARCHIVO,
            @PI_ID_USUARIO,
            @PI_ID_OFICINA,
            @PI_ID_CARGO,
            @PI_FLG_PROYECTADO,
			@PI_FLG_ANEXADO,
            @PI_USU_CREACION,
            @PI_IP_CREACION
          );
	  SET @P_ID_DOCUMENTO = @@IDENTITY;

      -- SE GUARDA EL MOVIMIENTO DE CREACION
      EXEC dbo.P_MANT_DOCUMENTO_MOVIMIENTO @P_ID_DOCUMENTO, 
										   @PI_ID_ESTADO_DOCUMENTO, 
										   @PI_ID_USUARIO, 
										   @PI_ID_OFICINA, 
										   @PI_ID_CARGO, 
										   'Se crea el documento', 
										   @PI_USU_CREACION, 
										   @PI_IP_CREACION,
                                           @PO_VALIDO,
                                           @PO_MENSAJE;

      
	  /*IF @PI_ID_ESTADO_DOCUMENTO = 2 BEGIN
          PCK_MANTENIMIENTO.US@P_DOCUMENTO_MOVIMIENTO(@PI_ID_DOCUMENTO        => @P_ID_DOCUMENTO,
                                                     @PI_ID_ESTADO_DOCUMENTO => @PI_ID_ESTADO_DOCUMENTO,
                                                     @PI_ID_USUARIO          => @PI_ID_USUARIO,
                                                     @PI_ID_OFICINA          => @PI_ID_OFICINA,
                                                     @PI_ID_CARGO            => @PI_ID_CARGO,
                                                     @PI_MOVIMIENTO          => 'Se habilita el documento',
                                                     @PI_USU_CREACION        => @PI_USU_CREACION,
                                                     @PI_IP_CREACION         => @PI_IP_CREACION,
                                                     @PO_VALIDO              => @PO_VALIDO,
                                                     @PO_MENSAJE             => @PO_MENSAJE);
      END;*/

      SET @PO_ID_DOCUMENTO = @P_ID_DOCUMENTO;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_MANT_DOCUMENTO_MOVIMIENTO]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_MANT_DOCUMENTO_MOVIMIENTO]
  (
    @PI_ID_DOCUMENTO                NUMERIC(20),
    @PI_ID_ESTADO_DOCUMENTO         NUMERIC(20),
    @PI_ID_USUARIO                  NUMERIC(20),
    @PI_ID_OFICINA                  NUMERIC(20),
    @PI_ID_CARGO                    NUMERIC(20),
    @PI_MOVIMIENTO                  VARCHAR(4000),
    @PI_USU_CREACION                VARCHAR(50),
    @PI_IP_CREACION                 VARCHAR(50),
    @PO_VALIDO                      INT OUT,
    @PO_MENSAJE                     VARCHAR(200) OUT 
  )
  AS
    DECLARE
	@P_MENSAJE             VARCHAR(200) = '';
  BEGIN
      SET @PO_VALIDO = 1;
      INSERT INTO
          TRA_D_DOCUMENTO_MOVIMIENTO
          (
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
            @PI_ID_DOCUMENTO,
            @PI_ID_ESTADO_DOCUMENTO,
            @PI_ID_USUARIO,
            @PI_ID_OFICINA,
            @PI_ID_CARGO,
            @PI_MOVIMIENTO,
            @PI_USU_CREACION,
            GETDATE(),
            @PI_IP_CREACION
          );
      SET @PO_MENSAJE = @P_MENSAJE;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_MANT_DOCUMENTO_OFICINA_INSERTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_MANT_DOCUMENTO_OFICINA_INSERTAR]
  (
    @PI_ID_DOCUMENTO                NUMERIC(20),
    @PI_ID_OFICINA                  NUMERIC(20),
    @PI_ID_USUARIO                  NUMERIC(20),
    @PI_ID_CARGO                    NUMERIC(20),
    @PI_USU_CREACION                VARCHAR(50),
    @PI_IP_CREACION                 VARCHAR(50),
    @PO_VALIDO                      INT OUT,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    @PO_MENSAJE                     VARCHAR(200) OUT  -- MENSAJE DEL ERROR
  )
  AS
    DECLARE
    @P_CUENTA           INT = 0,
    @P_MENSAJE          VARCHAR(200) = '';
  BEGIN
      SET @PO_VALIDO = 0;
      SELECT
          @P_CUENTA = COUNT(*)
      FROM
          TRA_D_DOCUMENTO_OFICINA
      WHERE
          ID_DOCUMENTO = @PI_ID_DOCUMENTO
          AND ID_OFICINA = @PI_ID_OFICINA
          AND ID_USUARIO = @PI_ID_USUARIO;
      IF @P_CUENTA = 0 BEGIN
          INSERT INTO
              TRA_D_DOCUMENTO_OFICINA
              (
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
                @PI_ID_DOCUMENTO,
                @PI_ID_OFICINA,
                @PI_ID_USUARIO,
                @PI_ID_CARGO,
                @PI_USU_CREACION,
                GETDATE(),
                @PI_IP_CREACION
              );
          SET @PO_VALIDO = 1;
      END 
	  ELSE 
	  BEGIN
          SET @P_MENSAJE = 'La oficina ya se encuentra registra';
      END;
      SET @PO_MENSAJE = @P_MENSAJE;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_MANT_DOCUMENTO_USUARIO_CUMPLIO]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_MANT_DOCUMENTO_USUARIO_CUMPLIO]
  (
    @PI_ID_DOCUMENTO_USUARIO        NUMERIC(20),
    @PI_ID_DOCUMENTO                NUMERIC(20),
    @PI_ID_OFICINA                  NUMERIC(20),
    @PI_ID_USUARIO                  NUMERIC(20),
    @PI_ID_CARGO                    NUMERIC(20),
    @PI_FLG_RECHAZADO               INT,
    @PI_FLG_EDITO                   INT,
    @PI_FLG_FIRMA                   INT,
    @PI_COD_ARCHIVO                 VARCHAR(150),
    @PI_USU_MODIFICACION            VARCHAR(50),
    @PI_IP_MODIFICACION             VARCHAR(50),
    @PO_VALIDO                      INT OUT,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    @PO_MENSAJE                     VARCHAR(200) OUT  -- MENSAJE DEL ERROR
  )
  AS
    DECLARE
    @P_CUENTA                  INT = 0,
    @P_MENSAJE                 VARCHAR(200) = '',
    @P_ID_ESTADO               INT,
    @P_ID_TAREA                INT,
    @P_DESC_TAREA              VARCHAR(150),
    @P_NRO_PRIORIDAD           INT,
    @P_ID_DOCUMENTO_USUARIO    NUMERIC(20),
    @P_NOMBRE_USUARIO          VARCHAR(150),
    @P_DESC_OFICINA            VARCHAR(150),
    @P_DESC_CARGO              VARCHAR(150),
	@P_MOV                     VARCHAR(4000) = '';
  BEGIN
      SET @PO_VALIDO = 0;
      SELECT
          @P_CUENTA = COUNT(*)
      FROM
          TRA_D_DOCUMENTO_USUARIO
      WHERE
          ID_DOCUMENTO_USUARIO = @PI_ID_DOCUMENTO_USUARIO
          AND ID_DOCUMENTO = @PI_ID_DOCUMENTO
          AND ID_OFICINA = @PI_ID_OFICINA
          AND ID_USUARIO = @PI_ID_USUARIO
          AND ID_CARGO = @PI_ID_CARGO
          AND FLG_CUMPLIDO = 0;
      INSERT INTO LOGG VALUES(@PI_ID_DOCUMENTO_USUARIO);
      INSERT INTO LOGG VALUES(@PI_ID_DOCUMENTO);
      INSERT INTO LOGG VALUES(@PI_ID_OFICINA);
      INSERT INTO LOGG VALUES(@PI_ID_CARGO);
      IF @P_CUENTA != 0 BEGIN

          SELECT
              @P_ID_TAREA = DU.ID_TAREA,
              @P_NRO_PRIORIDAD = DU.NRO_PRIORIDAD
          FROM
              TRA_D_DOCUMENTO_USUARIO DU
          WHERE
              ID_DOCUMENTO_USUARIO = @PI_ID_DOCUMENTO_USUARIO
              AND ID_DOCUMENTO = @PI_ID_DOCUMENTO
              AND ID_OFICINA = @PI_ID_OFICINA
              AND ID_USUARIO = @PI_ID_USUARIO
              AND ID_CARGO = @PI_ID_CARGO
              AND FLG_CUMPLIDO = 0;

          UPDATE
              TRA_D_DOCUMENTO_USUARIO
          SET
              FLG_CUMPLIDO = 1,
              FEC_CUMPLIDO = GETDATE(),
              FLG_PERMITIDO = 0,
              FLG_RECHAZADO = @PI_FLG_RECHAZADO,
              FLG_EDITO = @PI_FLG_EDITO,
              USU_MODIFICACION = @PI_USU_MODIFICACION,
              FEC_MODIFICACION = GETDATE(),
              IP_MODIFICACION = @PI_IP_MODIFICACION
          WHERE
              ID_DOCUMENTO_USUARIO = @PI_ID_DOCUMENTO_USUARIO
              AND ID_DOCUMENTO = @PI_ID_DOCUMENTO
              AND ID_OFICINA = @PI_ID_OFICINA
              AND ID_USUARIO = @PI_ID_USUARIO
              AND ID_CARGO = @PI_ID_CARGO;



          -- OBTENEMOS EL ESTADO SEGUN LA TAREA
          IF @P_ID_TAREA = 4 
		  BEGIN -- REVISAR
              SET @P_ID_ESTADO = 6;
          END 
		  ELSE IF @P_ID_TAREA = 3 
		  BEGIN -- APROBAR
              SET @P_ID_ESTADO = 7;
          END   
		  ELSE IF @P_ID_TAREA = 2 
		  BEGIN -- VISAR
              SET @P_ID_ESTADO = 8;
          END 
		  ELSE IF @P_ID_TAREA = 1 
		  BEGIN -- FIRMAR
              SET @P_ID_ESTADO = 9;
          END;

          -- CONTAMOS LOS USUARIOS QUE QUEDAN PENDIENTES
          SELECT
              @P_CUENTA = COUNT(*)
          FROM
              TRA_D_DOCUMENTO_USUARIO
          WHERE
              ID_DOCUMENTO_USUARIO != @PI_ID_DOCUMENTO_USUARIO
              AND ID_DOCUMENTO = @PI_ID_DOCUMENTO
              AND FLG_CUMPLIDO = 0;

          IF @PI_FLG_RECHAZADO = 1 BEGIN -- SI LO OBSERVA O LO MANDA A REHACER
              IF @P_CUENTA != 0 BEGIN
                  SET @P_ID_ESTADO = 5;
              END ELSE BEGIN
                  SET @P_ID_ESTADO = 3;
              END;
          END ELSE BEGIN IF @PI_FLG_RECHAZADO = 2 BEGIN
              SET @P_ID_ESTADO = 3;
          END;
          END;

          -- ACTUALIZAMOS EL DOCUMENTO
          UPDATE
              TRA_M_DOCUMENTO
          SET
              COD_ARCHIVO = (CASE WHEN @PI_FLG_EDITO = 1 THEN @PI_COD_ARCHIVO  ELSE  COD_ARCHIVO END),
              COD_ARCHIVO_FIRMADO = (CASE WHEN @PI_FLG_FIRMA = 1 THEN @PI_COD_ARCHIVO ELSE COD_ARCHIVO_FIRMADO END),
              ID_ESTADO_DOCUMENTO = @P_ID_ESTADO,
              FLG_FIRMA = @PI_FLG_FIRMA,
              FEC_FIRMA = (CASE WHEN @PI_FLG_FIRMA = 1 THEN GETDATE() ELSE FEC_FIRMA END)
          WHERE
              ID_DOCUMENTO = @PI_ID_DOCUMENTO;

		  EXEC dbo.P_MANT_DOCUMENTO_MOVIMIENTO @PI_ID_DOCUMENTO, 
											@P_ID_ESTADO, 
											@PI_ID_USUARIO, 
											@PI_ID_OFICINA, 
											@PI_ID_CARGO, 
                                            'Se actualizó la atención asignada del documento',
											@PI_USU_MODIFICACION, 
											@PI_IP_MODIFICACION,
											@PO_VALIDO,
											@PO_MENSAJE; 

          /*PCK_MANTENIMIENTO.US@P_DOCUMENTO_MOVIMIENTO(@PI_ID_DOCUMENTO        => @PI_ID_DOCUMENTO,
                                                     @PI_ID_ESTADO_DOCUMENTO => @P_ID_ESTADO,
                                                     @PI_ID_USUARIO          => @PI_ID_USUARIO,
                                                     @PI_ID_OFICINA          => @PI_ID_OFICINA,
                                                     @PI_ID_CARGO            => @PI_ID_CARGO,
                                                     @PI_MOVIMIENTO          => 'Se actualiz� la atenci�n asignada del documento',
                                                     @PI_USU_CREACION        => @PI_USU_MODIFICACION,
                                                     @PI_IP_CREACION         => @PI_IP_MODIFICACION,
                                                     @PO_VALIDO              => @PO_VALIDO,
                                                     @PO_MENSAJE             => @PO_MENSAJE);*/



          IF @PI_FLG_RECHAZADO = 2 BEGIN -- SI MANDO A REHACER EL DOCUMENTO
		  EXEC dbo.P_MANT_DOCUMENTO_MOVIMIENTO @PI_ID_DOCUMENTO, 
											@P_ID_ESTADO, 
											@PI_ID_USUARIO, 
											@PI_ID_OFICINA, 
											@PI_ID_CARGO, 
                                            'Se devuelve el documento',
											@PI_USU_MODIFICACION, 
											@PI_IP_MODIFICACION,
											@PO_VALIDO,
											@PO_MENSAJE; 
              /*PCK_MANTENIMIENTO.US@P_DOCUMENTO_MOVIMIENTO(@PI_ID_DOCUMENTO        => @PI_ID_DOCUMENTO,
                                                         @PI_ID_ESTADO_DOCUMENTO => @P_ID_ESTADO,
                                                         @PI_ID_USUARIO          => @PI_ID_USUARIO,
                                                         @PI_ID_OFICINA          => @PI_ID_OFICINA,
                                                         @PI_ID_CARGO            => @PI_ID_CARGO,
                                                         @PI_MOVIMIENTO          => 'Se devuelve el documento',
                                                         @PI_USU_CREACION        => @PI_USU_MODIFICACION,
                                                         @PI_IP_CREACION         => @PI_IP_MODIFICACION,
                                                         @PO_VALIDO              => @PO_VALIDO,
                                                         @PO_MENSAJE             => @PO_MENSAJE);*/
          END;
          -- SI NO ENCONTRAMOS MAS USUARIOS, FINALIZAMOS LA ATENCION DEL DOCUMENTO
          IF @P_CUENTA = 0 BEGIN
              -- SI EL USUARIO FINAL NO RECHAZO EL DOCUMENTO, FINALIZA
              IF @PI_FLG_RECHAZADO != 1 AND @PI_FLG_RECHAZADO != 2 BEGIN
                  -- SE FINALIZA EL DOCUMENTO
                  SET @P_ID_ESTADO = 10;
                  UPDATE
                      TRA_M_DOCUMENTO
                  SET
                      ID_ESTADO_DOCUMENTO = @P_ID_ESTADO
                  WHERE
                      ID_DOCUMENTO = @PI_ID_DOCUMENTO;

				  EXEC dbo.P_MANT_DOCUMENTO_MOVIMIENTO @PI_ID_DOCUMENTO, 
													@P_ID_ESTADO, 
													@PI_ID_USUARIO, 
													@PI_ID_OFICINA, 
													@PI_ID_CARGO, 
													'Se finaliza el documento',
													@PI_USU_MODIFICACION, 
													@PI_IP_MODIFICACION,
													@PO_VALIDO,
													@PO_MENSAJE; 

                  /*PCK_MANTENIMIENTO.US@P_DOCUMENTO_MOVIMIENTO(@PI_ID_DOCUMENTO        => @PI_ID_DOCUMENTO,
                                                             @PI_ID_ESTADO_DOCUMENTO => @P_ID_ESTADO,
                                                             @PI_ID_USUARIO          => @PI_ID_USUARIO,
                                                             @PI_ID_OFICINA          => @PI_ID_OFICINA,
                                                             @PI_ID_CARGO            => @PI_ID_CARGO,
                                                             @PI_MOVIMIENTO          => 'Se finaliza el documento',
                                                             @PI_USU_CREACION        => @PI_USU_MODIFICACION,
                                                             @PI_IP_CREACION         => @PI_IP_MODIFICACION,
                                                             @PO_VALIDO              => @PO_VALIDO,
                                                             @PO_MENSAJE             => @PO_MENSAJE);*/
              END;

          END ELSE BEGIN
              IF @PI_FLG_RECHAZADO != 2 BEGIN -- SI NO MANDO A REHACER EL DOCUMENTO
                  -- OBTENEMOS LOS DATOS DEL SIGUIENTE USUARIO
                  SELECT
                      @P_ID_DOCUMENTO_USUARIO = DU.ID_DOCUMENTO_USUARIO,
                      @P_NRO_PRIORIDAD = DU.NRO_PRIORIDAD,
                      @P_NOMBRE_USUARIO = U.NOMBRE_USUARIO,
                      @P_DESC_OFICINA = U.DESC_OFICINA,
                      @P_DESC_CARGO = U.DESC_CARGO,
                      @P_DESC_TAREA = T.DESC_TAREA
                  FROM
                      TRA_D_DOCUMENTO_USUARIO DU
                      INNER JOIN TRA_L_TAREA T ON T.ID_TAREA = DU.ID_TAREA
                      INNER JOIN V_SEG_USUARIO U ON U.ID_USUARIO = DU.ID_USUARIO
                                                 AND U.ID_OFICINA = DU.ID_OFICINA
                                                 AND U.ID_CARGO = DU.ID_CARGO
                  WHERE
                      ID_DOCUMENTO_USUARIO != @PI_ID_DOCUMENTO_USUARIO
                      AND ID_DOCUMENTO = @PI_ID_DOCUMENTO
                      AND FLG_CUMPLIDO = 0
                      AND NRO_PRIORIDAD = (SELECT
                                               MIN(NRO_PRIORIDAD)
                                           FROM
                                               TRA_D_DOCUMENTO_USUARIO
                                           WHERE
                                               ID_DOCUMENTO = @PI_ID_DOCUMENTO
                                               AND FLG_CUMPLIDO = 0);
                  -- HABILITAMOS LOS PERMISOS PARA EL SIGUIENTE USUARIO
                  UPDATE
                      TRA_D_DOCUMENTO_USUARIO
                  SET
                      FLG_PERMITIDO = 1
                  WHERE
                      ID_DOCUMENTO = @PI_ID_DOCUMENTO
                      AND ID_DOCUMENTO_USUARIO = @P_ID_DOCUMENTO_USUARIO
                      AND NRO_PRIORIDAD = @P_NRO_PRIORIDAD;
				  
				  SET @P_MOV = CONCAT('Se habilita el documento para la tarea de ', @P_DESC_TAREA, ' a ' , @P_NOMBRE_USUARIO , ' [' , @P_DESC_CARGO , '] - ',  @P_DESC_OFICINA);
				  EXEC dbo.P_MANT_DOCUMENTO_MOVIMIENTO @PI_ID_DOCUMENTO, 
													@P_ID_ESTADO, 
													@PI_ID_USUARIO, 
													@PI_ID_OFICINA, 
													@PI_ID_CARGO, 
													@P_MOV,
													--CONCAT('Se habilita el documento para la tarea de ' , @P_DESC_TAREA , ' a ' , @P_NOMBRE_USUARIO , ' [' , @P_DESC_CARGO , '] - ' ,  @P_DESC_OFICINA),
													@PI_USU_MODIFICACION, 
													@PI_IP_MODIFICACION,
													@PO_VALIDO,
													@PO_MENSAJE; 

                  /*PCK_MANTENIMIENTO.US@P_DOCUMENTO_MOVIMIENTO(@PI_ID_DOCUMENTO        => @PI_ID_DOCUMENTO,
                                                             @PI_ID_ESTADO_DOCUMENTO => @P_ID_ESTADO,
                                                             @PI_ID_USUARIO          => @PI_ID_USUARIO,
                                                             @PI_ID_OFICINA          => @PI_ID_OFICINA,
                                                             @PI_ID_CARGO            => @PI_ID_CARGO,
                                                             @PI_MOVIMIENTO          => 'Se habilit� el documento para la tarea de ' + @P_DESC_TAREA + ' a ' + @P_NOMBRE_USUARIO + ' [' + @P_DESC_CARGO + '] - ' +  @P_DESC_OFICINA,
                                                             @PI_USU_CREACION        => @PI_USU_MODIFICACION,
                                                             @PI_IP_CREACION         => @PI_IP_MODIFICACION,
                                                             @PO_VALIDO              => @PO_VALIDO,
                                                             @PO_MENSAJE             => @PO_MENSAJE);*/

              END;
          END;
          SET @PO_VALIDO = 1;
      END 
	  ELSE 
	  BEGIN
          SET @P_MENSAJE = 'No se encontró el documento para su atención.';
      END;
      SET @PO_MENSAJE = @P_MENSAJE;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_MANT_DOCUMENTO_USUARIO_INSERTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_MANT_DOCUMENTO_USUARIO_INSERTAR]
  (
    @PI_ID_DOCUMENTO                  NUMERIC(20),
    @PI_ID_USUARIO                    NUMERIC(20),
    @PI_ID_OFICINA                    NUMERIC(20),
    @PI_ID_CARGO                      NUMERIC(20),
    @PI_ID_TAREA                      NUMERIC(20),
    @PI_NRO_PRIORIDAD                 INT,
    @PI_NOMBRE_USUARIO                VARCHAR(150),
    @PI_NOMBRE_OFICINA                VARCHAR(150),
    @PI_FLG_EDITAR                    INT,
    @PI_FLG_PERMITIDO                 INT,
    @PI_USU_CREACION                  VARCHAR(50),
    @PI_IP_CREACION                   VARCHAR(50),
    @PO_VALIDO                        INT OUT,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
    @PO_MENSAJE                       VARCHAR(200) OUT  -- MENSAJE DEL ERROR
  )
  AS
    DECLARE
	@P_CUENTA                  INT = 0,
    @P_MENSAJE                 VARCHAR(200) = '',
    @P_FLG_PERMITIDO           VARCHAR(200) = '0',
    @P_ID_ESTADO               INT,
    @P_DESC_TAREA              VARCHAR(150) = '',
    @P_NOMBRE_USUARIO          VARCHAR(150) = '',
    @P_DESC_OFICINA            VARCHAR(150) = '',
    @P_DESC_CARGO              VARCHAR(150) = '',
	@P_MOV                     VARCHAR(4000) = '';
  BEGIN
      -- PREGUNTAMOS SI EXISTE EL USUARIO
      SET @PO_VALIDO = 0;
      SELECT
          @P_CUENTA = COUNT(*)
      FROM
          TRA_D_DOCUMENTO_USUARIO DU
      WHERE
          DU.ID_USUARIO = @PI_ID_USUARIO
          AND DU.ID_DOCUMENTO = @PI_ID_DOCUMENTO
          AND DU.ID_OFICINA = @PI_ID_OFICINA
          AND DU.ID_CARGO = @PI_ID_CARGO
          AND DU.ID_TAREA = @PI_ID_TAREA;

      -- SI NO EXISTE EL USUARIO, SE AGREGA
      IF @P_CUENTA = 0 
	  BEGIN
          SELECT
              @P_CUENTA = COUNT(*)
          FROM
              TRA_D_DOCUMENTO_USUARIO DU
          WHERE
              DU.ID_DOCUMENTO = @PI_ID_DOCUMENTO
              AND DU.FLG_PERMITIDO = 1;

          IF @P_CUENTA = 0 
		  BEGIN
              SET @P_FLG_PERMITIDO = '1';
          END;

		  SELECT
		      @P_ID_ESTADO = D.ID_ESTADO_DOCUMENTO
	      FROM
		      TRA_M_DOCUMENTO D
		  WHERE
			  D.ID_DOCUMENTO = @PI_ID_DOCUMENTO;

          -- SI TIENE ESTADO ENVIADO
          IF @P_ID_ESTADO = 2 
		  BEGIN
		      -- OBTENEMOS LOS DATOS DEL PRIMER USUARIO
			SELECT
				@P_NOMBRE_USUARIO = U.NOMBRE_USUARIO,
				@P_DESC_OFICINA = U.DESC_OFICINA,
				@P_DESC_CARGO = U.DESC_CARGO,
				@P_DESC_TAREA = T.DESC_TAREA,
				@P_ID_ESTADO = D.ID_ESTADO_DOCUMENTO 
			FROM
				TRA_M_DOCUMENTO D
				INNER JOIN TRA_L_TAREA T ON T.ID_TAREA = @PI_ID_TAREA
				INNER JOIN V_SEG_USUARIO U ON U.ID_USUARIO = @PI_ID_USUARIO
											AND U.ID_OFICINA = @PI_ID_OFICINA
											AND U.ID_CARGO = @PI_ID_CARGO
			WHERE
				ID_DOCUMENTO = @PI_ID_DOCUMENTO;
				  
			SET @P_MOV = CONCAT('Se habilita el documento para la tarea de ', @P_DESC_TAREA, ' a ' , @P_NOMBRE_USUARIO , ' [' , @P_DESC_CARGO , '] - ',  @P_DESC_OFICINA);
            -- GUARDAMOS EL MOVIMIENTO PARA EL USUARIO
			EXEC dbo.P_MANT_DOCUMENTO_MOVIMIENTO @PI_ID_DOCUMENTO, 
												@P_ID_ESTADO, 
												@PI_ID_USUARIO, 
												@PI_ID_OFICINA, 
												@PI_ID_CARGO, 
                                                @P_MOV,
												@PI_USU_CREACION, 
												@PI_IP_CREACION,
												@PO_VALIDO,
												@PO_MENSAJE; 
          END;
     
		  INSERT INTO
        TRA_D_DOCUMENTO_USUARIO
        (
        --ID_DOCUMENTO_USUARIO,
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
        -- SEQ_ID_DOCUMENTO_USUARIO.NEXTVAL,
        @PI_ID_USUARIO,
        @PI_ID_DOCUMENTO,
        @PI_ID_OFICINA,
        @PI_ID_CARGO,
        @PI_ID_TAREA,
        @PI_NRO_PRIORIDAD,
        @P_FLG_PERMITIDO,
        @PI_NOMBRE_USUARIO,
        @PI_NOMBRE_OFICINA,
        @PI_FLG_EDITAR,
        @PI_USU_CREACION,
        GETDATE(),
        @PI_IP_CREACION
        );
          SET @PO_VALIDO = 1;
          
	  END 
	  ELSE 
	  BEGIN
          SET @P_MENSAJE = 'El usuario ya se encuentra agregado';
      END;
      SET @PO_MENSAJE = @P_MENSAJE;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_MANTE_CUT_INSERTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_MANTE_CUT_INSERTAR]
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
/****** Object:  StoredProcedure [dbo].[P_SEG_ENTIDAD_LISTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_SEG_ENTIDAD_LISTAR]
  AS
  BEGIN
    SELECT
        E.ID_ENTIDAD,
        E.DESC_ENTIDAD
    FROM
        TRA_L_ENTIDADES E
    WHERE
        E.FLG_ESTADO = 1;
  END;

--END PCK_SEG_CONSULTA;
--/


GO
/****** Object:  StoredProcedure [dbo].[P_SEG_OFICINA_LISTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_SEG_OFICINA_LISTAR]
  (
    @PI_CRITERIO    VARCHAR(150)
  )
  AS
  BEGIN
    SELECT
        O.ID_OFICINA,
        O.DESC_OFICINA,
        O.SIGLA_OFICINA SIGLAS
    FROM
        SEG_M_OFICINA O
    WHERE
        CONCAT(LOWER(O.SIGLA_OFICINA), LOWER(O.DESC_OFICINA)) LIKE
        '%' + LOWER(@PI_CRITERIO) + '%';
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_SEG_USUARIO_CARGO_LISTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--END PCK_MANTENIMIENTO;
--/

--prompt
--prompt Creating package body PCK_SEG_CONSULTA
--prompt ======================================
--prompt
--CREATE OR REPLACE PACKAGE BODY TRAMITE.PCK_SEG_CONSULTA  AS

  /*====================================================================================
          Objetivo            : -
          Autor               : ANA  - Richard Carbajal Garcia
          Fecha Creacion      : 20/04/2021
          Comentarios         : Sistema de Gesti�n
  =====================================================================================*/
  CREATE PROCEDURE [dbo].[P_SEG_USUARIO_CARGO_LISTAR]
  (
    @PI_ID_SISTEMA                 NUMERIC(20),
    @PI_ID_USUARIO                 NUMERIC(20),
    @PI_ID_OFICINA                 NUMERIC(20)
  )
  AS
  BEGIN
    SELECT
        UC.ID_USUARIO_CARGO,
        UC.ID_USUARIO,
        UC.ID_CARGO,
        UPPER(C.DESC_CARGO) + ' - ' + UPPER(P.DESC_PERFIL) DESC_CARGO,
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
        UP.ID_SISTEMA = @PI_ID_SISTEMA
        AND UC.ID_OFICINA = @PI_ID_OFICINA
        AND UC.ID_USUARIO = @PI_ID_USUARIO
    ORDER BY
        C.DESC_CARGO ASC;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_SEG_USUARIO_JEFE_LISTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_SEG_USUARIO_JEFE_LISTAR] --ACTUALIZADO
  (
    @PI_ID_OFICINA                   NUMERIC(20),
    @PI_USUARIO                      VARCHAR(150)
  )
  AS
  BEGIN
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
        AND UC.ID_OFICINA = @PI_ID_OFICINA;
  END;

GO
/****** Object:  StoredProcedure [dbo].[P_SEG_USUARIO_LISTAR]    Script Date: 06/05/2021 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[P_SEG_USUARIO_LISTAR]
  (
    @PI_ID_SISTEMA       NUMERIC(20),
    @PI_ID_OFICINA       NUMERIC(20),
    @PI_COD_USUARIO      VARCHAR(100)
  )
  AS
  BEGIN
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
        INNER JOIN SEG_R_USUARIO_PERFIL UP ON UP.ID_USUARIO = VU.ID_USUARIO AND UP.ID_SISTEMA = @PI_ID_SISTEMA
        --INNER JOIN SEG_M_CARGO C ON C.ID_CARGO = UP.ID_CARGO
        INNER JOIN SEG_M_OFICINA VO  ON VO.ID_OFICINA = UP.ID_OFICINA
    WHERE
        VO.ID_OFICINA = @PI_ID_OFICINA
        AND CONCAT(LOWER(VU.NOMBRE_USUARIO), LOWER(VU.COD_USUARIO)) LIKE
            '%' + LOWER(@PI_COD_USUARIO) + '%';
  END;

GO
