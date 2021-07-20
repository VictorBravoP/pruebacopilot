USE [TRAMITE]
GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_CABECERA_ACTUALIZAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_CABECERA_ACTUALIZAR](
  @PI_ID_TIPO_DOCUMENTO     INT,
  @PI_ID_CABECERA         INT ,
  @PI_NOMBRE_ANIO     VARCHAR(3000),
  @PI_NOMBRE_DECENIO     VARCHAR(3000),
  @PI_CODIGO_IMAGEN     VARCHAR(3000),
  @PI_NOMBRE_IMAGEN     VARCHAR(3000),
  @PI_EXTENSION_IMAGEN     VARCHAR(3000),
  @PI_FLG_POSICION       VARCHAR(200),
  @PI_IP_MODIFICACION       VARCHAR(200),
  @PI_USUARIO_MODIFICACION  VARCHAR(200),
  @PO_VALIDO            INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE           VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
DECLARE @P_MENSAJE VARCHAR(200)= '';
BEGIN

		SET @P_MENSAJE =(  
	      SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.NOMBRE_ANIO) = UPPER(RTRIM(@PI_NOMBRE_ANIO )) THEN
                      'La descripción ya existe'
			  WHEN UPPER(U.ID_TIPO_DOCUMENTO ) = UPPER(RTRIM(@PI_ID_TIPO_DOCUMENTO )) THEN
                      'El tipo de documento ya existe'
                 END 
            FROM
                TRA_M_CABECERA U
            WHERE
                (
                 UPPER(U.NOMBRE_ANIO) = UPPER(RTRIM(@PI_NOMBRE_ANIO ))	
				OR  UPPER(U.ID_TIPO_DOCUMENTO ) = UPPER(RTRIM(@PI_ID_TIPO_DOCUMENTO ))		
                )
				 AND U.ID_CABECERA != @PI_ID_CABECERA
            ),'-') ); 


        IF @P_MENSAJE = '-' 
		  BEGIN 
		 IF @PI_CODIGO_IMAGEN = '-' 
		   BEGIN 
		   	    UPDATE
               TRA_M_CABECERA
            SET
			    ID_TIPO_DOCUMENTO = @PI_ID_TIPO_DOCUMENTO, 
                NOMBRE_ANIO = RTRIM(@PI_NOMBRE_ANIO),
				NOMBRE_DECENIO = @PI_NOMBRE_DECENIO, 
				FLG_POSICION = @PI_FLG_POSICION, 
                USU_MODIFICACION = @PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = GETDATE(),
                IP_MODIFICACION = @PI_IP_MODIFICACION
            WHERE
                ID_CABECERA = @PI_ID_CABECERA;

            
			END 
			ELSE 
			 BEGIN
			UPDATE
               TRA_M_CABECERA
            SET
			    ID_TIPO_DOCUMENTO = @PI_ID_TIPO_DOCUMENTO, 
                NOMBRE_ANIO = RTRIM(@PI_NOMBRE_ANIO),
				NOMBRE_DECENIO = @PI_NOMBRE_DECENIO, 
				CODIGO_IMAGEN = @PI_CODIGO_IMAGEN, 
				NOMBRE_IMAGEN =   @PI_NOMBRE_IMAGEN , 
				EXTENSION_IMAGEN =   @PI_EXTENSION_IMAGEN,
                USU_MODIFICACION = @PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = GETDATE(),
                IP_MODIFICACION = @PI_IP_MODIFICACION
            WHERE
                ID_CABECERA = @PI_ID_CABECERA;
		
		  END 
           SET @PO_VALIDO  = 1;
		  END
        ELSE
		BEGIN 
           SET @PO_VALIDO  = 0;
        END 
    SET @PO_MENSAJE = @P_MENSAJE;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_CABECERA_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=====================================================================================
   Objetivo            : Elimina cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_CABECERA_ELIMINAR](
  @PI_ID_CABECERA         INT,
  @PO_VALIDO          INT  OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM TRA_M_CABECERA
    WHERE ID_CABECERA = @PI_ID_CABECERA;
   SET  @PO_VALIDO =1;
END;




GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_CABECERA_ESTADO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_CABECERA_ESTADO](
  @PI_ID_CABECERA         INT,
  @PI_FLG_ESTADO        INT,
  @PI_IP_MODIFICACION   VARCHAR(200),
  @PI_USUARIO_MODIFICACION  VARCHAR(200),
  @PO_VALIDO          INT  OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
  UPDATE TRA_M_CABECERA SET
           FLG_ESTADO = 0

    UPDATE TRA_M_CABECERA SET
           FLG_ESTADO = @PI_FLG_ESTADO,
           USU_MODIFICACION= @PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=@PI_IP_MODIFICACION,
           FEC_MODIFICACION=GETDATE()
    WHERE ID_CABECERA = @PI_ID_CABECERA;
  SET  @PO_VALIDO =1;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_CABECERA_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_CABECERA_INSERTAR](
  @PI_ID_TIPO_DOCUMENTO     INT,
  @PI_NOMBRE_ANIO     VARCHAR(3000),
  @PI_NOMBRE_DECENIO     VARCHAR(3000),
  @PI_CODIGO_IMAGEN     VARCHAR(3000),
  @PI_NOMBRE_IMAGEN     VARCHAR(3000),
  @PI_EXTENSION_IMAGEN     VARCHAR(3000),
  @PI_FLG_POSICION       VARCHAR(200),
  @PI_IP_CREACION       VARCHAR(200),
  @PI_USUARIO_CREACION  VARCHAR(200),
  @PO_VALIDO            INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE           VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
DECLARE @P_MENSAJE   VARCHAR(200)= '', 
        @COUNT INT , 
		@FLAG_ESTADO INT
BEGIN
   SET @P_MENSAJE = '';


	 SET @P_MENSAJE = (
        SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.NOMBRE_ANIO ) = UPPER(RTRIM(@PI_NOMBRE_ANIO )) THEN
                      'La descripción ya existe'
			     WHEN UPPER(U.ID_TIPO_DOCUMENTO ) = UPPER(RTRIM(@PI_ID_TIPO_DOCUMENTO )) THEN
                      'El tipo de documento ya existe'

                 END 
            FROM
                TRA_M_CABECERA U
            WHERE
                (
                 UPPER(U.NOMBRE_ANIO ) = UPPER(RTRIM(@PI_NOMBRE_ANIO ))
				 OR  UPPER(U.ID_TIPO_DOCUMENTO ) = UPPER(RTRIM(@PI_ID_TIPO_DOCUMENTO ))
                )
            ),'-') ); 


        SET @COUNT = ( SELECT COUNT(*) FROM TRA_M_CABECERA); 
		  IF @COUNT > 0 
		   BEGIN 
		   SET @FLAG_ESTADO = 0; 
		   END 
		    ELSE 
			 BEGIN 
		   SET @FLAG_ESTADO = 1; 
		   END 
		 


        IF @P_MENSAJE = '-' 
		  BEGIN 
            INSERT INTO
               TRA_M_CABECERA
                (
				  ID_TIPO_DOCUMENTO,
                  NOMBRE_ANIO,
				  NOMBRE_DECENIO,
				  CODIGO_IMAGEN,
				  NOMBRE_IMAGEN,
				  EXTENSION_IMAGEN,
				  FLG_POSICION,
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
				 @PI_ID_TIPO_DOCUMENTO,
                  @PI_NOMBRE_ANIO,
				  @PI_NOMBRE_DECENIO,
                  @PI_CODIGO_IMAGEN,    
                  @PI_NOMBRE_IMAGEN,   
				  @PI_EXTENSION_IMAGEN,
				  @PI_FLG_POSICION,
                  @FLAG_ESTADO ,
                  @PI_USUARIO_CREACION,
                  GETDATE(),
                  @PI_IP_CREACION
                );

            SET @PO_VALIDO = 1;
			END 
        ELSE
		BEGIN 
            SET @PO_VALIDO  = 0;
        END 
   SET  @PO_MENSAJE = @P_MENSAJE;

END;






GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_CABECERA_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[P_ADMIN_CABECERA_LISTAR](
  ----PO_CURSOR  OUT CURSOR_TYPE,
  @PI_NOMBRE_ANIO VARCHAR(500),
  @PI_FLG_ESTADO INT

)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_CABECERA,
			V.ID_TIPO_DOCUMENTO,
			D.DESC_TIPO_DOCUMENTO, 
            V.NOMBRE_ANIO, 
			V.NOMBRE_DECENIO, 
		    V.CODIGO_IMAGEN, 
			V.NOMBRE_IMAGEN,
			V.EXTENSION_IMAGEN,  
			(CASE V.FLG_POSICION 
			WHEN '1' THEN 'Izquierda'
			WHEN '2' THEN 'Centro'
			WHEN '3' THEN 'Derecha'
			END) POSICION,


            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 103) AS FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR, V.FEC_MODIFICACION, 103)  AS FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRA_M_CABECERA V 
			LEFT JOIN TRA_L_TIPO_DOCUMENTO D ON D.ID_TIPO_DOCUMENTO = V.ID_TIPO_DOCUMENTO
        WHERE
             UPPER(V.NOMBRE_ANIO) LIKE '%' +ISNULL(@PI_NOMBRE_ANIO,V.NOMBRE_ANIO) +'%'
            AND V.FLG_ESTADO = ISNULL(@PI_FLG_ESTADO,V.FLG_ESTADO)
            
        ORDER BY V.ID_CABECERA DESC;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_CABECERAUNO_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_CABECERAUNO_LISTAR](
  @PI_ID_CABECERA INT

)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT  
            V.ID_CABECERA,
	        V.ID_TIPO_DOCUMENTO,
            V.NOMBRE_ANIO, 
			V.NOMBRE_DECENIO, 
		    V.CODIGO_IMAGEN, 
			V.NOMBRE_IMAGEN,
			V.EXTENSION_IMAGEN    ,
			V.FLG_POSICION POSICION 
        FROM
            TRA_M_CABECERA V 
             
        WHERE
           V.ID_CABECERA = @PI_ID_CABECERA;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_CAMPO_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_CAMPO_LISTAR]
  --PO_CURSOR  OUT CURSOR_TYPE

AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_CAMPO,
            v.ID_CAMPO_PADRE,       
            V.DESC_CAMPO,  
            V.CODIGO_CAMPO, 
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 101) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRA_L_CAMPO V
             
        ORDER BY V.ID_CAMPO ASC;
END;




GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_CARGO_ACTUALIZAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[P_ADMIN_CARGO_ACTUALIZAR](
  @PI_ID_CARGO         INT,
  @PI_DESC_CARGO        VARCHAR(200),
  @PI_IP_MODIFICACION      VARCHAR(200),
  @PI_USUARIO_MODIFICACION VARCHAR(200),
  @PO_VALIDO           INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE          VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
DECLARE @P_MENSAJE VARCHAR(200)= '';
BEGIN
    SET @P_MENSAJE =(  
	      SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_CARGO) = UPPER(RTRIM(@PI_DESC_CARGO )) THEN
                      'La descripción ya existe'
                 END 
            FROM
                SEG_M_CARGO U
            WHERE
                (
                 UPPER(U.DESC_CARGO) = UPPER(RTRIM(@PI_DESC_CARGO ))
				 AND U.ID_CARGO != @PI_ID_CARGO
                )
            ),'-') ); 

        IF @P_MENSAJE = '-' 
		 BEGIN
            UPDATE
               SEG_M_CARGO
            SET
                DESC_CARGO = RTRIM(@PI_DESC_CARGO),
                USU_MODIFICACION = @PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = GETDATE(),
                IP_MODIFICACION = @PI_IP_MODIFICACION
            WHERE
                ID_CARGO = @PI_ID_CARGO;

           SET @PO_VALIDO  = 1;
		   END 
        ELSE
		 BEGIN
            SET @PO_VALIDO  = 0;
	    END
    SET @PO_MENSAJE = @P_MENSAJE;
END;

GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_CARGO_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=====================================================================================
   Objetivo            : Elimina cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_CARGO_ELIMINAR](
  @PI_ID_CARGO         INT,
  @PO_VALIDO          INT  OUT    -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM SEG_M_CARGO
    WHERE ID_CARGO = @PI_ID_CARGO;
   SET @PO_VALIDO =1;
END;




GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_CARGO_ESTADO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_CARGO_ESTADO](
  @PI_ID_CARGO         INT,
  @PI_FLG_ESTADO        CHAR(1),
  @PI_IP_MODIFICACION   VARCHAR(200),
  @PI_USUARIO_MODIFICACION VARCHAR(200),
  @PO_VALIDO            INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE SEG_M_CARGO SET
           FLG_ESTADO = @PI_FLG_ESTADO,
           USU_MODIFICACION= @PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=@PI_IP_MODIFICACION,
           FEC_MODIFICACION=GETDATE()
    WHERE ID_CARGO = @PI_ID_CARGO;
    SET @PO_VALIDO =1;
END;




GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_CARGO_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[P_ADMIN_CARGO_INSERTAR](
  @PI_DESC_CARGO      VARCHAR(200),
  @PI_IP_CREACION       VARCHAR(200),
  @PI_USU_CREACION  VARCHAR(200),
  @PO_VALIDO           INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE          VARCHAR OUT  -- MENSAJE DEL ERROR
)
AS
DECLARE @P_MENSAJE   VARCHAR(200) 
BEGIN
    SET @P_MENSAJE = '';
	SET @P_MENSAJE = (
        SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_CARGO) = UPPER(RTRIM(@PI_DESC_CARGO )) THEN
                      'La descripción ya existe'
                 END 
            FROM
                SEG_M_CARGO U
            WHERE
                (
                 UPPER(U.DESC_CARGO) = UPPER(RTRIM(@PI_DESC_CARGO ))
                )
            ),'-') ); 
        IF @P_MENSAJE = '-' 
		 BEGIN

            INSERT INTO
                SEG_M_CARGO
                (
                  DESC_CARGO,
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  @PI_DESC_CARGO,
                  1,
                  @PI_USU_CREACION,
                  GETDATE(),
                  @PI_IP_CREACION
                );

           SET  @PO_VALIDO  = 1;
		   END 
        ELSE
		BEGIN
            SET @PO_VALIDO  = 0;
        END; 
     SET @PO_MENSAJE = @P_MENSAJE;

END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_CARGO_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_CARGO_LISTAR](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_DESC_CARGO VARCHAR(200),
  @PI_FLG_ESTADO INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_CARGO,
            V.DESC_CARGO,  
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 103) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 103) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            SEG_M_CARGO V
             
        WHERE
             UPPER(V.DESC_CARGO)  LIKE '%' +ISNULL(@PI_DESC_CARGO,V.DESC_CARGO) +'%'
            AND UPPER(V.FLG_ESTADO)  = ISNULL(@PI_FLG_ESTADO,V.FLG_ESTADO)
        ORDER BY V.ID_CARGO DESC;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_CARGO_LISTAR_UNO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_CARGO_LISTAR_UNO](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_CARGO INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_CARGO,
            V.DESC_CARGO,  
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 101) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            SEG_M_CARGO V
             
        WHERE
            V.ID_CARGO=@PI_ID_CARGO; 
        
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_ENTIDAD_ACTUALIZAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_ENTIDAD_ACTUALIZAR](
  @PI_ID_ENTIDAD          INT,
  @PI_DESC_ENTIDAD         VARCHAR(200),
  @PI_IP_MODIFICACION       VARCHAR(200),
  @PI_USUARIO_MODIFICACION  VARCHAR(200),
  @PO_VALIDO          INT  OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE         VARCHAR(200)  OUT  -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
DECLARE @P_MENSAJE VARCHAR(200)= '';
BEGIN
  SET @P_MENSAJE =(  
	      SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_ENTIDAD) = UPPER(RTRIM(@PI_DESC_ENTIDAD )) THEN
                      'La descripción ya existe'
                 END 
            FROM
                SEG_M_ENTIDAD U
            WHERE
                (
                 UPPER(U.DESC_ENTIDAD) = UPPER(RTRIM(@PI_DESC_ENTIDAD ))			
                )
				 AND U.ID_ENTIDAD != @PI_ID_ENTIDAD
            ),'-') ); 


        IF @P_MENSAJE = '-' 
		  BEGIN
            UPDATE
               SEG_M_ENTIDAD
            SET
                DESC_ENTIDAD = RTRIM(@PI_DESC_ENTIDAD),
                USU_MODIFICACION = @PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = GETDATE(),
                IP_MODIFICACION = @PI_IP_MODIFICACION
            WHERE
                ID_ENTIDAD = @PI_ID_ENTIDAD;

           SET @PO_VALIDO  = 1;
		   END
        ELSE
		 BEGIN
           SET @PO_VALIDO  = 0;
        END 
  SET  @PO_MENSAJE = @P_MENSAJE;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_ENTIDAD_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_ENTIDAD_ELIMINAR](
  @PI_ID_ENTIDAD         INT,
  @PO_VALIDO            INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM SEG_M_ENTIDAD
    WHERE ID_ENTIDAD = @PI_ID_ENTIDAD;
    SET @PO_VALIDO =1;
END;
GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_ENTIDAD_ESTADO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*=====================================================================================
   Objetivo            : Cambia estado entidad                                         
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_ENTIDAD_ESTADO](
  @PI_ID_ENTIDAD        INT,
  @PI_FLG_ESTADO        CHAR(1),
  @PI_IP_MODIFICACION   VARCHAR(200),
  @PI_USUARIO_MODIFICACION VARCHAR(200),
  @PO_VALIDO            INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE SEG_M_ENTIDAD SET
           FLG_ESTADO = @PI_FLG_ESTADO,
           USU_MODIFICACION= @PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=@PI_IP_MODIFICACION,
           FEC_MODIFICACION=GETDATE()
    WHERE ID_ENTIDAD = @PI_ID_ENTIDAD;
    SET @PO_VALIDO =1;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_ENTIDAD_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_ENTIDAD_INSERTAR](
  @PI_DESC_ENTIDAD   VARCHAR(200),
  @PI_IP_CREACION      VARCHAR(200),
  @PI_USU_CREACION VARCHAR(200),
  @PO_VALIDO            INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE          VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
DECLARE @P_MENSAJE   VARCHAR(200)= '';
BEGIN
   SET @P_MENSAJE = '';

      SET @P_MENSAJE = (
        SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_ENTIDAD) = UPPER(RTRIM(@PI_DESC_ENTIDAD )) THEN
                      'La descripción ya existe'
                 END 
            FROM
                SEG_M_ENTIDAD U
            WHERE
                (
                 UPPER(U.DESC_ENTIDAD) = UPPER(RTRIM(@PI_DESC_ENTIDAD ))
                )
            ),'-') ); 


        IF @P_MENSAJE = '-'
		 BEGIN

            INSERT INTO
               SEG_M_ENTIDAD
                (
                  DESC_ENTIDAD,
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
 
                  @PI_DESC_ENTIDAD,
                  1,
                  @PI_USU_CREACION,
                  GETDATE(),
                  @PI_IP_CREACION
                );

           SET @PO_VALIDO  = 1;
			END 
        ELSE
		BEGIN 
          SET  @PO_VALIDO  = 0;
        END 

   SET  @PO_MENSAJE = @P_MENSAJE;

END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_ENTIDAD_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_ENTIDAD_LISTAR](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_DESC_ENTIDAD VARCHAR(200),
  @PI_FLG_ESTADO INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_ENTIDAD,
            V.DESC_ENTIDAD,  
            V.SIGLA_ENTIDAD,
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 101) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            SEG_M_ENTIDAD V
             
        WHERE
             UPPER(V.DESC_ENTIDAD)  LIKE '%' +ISNULL(@PI_DESC_ENTIDAD,V.DESC_ENTIDAD) +'%'
            AND UPPER(V.FLG_ESTADO)  = ISNULL(@PI_FLG_ESTADO,V.FLG_ESTADO)
        ORDER BY V.ID_ENTIDAD DESC;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_ENTIDAD_LISTAR_UNO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_ENTIDAD_LISTAR_UNO](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_ENTIDAD INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_ENTIDAD,
            V.DESC_ENTIDAD,  
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 101) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            SEG_M_ENTIDAD V
             
        WHERE
            V.ID_ENTIDAD=@PI_ID_ENTIDAD; 
        
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_ENTIDADEXTERNA_ACTUALIZAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=====================================================================================
   Objetivo            : Actualiza datos ENTIDADEXTERNA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

CREATE PROCEDURE [dbo].[P_ADMIN_ENTIDADEXTERNA_ACTUALIZAR](
  @PI_ID_ENTIDAD         INT,
  @PI_DESC_ENTIDAD     VARCHAR(200),
  @PI_RUC_ENTIDAD    VARCHAR(200),
  @PI_ABREVIACION_ENTIDAD     VARCHAR(200),
  @PI_DIRECCION_ENTIDAD             VARCHAR(200),
  @PI_IP_MODIFICACION      VARCHAR(200),
  @PI_USUARIO_MODIFICACION VARCHAR(200),
  @PO_VALIDO          INT  OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE         VARCHAR(200)  OUT  -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
DECLARE @P_MENSAJE VARCHAR(200)= '';
BEGIN
 SET @P_MENSAJE =(  
	      SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_ENTIDAD) = UPPER(RTRIM(@PI_DESC_ENTIDAD )) THEN
                      'La descripción ya existe'
                 END 
            FROM
                TRA_L_ENTIDADES U
            WHERE
                (
                 UPPER(U.DESC_ENTIDAD) = UPPER(RTRIM(@PI_DESC_ENTIDAD ))	
                )
			   AND U.ID_ENTIDAD != @PI_ID_ENTIDAD
            ),'-') ); 



        IF @P_MENSAJE = '-' 
		BEGIN
            UPDATE
               TRA_L_ENTIDADES
            SET
                DESC_ENTIDAD = RTRIM(@PI_DESC_ENTIDAD),
                RUC_ENTIDAD = @PI_RUC_ENTIDAD, 
                ABREVIACION_ENTIDAD = @PI_ABREVIACION_ENTIDAD, 
                DIRECCION_ENTIDAD = @PI_DIRECCION_ENTIDAD,  
                USU_MODIFICACION = @PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = GETDATE(),
                IP_MODIFICACION = @PI_IP_MODIFICACION
            WHERE
                ID_ENTIDAD = @PI_ID_ENTIDAD;

          SET  @PO_VALIDO  = 1;
		 END
        ELSE
		  BEGIN
          SET  @PO_VALIDO  = 0;
		   END

    SET @PO_MENSAJE = @P_MENSAJE;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_ENTIDADEXTERNA_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=====================================================================================
   Objetivo            : Elimina ENTIDADEXTERNA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_ENTIDADEXTERNA_ELIMINAR](
  @PI_ID_ENTIDAD       INT,
  @PO_VALIDO           INT  OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM TRA_L_ENTIDADES
    WHERE ID_ENTIDAD = @PI_ID_ENTIDAD;
  SET  @PO_VALIDO =1;
END;




GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_ENTIDADEXTERNA_ESTADO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=====================================================================================
   Objetivo            : Cambia estado ENTIDADEXTERNA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_ENTIDADEXTERNA_ESTADO](
  @PI_ID_ENTIDAD         INT,
  @PI_FLG_ESTADO        INT,
  @PI_IP_MODIFICACION    VARCHAR(200),
  @PI_USUARIO_MODIFICACION   VARCHAR(200),
  @PO_VALIDO           INT  OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE TRA_L_ENTIDADES SET
           FLG_ESTADO = @PI_FLG_ESTADO,
           USU_MODIFICACION= @PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=@PI_IP_MODIFICACION,
           FEC_MODIFICACION=GETDATE()
    WHERE ID_ENTIDAD = @PI_ID_ENTIDAD;
  SET  @PO_VALIDO =1;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_ENTIDADEXTERNA_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_ENTIDADEXTERNA_INSERTAR](
  @PI_DESC_ENTIDAD     VARCHAR(200),
  @PI_RUC_ENTIDAD    VARCHAR(200),
  @PI_ABREVIACION_ENTIDAD     VARCHAR(200),
  @PI_DIRECCION_ENTIDAD             VARCHAR(200),
  @PI_IP_CREACION     VARCHAR(200),
  @PI_USUARIO_CREACION VARCHAR(200),
  @PO_VALIDO            INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE          VARCHAR(200) OUT -- MENSAJE DEL ERROR
)
AS
DECLARE @P_MENSAJE   VARCHAR(200)= '';
BEGIN
   SET @P_MENSAJE = '';


			SET @P_MENSAJE = (
        SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_ENTIDAD) = UPPER(RTRIM(@PI_DESC_ENTIDAD )) THEN
                      'La descripción ya existe'
                 END 
            FROM
                TRA_L_ENTIDADES U
            WHERE
                (
                 UPPER(U.DESC_ENTIDAD) = UPPER(RTRIM(@PI_DESC_ENTIDAD ))
                )
            ),'-') ); 


        IF @P_MENSAJE = '-' 
		  BEGIN
            INSERT INTO
               TRA_L_ENTIDADES
                (
                  DESC_ENTIDAD,
                  RUC_ENTIDAD,
                  ABREVIACION_ENTIDAD, 
                  DIRECCION_ENTIDAD, 
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  @PI_DESC_ENTIDAD,
                  @PI_RUC_ENTIDAD,
                  @PI_ABREVIACION_ENTIDAD, 
                  @PI_DIRECCION_ENTIDAD, 
                  1,
                  @PI_USUARIO_CREACION,
                  GETDATE(),
                  @PI_IP_CREACION
                );

          SET  @PO_VALIDO  = 1;
			END
        ELSE
		BEGIN
          SET  @PO_VALIDO  = 0;
        END 
    SET @PO_MENSAJE = @P_MENSAJE;

END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_ENTIDADEXTERNA_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_ENTIDADEXTERNA_LISTAR](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_DESC_ENTIDAD VARCHAR(200),
  @PI_FLG_ESTADO INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_ENTIDAD,
            V.DESC_ENTIDAD, 
            V.RUC_ENTIDAD, 
            V.ABREVIACION_ENTIDAD, 
            V.DIRECCION_ENTIDAD,         
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 103) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 103) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRA_L_ENTIDADES V
             
        WHERE
             UPPER(V.DESC_ENTIDAD)  LIKE '%' +ISNULL(@PI_DESC_ENTIDAD,V.DESC_ENTIDAD) +'%'
            AND UPPER(V.FLG_ESTADO)  = ISNULL(@PI_FLG_ESTADO,V.FLG_ESTADO)
        ORDER BY V.ID_ENTIDAD DESC;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_ENTIDADEXTERNA_LISTAR_UNO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_ENTIDADEXTERNA_LISTAR_UNO](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_ENTIDAD INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_ENTIDAD,
            V.DESC_ENTIDAD, 
            V.RUC_ENTIDAD, 
            V.ABREVIACION_ENTIDAD, 
            V.DIRECCION_ENTIDAD,         
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 101) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRA_L_ENTIDADES V
             
        WHERE
            V.ID_ENTIDAD=@PI_ID_ENTIDAD; 
        
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_MOTIVO_FIRMA_ACTUALIZAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_MOTIVO_FIRMA_ACTUALIZAR](
  @PI_ID_MOTIVO_FIRMA         INT ,
  @PI_DESC_MOTIVO_FIRMA        VARCHAR(200),
  @PI_IP_MODIFICACION       VARCHAR(200),
  @PI_USUARIO_MODIFICACION  VARCHAR(200),
  @PO_VALIDO            INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE           VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
DECLARE @P_MENSAJE VARCHAR(200)= '';
BEGIN

		SET @P_MENSAJE =(  
	      SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_MOTIVO_FIRMA) = UPPER(RTRIM(@PI_DESC_MOTIVO_FIRMA )) THEN
                      'La descripción ya existe'
                 END 
            FROM
                TRA_M_MOTIVOS_FIRMA U
            WHERE
                (
                 UPPER(U.DESC_MOTIVO_FIRMA) = UPPER(RTRIM(@PI_DESC_MOTIVO_FIRMA ))			
                )
				 AND U.ID_MOTIVO_FIRMA != @PI_ID_MOTIVO_FIRMA
            ),'-') ); 


        IF @P_MENSAJE = '-' 
		 BEGIN
            UPDATE
               TRA_M_MOTIVOS_FIRMA
            SET
                DESC_MOTIVO_FIRMA = RTRIM(@PI_DESC_MOTIVO_FIRMA),
                USU_MODIFICACION = @PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = GETDATE(),
                IP_MODIFICACION = @PI_IP_MODIFICACION
            WHERE
                ID_MOTIVO_FIRMA = @PI_ID_MOTIVO_FIRMA;

            SET @PO_VALIDO  = 1;
			END
        ELSE
		BEGIN 
           SET @PO_VALIDO  = 0;
        END 
    SET @PO_MENSAJE = @P_MENSAJE;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_MOTIVO_FIRMA_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_MOTIVO_FIRMA_ELIMINAR](
  @PI_ID_MOTIVO_FIRMA         INT,
  @PO_VALIDO          INT  OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM TRA_M_MOTIVOS_FIRMA
    WHERE ID_MOTIVO_FIRMA = @PI_ID_MOTIVO_FIRMA;
   SET  @PO_VALIDO =1;
END;




GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_MOTIVO_FIRMA_ESTADO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_MOTIVO_FIRMA_ESTADO](
  @PI_ID_MOTIVO_FIRMA         INT,
  @PI_FLG_ESTADO        INT,
  @PI_IP_MODIFICACION   VARCHAR(200),
  @PI_USUARIO_MODIFICACION  VARCHAR(200),
  @PO_VALIDO          INT  OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE TRA_M_MOTIVOS_FIRMA SET
           FLG_ESTADO = @PI_FLG_ESTADO,
           USU_MODIFICACION= @PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=@PI_IP_MODIFICACION,
           FEC_MODIFICACION=GETDATE()
    WHERE ID_MOTIVO_FIRMA = @PI_ID_MOTIVO_FIRMA;
  SET  @PO_VALIDO =1;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_MOTIVO_FIRMA_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=====================================================================================
   Objetivo            : Insertar datos de cargo
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_MOTIVO_FIRMA_INSERTAR](
  @PI_DESC_MOTIVO_FIRMA     VARCHAR(500),
  @PI_IP_CREACION       VARCHAR(200),
  @PI_USUARIO_CREACION  VARCHAR(200),
  @PO_VALIDO            INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE           VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
DECLARE @P_MENSAJE   VARCHAR(200)= '';
BEGIN
   SET @P_MENSAJE = '';


	 SET @P_MENSAJE = (
        SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_MOTIVO_FIRMA) = UPPER(RTRIM(@PI_DESC_MOTIVO_FIRMA )) THEN
                      'La descripción ya existe'
                 END 
            FROM
                TRA_M_MOTIVOS_FIRMA U
            WHERE
                (
                 UPPER(U.DESC_MOTIVO_FIRMA) = UPPER(RTRIM(@PI_DESC_MOTIVO_FIRMA ))
                )
            ),'-') ); 


        IF @P_MENSAJE = '-' 
		  BEGIN 
            INSERT INTO
               TRA_M_MOTIVOS_FIRMA
                (
                  DESC_MOTIVO_FIRMA,
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  @PI_DESC_MOTIVO_FIRMA,
                  1,
                  @PI_USUARIO_CREACION,
                  GETDATE(),
                  @PI_IP_CREACION
                );

            SET @PO_VALIDO = 1;
			END 
        ELSE
		BEGIN 
            SET @PO_VALIDO  = 0;
        END 
   SET  @PO_MENSAJE = @P_MENSAJE;

END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_MOTIVO_FIRMA_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[P_ADMIN_MOTIVO_FIRMA_LISTAR](
  ----PO_CURSOR  OUT CURSOR_TYPE,
  @PI_DESC_MOTIVO_FIRMA VARCHAR(500),
  @PI_FLG_ESTADO INT

)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_MOTIVO_FIRMA,
            V.DESC_MOTIVO_FIRMA, 
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 103) AS FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR, V.FEC_MODIFICACION, 103)  AS FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRA_M_MOTIVOS_FIRMA V 
        WHERE
             UPPER(V.DESC_MOTIVO_FIRMA) LIKE '%' +ISNULL(@PI_DESC_MOTIVO_FIRMA,V.DESC_MOTIVO_FIRMA) +'%'
            AND V.FLG_ESTADO = ISNULL(@PI_FLG_ESTADO,V.FLG_ESTADO)
            
        ORDER BY V.ID_MOTIVO_FIRMA DESC;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_MOTIVO_FIRMAUNO_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_MOTIVO_FIRMAUNO_LISTAR](
  @PI_ID_MOTIVO_FIRMA INT

)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT  
            V.ID_MOTIVO_FIRMA,
            V.DESC_MOTIVO_FIRMA       
        FROM
            TRA_M_MOTIVOS_FIRMA V 
             
        WHERE
           V.ID_MOTIVO_FIRMA = @PI_ID_MOTIVO_FIRMA;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_OFICINA_ACTUALIZAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=====================================================================================
   Objetivo            : Actualiza datos OFICINA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

CREATE PROCEDURE [dbo].[P_ADMIN_OFICINA_ACTUALIZAR](
  @PI_ID_OFICINA           INT,
  @PI_ID_ENTIDAD     INT,
  @PI_ID_OFICINA_PADRE     INT,
  @PI_DESC_CORTA_OFICINA      VARCHAR(200),
  @PI_DESC_OFICINA     VARCHAR(500),
  @PI_SIGLA_OFICINA      VARCHAR(200),
  @PI_IP_MODIFICACION      VARCHAR(200),
  @PI_USUARIO_MODIFICACION VARCHAR(200),
  @PO_VALIDO           INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE          VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
DECLARE @P_MENSAJE VARCHAR(200)= '';
BEGIN
		
	 SET @P_MENSAJE =(  
	      SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
               WHEN UPPER(U.DESC_CORTA_OFICINA) = UPPER(RTRIM(@PI_DESC_CORTA_OFICINA)) THEN
                      'La descripción ya existe'
			   WHEN UPPER(U.SIGLA_OFICINA) = UPPER(RTRIM(@PI_SIGLA_OFICINA )) THEN
                       'La sigla  ya existe'   
                 END 
            FROM
                SEG_M_OFICINA U
            WHERE
                (
                   UPPER(U.DESC_CORTA_OFICINA) = UPPER(RTRIM(@PI_DESC_CORTA_OFICINA))
                   OR  UPPER(U.SIGLA_OFICINA) = UPPER(RTRIM(@PI_SIGLA_OFICINA))
                )
				 AND U.ID_OFICINA != @PI_ID_OFICINA
            ),'-') ); 


        IF @P_MENSAJE = '-' 
		  BEGIN
            UPDATE
               SEG_M_OFICINA
            SET
                ID_ENTIDAD = @PI_ID_ENTIDAD, 
                ID_OFICINA_PADRE = @PI_ID_OFICINA_PADRE, 
                DESC_CORTA_OFICINA = @PI_DESC_CORTA_OFICINA, 
                DESC_OFICINA = RTRIM(@PI_DESC_OFICINA),
                SIGLA_OFICINA = @PI_SIGLA_OFICINA,
                USU_MODIFICACION = @PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = GETDATE(),
                IP_MODIFICACION = @PI_IP_MODIFICACION
            WHERE
                ID_OFICINA = @PI_ID_OFICINA;

            SET @PO_VALIDO  = 1;
			END
        ELSE
		BEGIN 
           SET @PO_VALIDO  = 0;
        END 
   SET  @PO_MENSAJE = @P_MENSAJE;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_OFICINA_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=====================================================================================
   Objetivo            : Elimina OFICINA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_OFICINA_ELIMINAR](
  @PI_ID_OFICINA        INT,
  @PO_VALIDO           INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM SEG_M_OFICINA
    WHERE ID_OFICINA = @PI_ID_OFICINA;
    SET @PO_VALIDO =1;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_OFICINA_ESTADO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*=====================================================================================
   Objetivo            : Cambia estado OFICINA                                         
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_OFICINA_ESTADO](
  @PI_ID_OFICINA         INT,
  @PI_FLG_ESTADO         CHAR(1),
  @PI_IP_MODIFICACION    VARCHAR(200),
  @PI_USUARIO_MODIFICACION VARCHAR(200),
  @PO_VALIDO           INT  OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE SEG_M_OFICINA SET
           FLG_ESTADO = @PI_FLG_ESTADO,
           USU_MODIFICACION= @PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=@PI_IP_MODIFICACION,
           FEC_MODIFICACION=GETDATE()
    WHERE ID_OFICINA = @PI_ID_OFICINA;
  SET  @PO_VALIDO =1;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_OFICINA_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*=====================================================================================
   Objetivo            : Insertar datos de OFICINA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

CREATE PROCEDURE [dbo].[P_ADMIN_OFICINA_INSERTAR](
  @PI_ID_ENTIDAD        INT,
  @PI_ID_OFICINA_PADRE     INT,
  @PI_DESC_CORTA_OFICINA      VARCHAR(200),
  @PI_DESC_OFICINA        VARCHAR(200),
  @PI_SIGLA_OFICINA        VARCHAR(200),
  @PI_IP_CREACION        VARCHAR(200),
  @PI_USUARIO_CREACION   VARCHAR(200),
  @PO_VALIDO           INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE          VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
DECLARE @P_MENSAJE   VARCHAR(200)= '';
BEGIN
    SET @P_MENSAJE = '';


		SET @P_MENSAJE = (
        SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_OFICINA) = UPPER(RTRIM(@PI_DESC_OFICINA )) THEN
                      'La descripción ya existe'
			   WHEN UPPER(U.SIGLA_OFICINA) = UPPER(RTRIM(@PI_SIGLA_OFICINA )) THEN
                       'La sigla  ya existe'
                 END 
            FROM
                SEG_M_OFICINA U
            WHERE
                (
                 UPPER(U.DESC_OFICINA) = UPPER(RTRIM(@PI_DESC_OFICINA))
                 OR  UPPER(U.SIGLA_OFICINA) = UPPER(RTRIM(@PI_SIGLA_OFICINA))
                )
            ),'-') ); 

        IF @P_MENSAJE = '-' 
		   BEGIN
            INSERT INTO
               SEG_M_OFICINA
                (
                  ID_ENTIDAD,
                  ID_OFICINA_PADRE,           
                  DESC_CORTA_OFICINA, 
                  DESC_OFICINA,
                  SIGLA_OFICINA,
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  @PI_ID_ENTIDAD,
                  @PI_ID_OFICINA_PADRE,
                  @PI_DESC_CORTA_OFICINA,
                  @PI_DESC_OFICINA,
                  @PI_SIGLA_OFICINA,
                  1,
                  @PI_USUARIO_CREACION,
                  GETDATE(),
                  @PI_IP_CREACION
                );

            SET @PO_VALIDO  = 1;
			END
        ELSE
		 BEGIN 
           SET  @PO_VALIDO  = 0;
        END 
    SET @PO_MENSAJE = @P_MENSAJE;

END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_OFICINA_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_OFICINA_LISTAR](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_DESC_OFICINA VARCHAR(200),
  @PI_FLG_ESTADO INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_OFICINA,
            V.ID_ENTIDAD,
            E.DESC_ENTIDAD, 
            V.ID_OFICINA_PADRE, 
            V.DESC_CORTA_OFICINA,
            V.DESC_OFICINA ,
            OFP.DESC_OFICINA DESC_OFICINA_PADRE,  
            V.SIGLA_OFICINA,
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 103) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 103) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            SEG_M_OFICINA V
            INNER JOIN SEG_M_ENTIDAD E ON E.ID_ENTIDAD =V.ID_ENTIDAD
            LEFT JOIN SEG_M_OFICINA  OFP ON OFP.ID_OFICINA = V.ID_OFICINA_PADRE
             
        WHERE
             UPPER(V.DESC_CORTA_OFICINA)  LIKE '%' +ISNULL(@PI_DESC_OFICINA,V.DESC_CORTA_OFICINA) +'%'
            AND UPPER(V.FLG_ESTADO)  = ISNULL(@PI_FLG_ESTADO,V.FLG_ESTADO)
        ORDER BY V.ID_OFICINA DESC;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_OFICINA_LISTAR_UNO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_OFICINA_LISTAR_UNO](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_OFICINA INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_OFICINA,
            V.ID_ENTIDAD,
            V.ID_OFICINA_PADRE,
            V.DESC_CORTA_OFICINA,
            V.SIGLA_OFICINA,       
            V.DESC_OFICINA,  
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 101) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            SEG_M_OFICINA V
             
        WHERE
           ID_OFICINA= @PI_ID_OFICINA; 
     
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_OFICINAFILTROS_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_OFICINAFILTROS_ELIMINAR](
  @PI_ID_OFICINA_FILTRO        INT,
  @PO_VALIDO           INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM SEG_D_OFICINA_FILTROS
    WHERE ID_OFICINA_FILTRO = @PI_ID_OFICINA_FILTRO;    
    SET @PO_VALIDO =1;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_OFICINAFILTROS_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_OFICINAFILTROS_INSERTAR](
  @PI_ID_OFICINA_PERMISO       INT,
  @PI_ID_OFICINA     INT  ,
  @PI_ID_TAREA      INT,  
  @PI_ID_USUARIO      INT,  
  @PI_IP_CREACION      VARCHAR(200),
  @PI_USUARIO_CREACION  VARCHAR(200),
  @PO_VALIDO           INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
            INSERT INTO
               SEG_D_OFICINA_FILTROS
                (
                  ID_OFICINA_PERMISO,
                  ID_OFICINA,
                  ID_TAREA,  
				  ID_USUARIO,           
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  @PI_ID_OFICINA_PERMISO,
                  @PI_ID_OFICINA,
                  @PI_ID_TAREA,
				  @PI_ID_USUARIO,
                  1,
                  @PI_USUARIO_CREACION,
                  getdate(),
                  @PI_IP_CREACION
                );
            SET @PO_VALIDO  = 1;

END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_OFICINAFILTROS_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_OFICINAFILTROS_LISTAR](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_OFICINA_PERMISO INT

)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT  
         V.ID_OFICINA_FILTRO,     
         V.ID_OFICINA_PERMISO, 
         V.ID_OFICINA,
         V.ID_TAREA,
		 V.ID_USUARIO,
         O.DESC_OFICINA,
         T.DESC_TAREA, 
		 U.NOMBRES_COMPLETOS
         
        FROM
            SEG_D_OFICINA_FILTROS V
            INNER JOIN SEG_M_OFICINA O ON O.ID_OFICINA =V.ID_OFICINA
            INNER JOIN TRA_L_TAREA T ON T.ID_TAREA = V.ID_TAREA
			INNER JOIN V_USUARIO U ON U.ID_USUARIO = V.ID_USUARIO
             
        WHERE
           V.ID_OFICINA_PERMISO = @PI_ID_OFICINA_PERMISO;

END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_OFICINAPERMISO_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_OFICINAPERMISO_ELIMINAR](
  @PI_ID_OFICINA_PERMISO    INT,
  @PO_VALIDO            INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN

   DELETE FROM SEG_D_OFICINA_FILTROS 
   WHERE ID_OFICINA_PERMISO = @PI_ID_OFICINA_PERMISO; 

   DELETE FROM SEG_M_OFICINA_PERMISO
    WHERE ID_OFICINA_PERMISO = @PI_ID_OFICINA_PERMISO;    
   SET @PO_VALIDO =1;
    
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_OFICINAPERMISO_ESTADO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_OFICINAPERMISO_ESTADO](
  @PI_ID_OFICINA_PERMISO        INT,
  @PI_FLG_ESTADO        VARCHAR(200),
  @PI_IP_MODIFICACION   VARCHAR(200),
  @PI_USUARIO_MODIFICACION  VARCHAR(200),
  @PO_VALIDO           INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE SEG_M_OFICINA_PERMISO SET
           FLG_ESTADO = @PI_FLG_ESTADO,
           USU_MODIFICACION= @PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=@PI_IP_MODIFICACION,
           FEC_MODIFICACION=GETDATE()
    WHERE ID_OFICINA_PERMISO = @PI_ID_OFICINA_PERMISO;
    SET @PO_VALIDO =1;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_OFICINAPERMISO_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_OFICINAPERMISO_INSERTAR](
  @PI_ID_OFICINA_DESTINO     INT ,
  @PI_IP_CREACION    VARCHAR(200),
  @PI_USUARIO_CREACION VARCHAR(200),
  @PO_IDRETORNO           INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_VALIDO             INT OUT,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE          VARCHAR(200) OUT  -- MENSAJE DEL ERROR
 
)
AS
DECLARE @P_MENSAJE   VARCHAR(200) 
BEGIN
SET  @PO_IDRETORNO = 0; 
  SET @P_MENSAJE = '';
	SET @P_MENSAJE = (
        SELECT   
			ISNULL((
            SELECT
			 TOP 1	
               CASE
                  WHEN UPPER(U.ID_OFICINA_DESTINO) = UPPER(RTRIM(@PI_ID_OFICINA_DESTINO)) THEN
                      'Ya existe filtros para esta oficina'
                 END 
            FROM
                SEG_M_OFICINA_PERMISO U
            WHERE
                (
                 UPPER(U.ID_OFICINA_DESTINO) = UPPER(RTRIM(@PI_ID_OFICINA_DESTINO ))
                )
            ),'-') ); 
        IF @P_MENSAJE = '-' 
            BEGIN
            INSERT INTO
               SEG_M_OFICINA_PERMISO
                (
                  ID_OFICINA_DESTINO,
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  @PI_ID_OFICINA_DESTINO,
                  1,
                  @PI_USUARIO_CREACION,
                  GETDATE(),
                  @PI_IP_CREACION
                );
		   SET @PO_IDRETORNO  = SCOPE_IDENTITY(); 
           SET @PO_VALIDO  = 1;
		   END 
        ELSE
		BEGIN
            SET @PO_VALIDO  = 0;
        END; 
     SET @PO_MENSAJE = @P_MENSAJE;

END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_OFICINAPERMISO_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_OFICINAPERMISO_LISTAR](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_DESC_OFICINA VARCHAR(500),
  @PI_FLG_ESTADO VARCHAR
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT       
           V.ID_OFICINA_PERMISO,
		   V.ID_OFICINA_DESTINO, 
           O.DESC_OFICINA, 
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 101) FECHA_MODIFICACION,
            V.IP_MODIFICACION
           
        FROM
            SEG_M_OFICINA_PERMISO V
           INNER JOIN SEG_M_OFICINA O ON O.ID_OFICINA =V.ID_OFICINA_DESTINO
             
        WHERE
             UPPER(O.DESC_OFICINA)  LIKE '%' +ISNULL(@PI_DESC_OFICINA,O.DESC_OFICINA) +'%'
            AND UPPER(V.FLG_ESTADO) LIKE '%' +ISNULL(@PI_FLG_ESTADO,V.FLG_ESTADO) +'%'
        ORDER BY V.ID_OFICINA_DESTINO DESC; 
     --  GROUP BY ID_OFICINA_ORIGEN; 
        
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PERFIL_ACTUALIZAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_PERFIL_ACTUALIZAR](
   @PI_ID_PERFIL         INT,
  @PI_ID_SISTEMA        INT,
  @PI_DESC_PERFIL          VARCHAR(200),
  @PI_IP_MODIFICACION      VARCHAR(200),
  @PI_USUARIO_MODIFICACION  VARCHAR(200),
  @PO_VALIDO           INT  OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE           VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
DECLARE @P_MENSAJE VARCHAR(200)= '';
BEGIN
   SET @P_MENSAJE =(  
	      SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_PERFIL) = UPPER(RTRIM(@PI_DESC_PERFIL )) THEN
                      'La descripción ya existe'
                 END 
            FROM
                SEG_M_PERFIL U
            WHERE
                (
                 UPPER(U.DESC_PERFIL) = UPPER(RTRIM(@PI_DESC_PERFIL ))
				 AND U.ID_PERFIL != @PI_ID_PERFIL
                )
            ),'-') ); 

        IF @P_MENSAJE = '-' 
		 BEGIN
            UPDATE
               SEG_M_PERFIL
            SET
                DESC_PERFIL = RTRIM(@PI_DESC_PERFIL),
                ID_SISTEMA = @PI_ID_SISTEMA,
                USU_MODIFICACION = @PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = GETDATE(),
                IP_MODIFICACION = @PI_IP_MODIFICACION
            WHERE
                ID_PERFIL = @PI_ID_PERFIL;

           SET @PO_VALIDO = 1;
			END 
        ELSE
		BEGIN
            SET @PO_VALIDO  = 0;
        END
    SET @PO_MENSAJE = @P_MENSAJE;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PERFIL_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=====================================================================================
   Objetivo            : Elimina PERFIL
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_PERFIL_ELIMINAR](
  @PI_ID_PERFIL         INT,
  @PO_VALIDO            INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM SEG_M_PERFIL
    WHERE ID_PERFIL = @PI_ID_PERFIL;
    SET @PO_VALIDO =1;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PERFIL_ESTADO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*=====================================================================================
   Objetivo            : Cambia estado PERFIL                                         
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_PERFIL_ESTADO](
  @PI_ID_PERFIL         INT,
  @PI_FLG_ESTADO        CHAR(1),
  @PI_IP_MODIFICACION   VARCHAR(200),
  @PI_USUARIO_MODIFICACION VARCHAR(200),
  @PO_VALIDO           INT  OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE SEG_M_PERFIL SET
           FLG_ESTADO = @PI_FLG_ESTADO,
           USU_MODIFICACION= @PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=@PI_IP_MODIFICACION,
           FEC_MODIFICACION=GETDATE()
    WHERE ID_PERFIL = @PI_ID_PERFIL;
   SET @PO_VALIDO =1;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PERFIL_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_PERFIL_INSERTAR](
  @PI_ID_SISTEMA       INT,
  @PI_DESC_PERFIL      VARCHAR(200),
  @PI_IP_CREACION      VARCHAR(200),
  @PI_USUARIO_CREACION VARCHAR(200),
  @PO_VALIDO           INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE          VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
DECLARE @P_MENSAJE   VARCHAR(200)= '';
BEGIN
    SET @P_MENSAJE = '';
	
 SET @P_MENSAJE = (
        SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_PERFIL) = UPPER(RTRIM(@PI_DESC_PERFIL )) THEN
                      'La descripción ya existe'
                 END 
            FROM
                SEG_M_PERFIL U
            WHERE
                (
                 UPPER(U.DESC_PERFIL) = UPPER(RTRIM(@PI_DESC_PERFIL ))
              )
            ),'-') ); 



        IF @P_MENSAJE = '-' 
		BEGIN

            INSERT INTO
               SEG_M_PERFIL
                (
                  ID_SISTEMA, 
                  DESC_PERFIL,
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  @PI_ID_SISTEMA,
                  @PI_DESC_PERFIL,
                  1,
                  @PI_USUARIO_CREACION,
                  GETDATE(),
                  @PI_IP_CREACION
                );

            SET @PO_VALIDO  = 1;
			END 
        ELSE
		 BEGIN
            SET @PO_VALIDO  = 0;
        END 
   SET  @PO_MENSAJE = @P_MENSAJE;

END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PERFIL_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[P_ADMIN_PERFIL_LISTAR](
  ----PO_CURSOR  OUT CURSOR_TYPE,
  @PI_DESC_PERFIL VARCHAR,
  @PI_FLG_ESTADO VARCHAR,
  @PI_ID_SISTEMA INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_PERFIL,
            V.ID_SISTEMA,
            S.DESC_SISTEMA, 
            V.DESC_PERFIL,
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) AS FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR, V.FEC_MODIFICACION, 101)  AS FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            SEG_M_PERFIL V
            INNER JOIN SEG_M_SISTEMA S ON S.ID_SISTEMA=V.ID_SISTEMA       
        WHERE
             UPPER(V.DESC_PERFIL) LIKE '%' +ISNULL(@PI_DESC_PERFIL,V.DESC_PERFIL) +'%'
            AND UPPER(V.FLG_ESTADO)  LIKE  '%'+ISNULL(@PI_FLG_ESTADO,V.FLG_ESTADO) +'%'
            AND V.ID_SISTEMA = ISNULL(@PI_ID_SISTEMA,V.ID_SISTEMA)
            
        ORDER BY V.ID_PERFIL DESC;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PERFIL_LISTAR_UNO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_PERFIL_LISTAR_UNO](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_PERFIL INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_PERFIL,
            V.ID_SISTEMA,
            V.DESC_PERFIL,  
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 101) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            SEG_M_PERFIL V
             
        WHERE
           ID_PERFIL= @PI_ID_PERFIL; 
     
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PIE_PAGINA_ACTUALIZAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=====================================================================================
   Objetivo            : Actualiza datos PIE_PAGINA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/


CREATE PROCEDURE [dbo].[P_ADMIN_PIE_PAGINA_ACTUALIZAR](
  @PI_ID_PIE_PAGINA         INT,
  @PI_ID_TIPO_DOCUMENTO      INT,
  @PI_DISCLAIMER      VARCHAR(3000),
  @PI_IP_MODIFICACION      VARCHAR(200),
  @PI_USUARIO_MODIFICACION VARCHAR(200),
  @PO_VALIDO           INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE          VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
DECLARE @P_MENSAJE VARCHAR(200)= '';
BEGIN
    SET @P_MENSAJE =(  
	      SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
               WHEN UPPER(U.ID_TIPO_DOCUMENTO) = UPPER(RTRIM(@PI_ID_TIPO_DOCUMENTO  )) THEN
                      'Tipo documento ya existe'
                 END 
            FROM
                TRA_M_PIE_PAGINA U
            WHERE
                (
                UPPER(U.ID_TIPO_DOCUMENTO) = UPPER(RTRIM(@PI_ID_TIPO_DOCUMENTO ))		
                )
				 AND U.ID_PIE_PAGINA != @PI_ID_PIE_PAGINA
            ),'-') ); 

        IF @P_MENSAJE = '-' 
		 BEGIN
            UPDATE
               TRA_M_PIE_PAGINA
            SET
			   ID_TIPO_DOCUMENTO = @PI_ID_TIPO_DOCUMENTO, 
                DISCLAIMER = RTRIM(@PI_DISCLAIMER),
                USU_MODIFICACION = @PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = GETDATE(),
                IP_MODIFICACION = @PI_IP_MODIFICACION
            WHERE
                ID_PIE_PAGINA = @PI_ID_PIE_PAGINA;

           SET @PO_VALIDO  = 1;
		   END 
        ELSE
		 BEGIN
            SET @PO_VALIDO  = 0;
	    END
    SET @PO_MENSAJE = @P_MENSAJE;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PIE_PAGINA_DETALLE]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_PIE_PAGINA_DETALLE](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_PIE_PAGINA INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_DET_PIE_PAGINA,
            V.NOMBRE_IMAGEN,  
			V.EXTENSION_IMAGEN,
            V.CODIGO_IMAGEN 
        FROM
            TRA_D_PIE_PAGINA V
             
        WHERE
            V.ID_PIE_PAGINA=@PI_ID_PIE_PAGINA; 
        
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PIE_PAGINA_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_PIE_PAGINA_ELIMINAR](
  @PI_ID_PIE_PAGINA         INT,
  @PO_VALIDO          INT  OUT    -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
   DELETE FROM TRA_D_PIE_PAGINA
    WHERE ID_PIE_PAGINA = @PI_ID_PIE_PAGINA;

    DELETE FROM TRA_M_PIE_PAGINA
    WHERE ID_PIE_PAGINA = @PI_ID_PIE_PAGINA;
   SET @PO_VALIDO =1;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PIE_PAGINA_ESTADO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=====================================================================================
   Objetivo            : Cambia estado PIE_PAGINA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_PIE_PAGINA_ESTADO](
  @PI_ID_PIE_PAGINA         INT,
  @PI_FLG_ESTADO        CHAR(1),
  @PI_IP_MODIFICACION   VARCHAR(200),
  @PI_USUARIO_MODIFICACION VARCHAR(200),
  @PO_VALIDO            INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE TRA_M_PIE_PAGINA SET
           FLG_ESTADO = @PI_FLG_ESTADO,
           USU_MODIFICACION= @PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=@PI_IP_MODIFICACION,
           FEC_MODIFICACION=GETDATE()
    WHERE ID_PIE_PAGINA = @PI_ID_PIE_PAGINA;
    SET @PO_VALIDO =1;
END;




GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PIE_PAGINA_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=====================================================================================
   Objetivo            : Insertar datos de PIE_PAGINA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

 CREATE PROCEDURE [dbo].[P_ADMIN_PIE_PAGINA_INSERTAR](
  @PI_ID_TIPO_DOCUMENTO      INT,
  @PI_DISCLAIMER      VARCHAR(3000),
  @PI_IP_CREACION       VARCHAR(200),
  @PI_USU_CREACION  VARCHAR(200),
  @PO_VALIDO           INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_ID_RETORNO          INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE          VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
DECLARE @P_MENSAJE   VARCHAR(200) 
BEGIN 
    SET @PO_ID_RETORNO =0;
    SET @P_MENSAJE = '';
	SET @P_MENSAJE = (
        SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.ID_TIPO_DOCUMENTO) = UPPER(RTRIM(@PI_ID_TIPO_DOCUMENTO  )) THEN
                      'Tipo documento ya existe'
                 END 
            FROM
                TRA_M_PIE_PAGINA U
            WHERE
                (
                 UPPER(U.ID_TIPO_DOCUMENTO) = UPPER(RTRIM(@PI_ID_TIPO_DOCUMENTO ))
                )
            ),'-') ); 
        IF @P_MENSAJE = '-' 
		 BEGIN

            INSERT INTO
                TRA_M_PIE_PAGINA
                (
				  ID_TIPO_DOCUMENTO,
                  DISCLAIMER,
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (

                  @PI_ID_TIPO_DOCUMENTO,
				  @PI_DISCLAIMER, 
                  1,
                  @PI_USU_CREACION,
                  GETDATE(),
                  @PI_IP_CREACION
                );

           SET  @PO_VALIDO  = 1;
		   SET @PO_ID_RETORNO = SCOPE_IDENTITY();
		   END 
        ELSE
		BEGIN
            SET @PO_VALIDO  = 0;
        END; 
     SET @PO_MENSAJE = @P_MENSAJE;

END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PIE_PAGINA_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_PIE_PAGINA_LISTAR](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_DISCLAIMER VARCHAR(3000),
  @PI_FLG_ESTADO INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_PIE_PAGINA,
            V.DISCLAIMER,  
			V.ID_TIPO_DOCUMENTO, 
			D.DESC_TIPO_DOCUMENTO, 
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 103) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 103) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRA_M_PIE_PAGINA V
			INNER JOIN  TRA_L_TIPO_DOCUMENTO D ON D.ID_TIPO_DOCUMENTO = V.ID_TIPO_DOCUMENTO
             
        WHERE
             UPPER(V.DISCLAIMER)  LIKE '%' +ISNULL(@PI_DISCLAIMER,V.DISCLAIMER) +'%'
            AND UPPER(V.FLG_ESTADO) = ISNULL(@PI_FLG_ESTADO,V.FLG_ESTADO)
        ORDER BY V.ID_PIE_PAGINA DESC;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PIE_PAGINA_LISTAR_UNO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*=====================================================================================
   Objetivo            : Mostrar Informacion del PIE_PAGINA  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

CREATE PROCEDURE [dbo].[P_ADMIN_PIE_PAGINA_LISTAR_UNO](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_PIE_PAGINA INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_PIE_PAGINA,
            V.ID_TIPO_DOCUMENTO,  
			V.DISCLAIMER,
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 101) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRA_M_PIE_PAGINA V
             
        WHERE
            V.ID_PIE_PAGINA=@PI_ID_PIE_PAGINA; 
        
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PIE_PAGINADETALLE_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_PIE_PAGINADETALLE_ELIMINAR](
  @PI_ID_DET_PIE_PAGINA        INT,
  @PO_VALIDO          INT  OUT    -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM TRA_D_PIE_PAGINA
    WHERE ID_DET_PIE_PAGINA = @PI_ID_DET_PIE_PAGINA;
   SET @PO_VALIDO =1;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PIE_PAGINADETALLE_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[P_ADMIN_PIE_PAGINADETALLE_INSERTAR](
  @PI_ID_PIE_PAGINA      INT,
  @PI_CODIGO_IMAGEN      VARCHAR(200),
  @PI_NOMBRE_IMAGEN      VARCHAR(200),
  @PI_EXTENSION_IMAGEN     VARCHAR(200),
  @PI_IP_CREACION       VARCHAR(200),
  @PI_USU_CREACION  VARCHAR(200),
  @PO_VALIDO           INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN 
 
            INSERT INTO
                TRA_D_PIE_PAGINA
                (
				  ID_PIE_PAGINA,
                  CODIGO_IMAGEN,
				  NOMBRE_IMAGEN,
				  EXTENSION_IMAGEN,
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
				  @PI_ID_PIE_PAGINA,
                  @PI_CODIGO_IMAGEN,
				  @PI_NOMBRE_IMAGEN,
				 @PI_EXTENSION_IMAGEN,
                  1,
                  @PI_USU_CREACION,
                  GETDATE(),
                  @PI_IP_CREACION
                );
           SET  @PO_VALIDO  = 1;

END 


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PROFESIONALES_ACTUALIZAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_PROFESIONALES_ACTUALIZAR](
  @PI_ID_PROFESIONAL      INT,
  @PI_DESC_PROFESIONAL     VARCHAR(500),
  @PI_ID_ENTIDAD    INT,
  @PI_IP_MODIFICACION      VARCHAR(200)  ,
  @PI_USUARIO_MODIFICACION  VARCHAR(200),
  @PO_VALIDO          INT  OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE         INT  OUT  -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
DECLARE @P_MENSAJE VARCHAR(200)= '';
BEGIN 
 SET @P_MENSAJE =(  
	      SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_PROFESIONAL) = UPPER(RTRIM(@PI_DESC_PROFESIONAL )) THEN
                          'La descripción ya existe'
                 END 
            FROM
                SEG_M_PROFESIONALES U
            WHERE
                (
             UPPER(U.DESC_PROFESIONAL) = UPPER(RTRIM(@PI_DESC_PROFESIONAL))
                )
				 AND U.ID_PROFESIONAL != @PI_ID_PROFESIONAL
            ),'-') ); 
        IF @P_MENSAJE = '-' 
		  BEGIN
            UPDATE
               SEG_M_PROFESIONALES
            SET
                DESC_PROFESIONAL = @PI_DESC_PROFESIONAL, 
                ID_ENTIDAD = @PI_ID_ENTIDAD, 
                USU_MODIFICACION = @PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = GETDATE(),
                IP_MODIFICACION = @PI_IP_MODIFICACION
            WHERE
                ID_PROFESIONAL  = @PI_ID_PROFESIONAL;

           SET  @PO_VALIDO  = 1;
		   END 
        ELSE
		 BEGIN 
           SET @PO_VALIDO  = 0;		
        END 
    SET @PO_MENSAJE = @P_MENSAJE;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PROFESIONALES_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=====================================================================================
   Objetivo            : Elimina USUARIO
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_PROFESIONALES_ELIMINAR](
  @PI_ID_PROFESIONAL         INT,
  @PO_VALIDO             INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM SEG_D_PROFESIONALES 
     WHERE ID_PROFESIONAL = @PI_ID_PROFESIONAL

    DELETE FROM SEG_M_PROFESIONALES 
     WHERE ID_PROFESIONAL = @PI_ID_PROFESIONAL
	 ;
    SET   @PO_VALIDO =1;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PROFESIONALES_ESTADO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=====================================================================================
   Objetivo            : Cambia estado USUARIO                                         
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_PROFESIONALES_ESTADO](
  @PI_ID_PROFESIONAL        INT,
  @PI_FLG_ESTADO        VARCHAR(100),
  @PI_IP_MODIFICACION  VARCHAR(100),
  @PI_USUARIO_MODIFICACION VARCHAR(100),
  @PO_VALIDO           INT  OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE SEG_M_PROFESIONALES SET
           FLG_ESTADO = @PI_FLG_ESTADO,
           USU_MODIFICACION= @PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=@PI_IP_MODIFICACION,
           FEC_MODIFICACION=GETDATE()
    WHERE ID_PROFESIONAL = @PI_ID_PROFESIONAL;
   SET @PO_VALIDO =1;
 END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PROFESIONALES_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=====================================================================================
   Objetivo            : Insertar datos de USUARIO
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_PROFESIONALES_INSERTAR](
  @PI_DESC_PROFESIONAL      VARCHAR(500),
  @PI_ID_ENTIDAD    INT,
  @PI_IP_CREACION       VARCHAR(200),
  @PI_USUARIO_CREACION  VARCHAR(200),
  @PO_ID_LISTA         INT  OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_VALIDO           INT  OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE          VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
DECLARE @P_MENSAJE   VARCHAR(200)= '';
BEGIN
SET  @PO_ID_LISTA = 0; 
	  SET @P_MENSAJE = (
        SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_PROFESIONAL) = UPPER(RTRIM(@PI_DESC_PROFESIONAL )) THEN
                          'La descripción ya existe'
                 END 
            FROM
                SEG_M_PROFESIONALES U
            WHERE
                (
                  UPPER(U.DESC_PROFESIONAL) = UPPER(RTRIM(@PI_DESC_PROFESIONAL))
                )
            ),'-') ); 

        IF @P_MENSAJE = '-' 
		  BEGIN
            INSERT INTO
               SEG_M_PROFESIONALES
                (
                  DESC_PROFESIONAL,
                  ID_ENTIDAD,       
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  @PI_DESC_PROFESIONAL,
                  @PI_ID_ENTIDAD,
                  1,
                  @PI_USUARIO_CREACION,
                  GETDATE(),
                  @PI_IP_CREACION
                );

            SET @PO_VALIDO  = 1;
		    SET  @PO_ID_LISTA = SCOPE_IDENTITY() 
		END 
        ELSE
		 BEGIN 
          SET  @PO_VALIDO  = 0;
        END 
   SET  @PO_MENSAJE = @P_MENSAJE;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PROFESIONALES_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=====================================================================================
   Objetivo            : Mostrar Informacion de pofesionales
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

CREATE  PROCEDURE [dbo].[P_ADMIN_PROFESIONALES_LISTAR](
  ----PO_CURSOR  OUT CURSOR_TYPE,
  @PI_DESC_PROFESIONAL VARCHAR(500),
  @PI_FLG_ESTADO INT

)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_PROFESIONAL,
            V.DESC_PROFESIONAL, 
			V.ID_ENTIDAD,
			E.DESC_ENTIDAD,
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 103) AS FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR, V.FEC_MODIFICACION, 103)  AS FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            SEG_M_PROFESIONALES V 
			INNER JOIN SEG_M_ENTIDAD E ON E.ID_ENTIDAD = V.ID_ENTIDAD
        WHERE
             UPPER(V.DESC_PROFESIONAL) LIKE '%' +ISNULL(@PI_DESC_PROFESIONAL,V.DESC_PROFESIONAL) +'%'
            AND V.FLG_ESTADO = ISNULL(@PI_FLG_ESTADO,V.FLG_ESTADO)
            
        ORDER BY V.ID_PROFESIONAL DESC;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PROFESIONALES_UNO_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=====================================================================================
   Objetivo            : Mostrar Informacion de TIPO DOCUMENTO uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

CREATE PROCEDURE [dbo].[P_ADMIN_PROFESIONALES_UNO_LISTAR](
  @PI_ID_PROFESIONAL INT

)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT  
            V.ID_PROFESIONAL,
            V.DESC_PROFESIONAL, 
			V.ID_ENTIDAD
        FROM
            SEG_M_PROFESIONALES V 
             
        WHERE
           V.ID_PROFESIONAL = @PI_ID_PROFESIONAL;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PROFESIONALESDETALLE_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_PROFESIONALESDETALLE_INSERTAR](
  @PI_ID_PROFESIONAL        INT,
  @PI_ID_USUARIO            INT,
  @PI_ID_OFICINA            INT,
  @PI_ID_CARGO              INT,
  @PI_IP_CREACION       VARCHAR(200),
  @PI_USUARIO_CREACION  VARCHAR(200),
  @PO_VALIDO            INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN 
            INSERT INTO
               SEG_D_PROFESIONALES
               (
                  ID_PROFESIONAL,   
                  ID_USUARIO,      
                  ID_OFICINA, 
				  ID_CARGO, 
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
				  @PI_ID_PROFESIONAL,
                  @PI_ID_USUARIO,
				  @PI_ID_OFICINA,
				  @PI_ID_CARGO,
                  1,
                  @PI_USUARIO_CREACION,
                  GETDATE(),
                  @PI_IP_CREACION
                );
          SET  @PO_VALIDO  = 1;
   
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_PROFESIONALESDETALLE_UNO_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_PROFESIONALESDETALLE_UNO_LISTAR](
  @PI_ID_PROFESIONAL INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT  
            V.ID_DET_PROFESIONAL,
			V.ID_PROFESIONAL,
			V.ID_CARGO,
			V.ID_OFICINA, 
			V.ID_USUARIO, 
			O.DESC_OFICINA, 
			C.DESC_CARGO, 
			U.NOMBRES_COMPLETOS 

        FROM
            SEG_D_PROFESIONALES V 
			INNER JOIN SEG_M_CARGO C ON C.ID_CARGO = V.ID_CARGO
			INNER JOIN  SEG_M_OFICINA O ON O.ID_OFICINA = V.ID_OFICINA
			INNER JOIN  V_USUARIO U ON U.ID_USUARIO = V.ID_USUARIO     
        WHERE
           V.ID_PROFESIONAL = @PI_ID_PROFESIONAL;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SEDE_ACTUALIZAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=====================================================================================
   Objetivo            : Actualiza datos cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

CREATE PROCEDURE [dbo].[P_ADMIN_SEDE_ACTUALIZAR](
  @PI_ID_SEDE         INT ,
  @PI_DESC_SEDE        VARCHAR(200),
  @PI_DIRECCION      VARCHAR(200),
  @PI_TELEFONO      VARCHAR(200),
  @PI_CORREO               VARCHAR(200),
  @PI_PAGINAWEB_ENTIDAD    VARCHAR(200),
  @PI_PAGINAWEB_SECTOR     VARCHAR(200),
  @PI_IP_MODIFICACION       VARCHAR(200),
  @PI_USUARIO_MODIFICACION  VARCHAR(200),
  @PO_VALIDO            INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE           VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
DECLARE @P_MENSAJE VARCHAR(200)= '';
BEGIN

		SET @P_MENSAJE =(  
	      SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_SEDE) = UPPER(RTRIM(@PI_DESC_SEDE )) THEN
                      'La descripción ya existe'
                 END 
            FROM
                SEG_M_SEDE U
            WHERE
                (
                 UPPER(U.DESC_SEDE) = UPPER(RTRIM(@PI_DESC_SEDE ))			
                )
				 AND U.ID_SEDE != @PI_ID_SEDE
            ),'-') ); 


        IF @P_MENSAJE = '-' 
		 BEGIN
            UPDATE
               SEG_M_SEDE
            SET
                DESC_SEDE = RTRIM(@PI_DESC_SEDE),
                DIRECCION = @PI_DIRECCION, 
                TELEFONO = @PI_TELEFONO, 
                CORREO = @PI_CORREO, 
                PAGINAWEB_ENTIDAD = @PI_PAGINAWEB_ENTIDAD,
                PAGINAWEB_SECTOR = @PI_PAGINAWEB_SECTOR , 
                USU_MODIFICACION = @PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = GETDATE(),
                IP_MODIFICACION = @PI_IP_MODIFICACION
            WHERE
                ID_SEDE = @PI_ID_SEDE;

            SET @PO_VALIDO  = 1;
			END
        ELSE
		BEGIN 
           SET @PO_VALIDO  = 0;
        END 
    SET @PO_MENSAJE = @P_MENSAJE;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SEDE_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=====================================================================================
   Objetivo            : Elimina cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_SEDE_ELIMINAR](
  @PI_ID_SEDE         INT,
  @PO_VALIDO          INT  OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM SEG_M_SEDE
    WHERE ID_SEDE = @PI_ID_SEDE;
   SET  @PO_VALIDO =1;
END;




GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SEDE_ESTADO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=====================================================================================
   Objetivo            : Cambia estado cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_SEDE_ESTADO](
  @PI_ID_SEDE         INT,
  @PI_FLG_ESTADO        INT,
  @PI_IP_MODIFICACION   VARCHAR(200),
  @PI_USUARIO_MODIFICACION  VARCHAR(200),
  @PO_VALIDO          INT  OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE SEG_M_SEDE SET
           FLG_ESTADO = @PI_FLG_ESTADO,
           USU_MODIFICACION= @PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=@PI_IP_MODIFICACION,
           FEC_MODIFICACION=GETDATE()
    WHERE ID_SEDE = @PI_ID_SEDE;
  SET  @PO_VALIDO =1;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SEDE_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_SEDE_INSERTAR](
  @PI_DESC_SEDE     VARCHAR(200),
  @PI_DIRECCION      VARCHAR(500),
  @PI_TELEFONO      VARCHAR(200),
  @PI_CORREO               VARCHAR(200),
  @PI_PAGINAWEB_ENTIDAD   VARCHAR(200),
  @PI_PAGINAWEB_SECTOR     VARCHAR(200),
  @PI_IP_CREACION       VARCHAR(200),
  @PI_USUARIO_CREACION  VARCHAR(200),
  @PO_VALIDO            INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE           VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
DECLARE @P_MENSAJE   VARCHAR(200)= '';
BEGIN
   SET @P_MENSAJE = '';


	 SET @P_MENSAJE = (
        SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_SEDE) = UPPER(RTRIM(@PI_DESC_SEDE )) THEN
                      'La descripción ya existe'
                 END 
            FROM
                SEG_M_SEDE U
            WHERE
                (
                 UPPER(U.DESC_SEDE) = UPPER(RTRIM(@PI_DESC_SEDE ))
                )
            ),'-') ); 


        IF @P_MENSAJE = '-' 
		  BEGIN 
            INSERT INTO
               SEG_M_SEDE
                (
                  DESC_SEDE,
                  DIRECCION,
                  TELEFONO, 
                  CORREO, 
                  PAGINAWEB_ENTIDAD, 
                  PAGINAWEB_SECTOR, 
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  @PI_DESC_SEDE,
                  @PI_DIRECCION,
                  @PI_TELEFONO, 
                  @PI_CORREO, 
                  @PI_PAGINAWEB_ENTIDAD, 
                  @PI_PAGINAWEB_SECTOR,
                  1,
                  @PI_USUARIO_CREACION,
                  GETDATE(),
                  @PI_IP_CREACION
                );

            SET @PO_VALIDO = 1;
			END 
        ELSE
		BEGIN 
            SET @PO_VALIDO  = 0;
        END 
   SET  @PO_MENSAJE = @P_MENSAJE;

END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SEDE_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_SEDE_LISTAR](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_DESC_SEDE VARCHAR(200),
  @PI_FLG_ESTADO INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_SEDE,
            V.DESC_SEDE,  
            V.DIRECCION, 
            V.TELEFONO, 
            V.CORREO, 
            V.PAGINAWEB_ENTIDAD, 
            V.PAGINAWEB_SECTOR,         
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 101) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            SEG_M_SEDE V
             
        WHERE
             UPPER(V.DESC_SEDE)   LIKE '%' +ISNULL(@PI_DESC_SEDE,V.DESC_SEDE) +'%'
            AND  UPPER(V.FLG_ESTADO)  = ISNULL(@PI_FLG_ESTADO,V.FLG_ESTADO) 
        ORDER BY V.ID_SEDE DESC;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SEDE_LISTAR_UNO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_SEDE_LISTAR_UNO](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_SEDE INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_SEDE,
            V.DESC_SEDE, 
            V.DIRECCION, 
            V.TELEFONO, 
            V.CORREO, 
            V.PAGINAWEB_ENTIDAD, 
            V.PAGINAWEB_SECTOR,  
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 101) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            SEG_M_SEDE V
             
        WHERE
            V.ID_SEDE=@PI_ID_SEDE; 
        
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SISTEMA_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_SISTEMA_LISTAR](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_DESC_SISTEMA VARCHAR,
  @PI_FLG_ESTADO VARCHAR
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_SISTEMA,
            V.DESC_SISTEMA,  
            V.CODIGO_IMAGEN,
            V.CODIGO_SISTEMA,
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 101) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            SEG_M_SISTEMA V
             
        WHERE
             UPPER(V.DESC_SISTEMA)   LIKE '%' +ISNULL(@PI_DESC_SISTEMA,V.DESC_SISTEMA) +'%'
            AND UPPER(V.FLG_ESTADO)   LIKE '%' +ISNULL(@PI_FLG_ESTADO,V.FLG_ESTADO) +'%'
        ORDER BY V.ID_SISTEMA DESC;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SISTEMA_LISTAR_UNO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_SISTEMA_LISTAR_UNO](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_SISTEMA INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_SISTEMA,
            V.DESC_SISTEMA,  
            V.CODIGO_IMAGEN,
            V.CODIGO_SISTEMA,
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 101) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            SEG_M_SISTEMA V
             
        WHERE
           V.ID_SISTEMA= @PI_ID_SISTEMA; 
 
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SISTEMAS_ACTUALIZAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_SISTEMAS_ACTUALIZAR](
  @PI_ID_SISTEMA       INT,
  @PI_CODIGO_SISTEMA    VARCHAR(200),
  @PI_DESC_SISTEMA   VARCHAR(200),
  @PI_CODIGO_IMAGEN  VARCHAR(200),
  @PI_IP_MODIFICACION      VARCHAR(200),
  @PI_USUARIO_MODIFICACION VARCHAR(200),
  @PO_VALIDO           INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE          VARCHAR(200)  OUT  -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
DECLARE @P_MENSAJE VARCHAR(200)= '';
BEGIN

		SET @P_MENSAJE = (
        SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.CODIGO_SISTEMA) = UPPER(RTRIM(@PI_CODIGO_SISTEMA )) THEN
                      'La descripción ya existe'
                 END 
            FROM
                SEG_M_SISTEMA U
            WHERE
                (
                 UPPER(U.CODIGO_SISTEMA) = UPPER(RTRIM(@PI_CODIGO_SISTEMA ))
				  AND U.ID_SISTEMA != @PI_ID_SISTEMA
                )
            ),'-') ); 

        IF @P_MENSAJE = '-' 
		BEGIN
            UPDATE
               SEG_M_SISTEMA
            SET

                CODIGO_SISTEMA = @PI_CODIGO_SISTEMA, 
                DESC_SISTEMA = @PI_DESC_SISTEMA, 
                CODIGO_IMAGEN = @PI_CODIGO_IMAGEN,
                USU_MODIFICACION = @PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = GETDATE(),
                IP_MODIFICACION = @PI_IP_MODIFICACION
            WHERE
                ID_SISTEMA = @PI_ID_SISTEMA;

            SET @PO_VALIDO  = 1;
	      END
        ELSE
	    	BEGIN
           SET @PO_VALIDO  = 0;
        END ;
   SET @PO_MENSAJE = @P_MENSAJE;
END


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SISTEMAS_CARGOUSU_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_SISTEMAS_CARGOUSU_LISTAR](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_USUARIO INT,
  @PI_ID_OFICINA INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_USUARIO_CARGO,
            V.ID_CARGO,
            O.DESC_CARGO
            
        FROM
            SEG_D_USUARIO_CARGO V
            INNER JOIN SEG_M_CARGO O ON O.ID_CARGO =V.ID_CARGO
             
        WHERE
             V.ID_USUARIO = @PI_ID_USUARIO 
             AND V.ID_OFICINA = @PI_ID_OFICINA; 
END;




GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SISTEMAS_MODULO_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_SISTEMAS_MODULO_LISTAR]
(
   --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_SISTEMA INT,
  @PI_FLG_ESTADO VARCHAR
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            ISNULL(SM.ID_SISTEMA_MODULO, 0) ID_SISTEMA_MODULO,
            ISNULL(SM.ID_SISTEMA, 0) ID_SISTEMA,
            ISNULL(SM.ID_TIPO_MODULO, 0) ID_TIPO_MODULO,
            TM.DESC_TIPORECURSO DESC_TIPO_MODULO,
            ISNULL(SM.ID_SISTEMA_MODULO_PADRE, 0) ID_SISTEMA_MODULO_PADRE,
            ISNULL(SM.ID_A, '-') ID_A ,
            ISNULL(SM.ID_LI, '-') ID_LI ,
            ISNULL(SM.IMAGEN, '-') IMAGEN ,
            ISNULL(SM.URL_MODULO, '-') URL_MODULO,
            ISNULL(SM.DESC_MODULO, '-') DESC_MODULO,
            ISNULL(SM.ORDEN, 0) ORDEN,
            ISNULL(SM.NIVEL, 1) NIVEL,
            SM.FLG_ESTADO,
            ISNULL(SM.USU_CREACION, '-')USU_CREACION,
            CONVERT(VARCHAR,SM.FEC_CREACION, 101) FEC_CREACION,
            ISNULL(SM.IP_CREACION, '-')IP_CREACION,
            ISNULL(SM.USU_MODIFICACION, '-')USU_MODIFICACION,
            ISNULL(CONVERT(VARCHAR,SM.FEC_MODIFICACION, 101), '-') FEC_MODIFICACION,
            ISNULL(SM.IP_MODIFICACION, '-')IP_MODIFICACION
        FROM
            SEG_D_SISTEMAS_MODULO SM
            INNER JOIN SEG_M_TIPO_RECURSO TM ON TM.ID_TIPORECURSO = SM.ID_TIPO_MODULO
        WHERE
            SM.ID_SISTEMA = @PI_ID_SISTEMA
            AND SM.FLG_ESTADO = ISNULL(@PI_FLG_ESTADO,SM.FLG_ESTADO)
        ORDER BY SM.ORDEN ASC;
END;




GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SISTEMAS_OFIUSU_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_SISTEMAS_OFIUSU_LISTAR](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_USUARIO INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_USUARIO_CARGO,
            V.ID_OFICINA,
            O.DESC_OFICINA
            
        FROM
            SEG_D_USUARIO_CARGO V
            INNER JOIN SEG_M_OFICINA O ON O.ID_OFICINA =V.ID_OFICINA
             
        WHERE
             V.ID_USUARIO = @PI_ID_USUARIO; 
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SISTEMAS_PER_MOD_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_SISTEMAS_PER_MOD_ELIMINAR]
(
  @PI_ID_SISTEMA         INT,
  @PI_ID_PERFIL          INT,
  @PI_ID_MODULO          INT,
  @PO_VALIDO             INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE             VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
  DECLARE @P_MENSAJE             VARCHAR(200) = '',
          @P_CUENTA              INT = 0
BEGIN
    SET @PO_VALIDO = 0;
    SET @P_CUENTA = ( SELECT
	 COUNT(*)
         
    FROM
       SEG_D_SISTEMAS_PERFIL_MODULO
    WHERE
        ID_PERFIL = @PI_ID_PERFIL
        AND ID_SISTEMA = @PI_ID_SISTEMA
        AND ID_MODULO = @PI_ID_MODULO) 

    IF @P_CUENTA != 0 
	  BEGIN
        DELETE FROM
            SEG_D_SISTEMAS_PERFIL_MODULO
        WHERE
             ID_SISTEMA = @PI_ID_SISTEMA
             AND ID_PERFIL = @PI_ID_PERFIL
             AND ID_MODULO IN (SELECT
                                   M.ID_SISTEMA_MODULO
                               FROM
                                  SEG_D_SISTEMAS_MODULO M
                               WHERE
                                   M.ID_SISTEMA = @PI_ID_SISTEMA
                                   AND (M.ID_SISTEMA_MODULO = @PI_ID_MODULO OR M.ID_SISTEMA_MODULO_PADRE = @PI_ID_MODULO));
      SET  @PO_VALIDO = 1;
     END 
    ELSE
	 BEGIN
        SET @P_MENSAJE = 'El modulo seleccionado ya no existe';
    END 
  SET  @PO_MENSAJE = @P_MENSAJE;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SISTEMAS_PER_MOD_REGISTRAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_SISTEMAS_PER_MOD_REGISTRAR]
(
  @PI_ID_SISTEMA         INT,
  @PI_ID_PERFIL          INT,
  @PI_ID_MODULO          INT,
  @PI_USU_CREACION       VARCHAR(200),
  @PI_IP_CREACION        VARCHAR(200),
  @PO_VALIDO              INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE           VARCHAR(200)  OUT  -- MENSAJE DEL ERROR
)
AS
 DECLARE  @P_MENSAJE             VARCHAR(200) = '',
          @P_CUENTA              INT = 0
BEGIN
   SET  @PO_VALIDO = 0;
  SET  @P_CUENTA = (
    SELECT
        COUNT(*) 
    FROM
       SEG_D_SISTEMAS_PERFIL_MODULO
    WHERE
        ID_PERFIL = @PI_ID_PERFIL
        AND ID_SISTEMA = @PI_ID_SISTEMA
        AND ID_MODULO = @PI_ID_MODULO)


    IF @P_CUENTA = 0 
	    BEGIN 
        INSERT INTO
         SEG_D_SISTEMAS_PERFIL_MODULO
          (
             ID_SISTEMA,
             ID_PERFIL,
             ID_MODULO,
             USU_CREACION,
             IP_CREACION
          )
          SELECT
              @PI_ID_SISTEMA,
              @PI_ID_PERFIL,
              M.ID_SISTEMA_MODULO,
              @PI_USU_CREACION,
              @PI_IP_CREACION
          FROM
             SEG_D_SISTEMAS_MODULO M
          WHERE
              M.ID_SISTEMA = @PI_ID_SISTEMA
              AND (M.ID_SISTEMA_MODULO = @PI_ID_MODULO OR M.ID_SISTEMA_MODULO_PADRE = @PI_ID_MODULO)
              AND M.ID_SISTEMA_MODULO NOT IN
              (SELECT ID_MODULO FROM SEG_D_SISTEMAS_PERFIL_MODULO WHERE ID_SISTEMA = @PI_ID_SISTEMA  AND ID_PERFIL = @PI_ID_PERFIL  );
       SET @PO_VALIDO = 1;
	   END
    ELSE
	 BEGIN
        SET @P_MENSAJE = 'El perfil seleccionado ya no existe';
          
    END 
   SET  @PO_MENSAJE = @P_MENSAJE;
END;






GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SISTEMAS_PER_USU_ACTUALIZA]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_SISTEMAS_PER_USU_ACTUALIZA]
(
  @PI_ID_SISTEMAS_PERFIL_USUARIO        INT,
  @PI_ID_SISTEMA         INT,
  @PI_ID_PERFIL          INT,
  @PI_ID_OFICINA         INT,
  @PI_ID_CARGO           INT,
  @PI_FEC_ACTIVACION     VARCHAR(100),
  @PI_FEC_DESACTIVACION    VARCHAR(100),
  @PI_USU_MODIFICACION      VARCHAR(100),
  @PI_IP_MODIFICACION         VARCHAR(100),
  @PO_VALIDO              INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE             VARCHAR(100) OUT -- MENSAJE DEL ERROR
)
AS
  DECLARE @P_MENSAJE         VARCHAR(200) = '',
  @P_CUENTA                     INT = 0,
  @P_ID_USUARIO                INT;
BEGIN
    SET @PO_VALIDO = 0;
 SET @P_ID_USUARIO = (
    SELECT
        SPU.ID_USUARIO 
    FROM
       SEG_R_USUARIO_PERFIL SPU
    WHERE
        SPU.ID_USUARIO_PERFIL = @PI_ID_SISTEMAS_PERFIL_USUARIO)

SET @P_CUENTA = (
    SELECT
        COUNT(*)  
    FROM
       SEG_R_USUARIO_PERFIL SPU
    WHERE
        SPU.ID_SISTEMA = @PI_ID_SISTEMA
        AND SPU.ID_PERFIL = @PI_ID_PERFIL
        AND SPU.ID_OFICINA = @PI_ID_OFICINA
        AND SPU.ID_CARGO = @PI_ID_CARGO
        AND SPU.ID_USUARIO = @P_ID_USUARIO
        AND SPU.ID_USUARIO_PERFIL != @PI_ID_SISTEMAS_PERFIL_USUARIO) 

    IF @P_CUENTA = 0 
	    BEGIN 
        UPDATE
           SEG_R_USUARIO_PERFIL
        SET
            ID_PERFIL = @PI_ID_PERFIL,
            USU_MODIFICACION = @PI_USU_MODIFICACION,
            FEC_MODIFICACION = GETDATE(),
            ID_OFICINA = @PI_ID_OFICINA,
            ID_CARGO = @PI_ID_CARGO,
            FEC_ACTIVACION =  CONVERT (DATE,@PI_FEC_ACTIVACION, 103),
            FEC_DESACTIVACION =  CONVERT(DATE, @PI_FEC_DESACTIVACION, 103),
            IP_MODIFICACION = @PI_IP_MODIFICACION
        WHERE
            ID_SISTEMA = @PI_ID_SISTEMA
            AND ID_USUARIO_PERFIL = @PI_ID_SISTEMAS_PERFIL_USUARIO;
       SET  @PO_VALIDO = 1;
	   END 
    ELSE
	  BEGIN
        SET @P_MENSAJE = 'El usuario, oficina y perfil ya existe';
    END 
    SET @PO_MENSAJE = @P_MENSAJE
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SISTEMAS_PER_USU_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=====================================================================================
   Objetivo            : Elimina  usuario para el sistema     
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_SISTEMAS_PER_USU_ELIMINAR](
 @PI_ID_SISTEMAS_PERFIL_USUARIO         INT,
  @PO_VALIDO           INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM SEG_R_USUARIO_PERFIL
    WHERE ID_USUARIO_PERFIL = @PI_ID_SISTEMAS_PERFIL_USUARIO;
   SET  @PO_VALIDO =1;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SISTEMAS_PER_USU_ESTADO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_SISTEMAS_PER_USU_ESTADO](
  @PI_ID_SISTEMAS_PERFIL_USUARIO         INT,
  @PI_FLG_ESTADO        INT,
  @PI_IP_MODIFICACION   VARCHAR(200),
  @PI_USUARIO_MODIFICACION VARCHAR(200),
  @PO_VALIDO            INT OUT  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE SEG_R_USUARIO_PERFIL SET
           FLG_ESTADO = @PI_FLG_ESTADO,
           USU_MODIFICACION= @PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=@PI_IP_MODIFICACION,
           FEC_MODIFICACION=GETDATE()
    WHERE ID_USUARIO_PERFIL = @PI_ID_SISTEMAS_PERFIL_USUARIO;
    SET @PO_VALIDO =1;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SISTEMAS_PER_USU_REGISTRAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_SISTEMAS_PER_USU_REGISTRAR]
(
  @PI_ID_SISTEMA         INT,
  @PI_ID_PERFIL          INT,
  @PI_ID_USUARIO         INT,
  @PI_ID_OFICINA         INT,
  @PI_ID_CARGO           INT,
  @PI_FEC_ACTIVACION      VARCHAR(100),
  @PI_FEC_DESACTIVACION   VARCHAR(100),
  @PI_USU_CREACION       VARCHAR(100),
  @PI_IP_CREACION        VARCHAR(100),
  @PO_VALIDO             INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE            VARCHAR(100) OUT  -- MENSAJE DEL ERROR
)
AS
  DECLARE @P_MENSAJE                    VARCHAR(200) = '',
  @P_CUENTA                     INT = 0,
  @P_ID_SISTEMAS_PERFIL_USUARIO INT = 1
BEGIN
   SET @PO_VALIDO = 0;

   SET @P_CUENTA =(   SELECT
        COUNT(*) 
    FROM
       SEG_R_USUARIO_PERFIL SPU
    WHERE
        SPU.ID_SISTEMA = @PI_ID_SISTEMA
        AND SPU.ID_PERFIL = @PI_ID_PERFIL
        AND SPU.ID_OFICINA = @PI_ID_OFICINA
        AND SPU.ID_USUARIO = @PI_ID_USUARIO)

    IF @P_CUENTA = 0 
	 BEGIN
        INSERT INTO
         SEG_R_USUARIO_PERFIL
          (
             ID_SISTEMA,
             ID_PERFIL,
             ID_OFICINA,
             ID_CARGO,
             FEC_ACTIVACION,
             FEC_DESACTIVACION,
             ID_USUARIO,
             USU_CREACION,
             IP_CREACION
          )
        VALUES
          (

             @PI_ID_SISTEMA,
             @PI_ID_PERFIL,
             @PI_ID_OFICINA,
             @PI_ID_CARGO,
             CONVERT (DATE,@PI_FEC_ACTIVACION, 103),
             CONVERT(DATE, @PI_FEC_DESACTIVACION, 103),
             @PI_ID_USUARIO,
             @PI_USU_CREACION,
             @PI_IP_CREACION
          );
     --   P_MENSAJE := P_ID_SISTEMAS_PERFIL_USUARIO;
        SET @PO_VALIDO = 1;
		END
    ELSE
	BEGIN
       SET @P_MENSAJE = 'El usuario, oficina y perfil ya existe';
    END 
    SET @PO_MENSAJE = @P_MENSAJE;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SISTEMAS_PERF_MODU_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_SISTEMAS_PERF_MODU_LISTAR]
(
    --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_SISTEMA INT, 
  @PI_ID_SISTEMA_PERFIL INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            SM.ID_SISTEMA_MODULO,
            SM.ID_SISTEMA_MODULO_PADRE,
            SM.ID_TIPO_MODULO,
            SM.ID_A,
            SM.ID_LI,
            SM.DESC_MODULO,
            SM.IMAGEN,
            SM.ORDEN,
            SM.FLG_ESTADO
        FROM
            SEG_D_SISTEMAS_PERFIL_MODULO SPM
            INNER JOIN SEG_D_SISTEMAS_MODULO SM ON SM.ID_SISTEMA_MODULO = SPM.ID_MODULO
                                                              --AND SM.FLG_ESTADO = 1
       WHERE
            SPM.ID_SISTEMA = @PI_ID_SISTEMA
            AND SPM.ID_PERFIL = @PI_ID_SISTEMA_PERFIL
            AND SPM.FLG_ESTADO = 1;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_SISTEMAS_USUARIO_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_SISTEMAS_USUARIO_LISTAR]
(
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_SISTEMA INT,
  @PI_FLG_ESTADO VARCHAR
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
          SPU.ID_USUARIO_PERFIL  ID_SISTEMAS_PERFIL_USUARIO,
            SPU.ID_USUARIO,
            SPU.ID_PERFIL,
            SPU.ID_OFICINA,
            SPU.ID_CARGO, 
            C.DESC_CARGO, 
            OFI.DESC_OFICINA,
            SP.DESC_PERFIL,
            U.COD_USUARIO,
            ISNULL(CONVERT(VARCHAR,SPU.FEC_ACTIVACION, 103),'-') FEC_ACTIVACION,
            ISNULL(CONVERT(VARCHAR,SPU.FEC_DESACTIVACION, 103),'-') FEC_DESACTIVACION,
            SPU.FLG_ESTADO,
            ISNULL(SPU.USU_CREACION,'-')USU_CREACION,
            CONVERT(VARCHAR,SPU.FEC_CREACION, 103) FEC_CREACION,
            ISNULL(SPU.IP_CREACION,'-')IP_CREACION,
            ISNULL(SPU.USU_MODIFICACION,'-')USU_MODIFICACION,
            ISNULL(CONVERT(VARCHAR,SPU.FEC_MODIFICACION, 103),'-') FEC_MODIFICACION,
            ISNULL(SPU.IP_MODIFICACION,'-')IP_MODIFICACION
        FROM
            SEG_R_USUARIO_PERFIL SPU
            INNER JOIN SEG_M_PERFIL SP ON SP.ID_PERFIL = SPU.ID_PERFIL
                                                               AND SP.ID_SISTEMA = SPU.ID_SISTEMA
            INNER JOIN SEG_M_USUARIO U ON U.ID_USUARIO = SPU.ID_USUARIO
            INNER JOIN SEG_M_OFICINA OFI ON OFI.ID_OFICINA = SPU.ID_OFICINA
            INNER JOIN SEG_M_CARGO C ON C.ID_CARGO = SPU.ID_CARGO
            
       WHERE
            SPU.ID_SISTEMA = @PI_ID_SISTEMA
            AND SPU.FLG_ESTADO = ISNULL(@PI_FLG_ESTADO, SPU.FLG_ESTADO);
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_TAREA_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_TAREA_LISTAR](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_DESC_TAREA VARCHAR,
  @PI_FLG_ESTADO VARCHAR
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_TAREA,
            V.DESC_TAREA,  
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 101) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRA_L_TAREA V
             
        WHERE
             UPPER(V.DESC_TAREA)  LIKE '%' +ISNULL(@PI_DESC_TAREA,V.DESC_TAREA) +'%'
            AND UPPER(V.FLG_ESTADO)  LIKE '%' +ISNULL(@PI_FLG_ESTADO,V.FLG_ESTADO) +'%'
        ORDER BY V.ID_TAREA DESC;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_TIPO_DOCUMENTO]    Script Date: 13/05/2021 2:37:00 ******/
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
  CREATE PROCEDURE [dbo].[P_ADMIN_TIPO_DOCUMENTO]
  --(
    --PO_CURSOR                     OUT SYS_REFCURSOR
 -- )
  AS
  BEGIN
      --OPEN --PO_CURSOR FOR
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
/****** Object:  StoredProcedure [dbo].[P_ADMIN_TIPO_DOCUMENTO_ACTUALIZAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_TIPO_DOCUMENTO_ACTUALIZAR](
  @PI_ID_TIPO_DOCUMENTO         INT,
  @PI_ID_TIPO_DOCUMENTO_PIDE     VARCHAR(200),
  @PI_DESC_TIPO_DOCUMENTO      VARCHAR(500),
  @PI_SIGLA_TIPO_DOCUMENTO      VARCHAR(200),
  @PI_FLG_MGD     VARCHAR(200),
  @PI_IP_MODIFICACION      VARCHAR(200),
  @PI_USUARIO_MODIFICACION VARCHAR(200),
  @PO_VALIDO           INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE          VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
DECLARE @P_MENSAJE VARCHAR(200)= '';
BEGIN
    SET @P_MENSAJE =(  
	      SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_TIPO_DOCUMENTO) = UPPER(RTRIM(@PI_DESC_TIPO_DOCUMENTO )) THEN
                      'La descripción ya existe'
                 END 
            FROM
                TRA_L_TIPO_DOCUMENTO U
            WHERE
                (
                 UPPER(U.DESC_TIPO_DOCUMENTO) = UPPER(RTRIM(@PI_DESC_TIPO_DOCUMENTO ))		
                )
				 AND U.ID_TIPO_DOCUMENTO != @PI_ID_TIPO_DOCUMENTO
            ),'-') ); 

        IF @P_MENSAJE = '-' 
		 BEGIN
            UPDATE
               TRA_L_TIPO_DOCUMENTO
            SET
			    ID_TIPO_DOCUMENTO_PIDE = @PI_ID_TIPO_DOCUMENTO_PIDE,
                DESC_TIPO_DOCUMENTO = RTRIM(@PI_DESC_TIPO_DOCUMENTO),
				SIGLA_TIPO_DOCUMENTO = @PI_SIGLA_TIPO_DOCUMENTO, 
				FLG_MGD = @PI_FLG_MGD ,
                USU_MODIFICACION = @PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = GETDATE(),
                IP_MODIFICACION = @PI_IP_MODIFICACION
            WHERE
                ID_TIPO_DOCUMENTO = @PI_ID_TIPO_DOCUMENTO;

           SET @PO_VALIDO  = 1;
		   END 
        ELSE
		 BEGIN
            SET @PO_VALIDO  = 0;
	    END
    SET @PO_MENSAJE = @P_MENSAJE;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_TIPO_DOCUMENTO_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=====================================================================================
   Objetivo            : Elimina TIPO_DOCUMENTO
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_TIPO_DOCUMENTO_ELIMINAR](
  @PI_ID_TIPO_DOCUMENTO         INT,
  @PO_VALIDO          INT  OUT    -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM TRA_L_TIPO_DOCUMENTO
    WHERE ID_TIPO_DOCUMENTO = @PI_ID_TIPO_DOCUMENTO;
   SET @PO_VALIDO =1;
END;




GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_TIPO_DOCUMENTO_ESTADO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=====================================================================================
   Objetivo            : Cambia estado TIPO_DOCUMENTO
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_TIPO_DOCUMENTO_ESTADO](
  @PI_ID_TIPO_DOCUMENTO         INT,
  @PI_FLG_ESTADO        CHAR(1),
  @PI_IP_MODIFICACION   VARCHAR(200),
  @PI_USUARIO_MODIFICACION VARCHAR(200),
  @PO_VALIDO            INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE TRA_L_TIPO_DOCUMENTO SET
           FLG_ESTADO = @PI_FLG_ESTADO,
           USU_MODIFICACION= @PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=@PI_IP_MODIFICACION,
           FEC_MODIFICACION=GETDATE()
    WHERE ID_TIPO_DOCUMENTO = @PI_ID_TIPO_DOCUMENTO;
    SET @PO_VALIDO =1;
END;




GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_TIPO_DOCUMENTO_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[P_ADMIN_TIPO_DOCUMENTO_INSERTAR](
  @PI_ID_TIPO_DOCUMENTO_PIDE     VARCHAR(200),
  @PI_DESC_TIPO_DOCUMENTO      VARCHAR(500),
  @PI_SIGLA_TIPO_DOCUMENTO      VARCHAR(200),
  @PI_FLG_MGD     VARCHAR(200),
  @PI_IP_CREACION       VARCHAR(200),
  @PI_USU_CREACION  VARCHAR(200),
  @PO_VALIDO           INT OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE          VARCHAR OUT  -- MENSAJE DEL ERROR
)
AS
DECLARE @P_MENSAJE   VARCHAR(200) 
BEGIN
    SET @P_MENSAJE = '';
	SET @P_MENSAJE = (
        SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DESC_TIPO_DOCUMENTO) = UPPER(RTRIM(@PI_DESC_TIPO_DOCUMENTO)) THEN
                      'La descripción ya existe'
                 END 
            FROM
                TRA_L_TIPO_DOCUMENTO U
            WHERE
                (
                 UPPER(U.DESC_TIPO_DOCUMENTO) = UPPER(RTRIM(@PI_DESC_TIPO_DOCUMENTO ))
                )
            ),'-') ); 
        IF @P_MENSAJE = '-' 
		 BEGIN

            INSERT INTO
                TRA_L_TIPO_DOCUMENTO
                (
				  ID_TIPO_DOCUMENTO_PIDE,
                  DESC_TIPO_DOCUMENTO,
				  SIGLA_TIPO_DOCUMENTO,
				  FLG_MGD,
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (

				  @PI_ID_TIPO_DOCUMENTO_PIDE,
                  @PI_DESC_TIPO_DOCUMENTO,
				  @PI_SIGLA_TIPO_DOCUMENTO,
				  @PI_FLG_MGD,
                  1,
                  @PI_USU_CREACION,
                  GETDATE(),
                  @PI_IP_CREACION
                );

           SET  @PO_VALIDO  = 1;
		   END 
        ELSE
		BEGIN
            SET @PO_VALIDO  = 0;
        END; 
     SET @PO_MENSAJE = @P_MENSAJE;

END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_TIPO_DOCUMENTO_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[P_ADMIN_TIPO_DOCUMENTO_LISTAR](
  ----PO_CURSOR  OUT CURSOR_TYPE,
  @PI_DESC_TIPO_DOCUMENTO VARCHAR(500),
  @PI_FLG_ESTADO INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_TIPO_DOCUMENTO,
            V.ID_TIPO_DOCUMENTO_PIDE,
            V.DESC_TIPO_DOCUMENTO, 
            V.SIGLA_TIPO_DOCUMENTO,
			V.FLG_MGD,
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 103) AS FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR, V.FEC_MODIFICACION, 103)  AS FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRA_L_TIPO_DOCUMENTO V 
        WHERE
             UPPER(V.DESC_TIPO_DOCUMENTO) LIKE '%' +ISNULL(@PI_DESC_TIPO_DOCUMENTO,V.DESC_TIPO_DOCUMENTO) +'%'
            AND V.FLG_ESTADO = ISNULL(@PI_FLG_ESTADO,V.FLG_ESTADO)
            
        ORDER BY V.ID_TIPO_DOCUMENTO DESC;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_TIPO_DOCUMENTOUNO_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[P_ADMIN_TIPO_DOCUMENTOUNO_LISTAR](
  @PID_TIPO_DOCUMENTO INT

)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT  
            V.ID_TIPO_DOCUMENTO,
            V.ID_TIPO_DOCUMENTO_PIDE,
            V.DESC_TIPO_DOCUMENTO, 
            V.SIGLA_TIPO_DOCUMENTO,
			V.FLG_MGD
         
        FROM
            TRA_L_TIPO_DOCUMENTO V 
             
        WHERE
           V.ID_TIPO_DOCUMENTO = @PID_TIPO_DOCUMENTO;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_USUARIO_ACTUALIZAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_USUARIO_ACTUALIZAR](
  @PI_ID_USUARIO       INT,
  @PI_COD_USUARIO     VARCHAR(100),
  @PI_ID_ENTIDAD    INT,
  @PI_CLAVE_USUARIO     VARCHAR(100),
  @PI_NOMBRE_USUARIO    VARCHAR(200),
  @PI_APE_PATERNO   VARCHAR(200),
  @PI_APE_MATERNO  VARCHAR(200),
  @PI_DNI          VARCHAR(200),
  @PI_TELEFONO  VARCHAR(200),
  @PI_CELULAR   VARCHAR(200),
  @PI_CORREO    VARCHAR(200),
  @PI_IP_MODIFICACION      VARCHAR(200)  ,
  @PI_USUARIO_MODIFICACION  VARCHAR(200),
  @PO_VALIDO          INT  OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE         INT  OUT  -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
DECLARE @P_MENSAJE VARCHAR(200)= '';
BEGIN 
 SET @P_MENSAJE =(  
	      SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                 WHEN UPPER(U.COD_USUARIO) = UPPER(RTRIM(@PI_COD_USUARIO)) THEN
                      'El codigo de usuario ya existe'
                  WHEN UPPER(U.DNI) = UPPER(RTRIM(@PI_DNI)) THEN
                      'El dni de usuario ya existe'
                 END 
            FROM
                SEG_M_USUARIO U
            WHERE
                (
                  UPPER(U.COD_USUARIO) = UPPER(RTRIM(@PI_COD_USUARIO))
                  AND  UPPER(U.DNI) = UPPER(RTRIM(@PI_DNI))
                )
				 AND U.ID_USUARIO != @PI_ID_USUARIO
            ),'-') ); 




        IF @P_MENSAJE = '-' 
		  BEGIN
            UPDATE
               SEG_M_USUARIO
            SET
                COD_USUARIO = @PI_COD_USUARIO, 
                ID_ENTIDAD = @PI_ID_ENTIDAD, 
                CLAVE_USUARIO = @PI_CLAVE_USUARIO, 
                NOMBRE_USUARIO = RTRIM(@PI_NOMBRE_USUARIO),
                APE_PATERNO = @PI_APE_PATERNO,
                APE_MATERNO= @PI_APE_MATERNO, 
                DNI = @PI_DNI ,
                TELEFONO=  @PI_TELEFONO, 
                CELULAR =  @PI_CELULAR, 
                CORREO  =@PI_CORREO,
                USU_MODIFICACION = @PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = GETDATE(),
                IP_MODIFICACION = @PI_IP_MODIFICACION
            WHERE
                ID_USUARIO = @PI_ID_USUARIO;

           SET  @PO_VALIDO  = 1;
		   END 
        ELSE
		 BEGIN 
           SET @PO_VALIDO  = 0;		
        END 
    SET @PO_MENSAJE = @P_MENSAJE;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_USUARIO_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=====================================================================================
   Objetivo            : Elimina USUARIO
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_USUARIO_ELIMINAR](
  @PI_ID_USUARIO         INT,
  @PO_VALIDO           INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM SEG_M_USUARIO
    WHERE ID_USUARIO = @PI_ID_USUARIO;
  SET   @PO_VALIDO =1;
END;




GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_USUARIO_ESTADO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=====================================================================================
   Objetivo            : Cambia estado USUARIO                                         
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_USUARIO_ESTADO](
  @PI_ID_USUARIO         INT,
  @PI_FLG_ESTADO        VARCHAR(100),
  @PI_IP_MODIFICACION  VARCHAR(100),
  @PI_USUARIO_MODIFICACION VARCHAR(100),
  @PO_VALIDO           INT  OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE SEG_M_USUARIO SET
           FLG_ESTADO = @PI_FLG_ESTADO,
           USU_MODIFICACION= @PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=@PI_IP_MODIFICACION,
           FEC_MODIFICACION=GETDATE()
    WHERE ID_USUARIO = @PI_ID_USUARIO;
   SET @PO_VALIDO =1;
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_USUARIO_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_USUARIO_INSERTAR](
  @PI_COD_USUARIO     VARCHAR(100),
  @PI_ID_ENTIDAD    INT,
  @PI_CLAVE_USUARIO     VARCHAR(100),
  @PI_NOMBRE_USUARIO    VARCHAR(200),
  @PI_APE_PATERNO   VARCHAR(200),
  @PI_APE_MATERNO  VARCHAR(200),
  @PI_DNI          VARCHAR(200),
  @PI_TELEFONO  VARCHAR(200),
  @PI_CELULAR   VARCHAR(200),
  @PI_CORREO    VARCHAR(200),
  @PI_IP_CREACION       VARCHAR(200),
  @PI_USUARIO_CREACION  VARCHAR(200),
  @PO_ID_USUARIO       INT  OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_VALIDO           INT  OUT ,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  @PO_MENSAJE         VARCHAR(200) OUT  -- MENSAJE DEL ERROR
)
AS
DECLARE @P_MENSAJE   VARCHAR(200)= '';

BEGIN
SET  @PO_ID_USUARIO = 0; 

	  SET @P_MENSAJE = (
        SELECT   
			ISNULL((
            SELECT
			 TOP 1 
               CASE
                  WHEN UPPER(U.DNI) = UPPER(RTRIM(@PI_DNI )) THEN
                          'El dni de usuario ya existe'
				 WHEN UPPER(RTRIM(U.COD_USUARIO)) = UPPER(RTRIM(@PI_COD_USUARIO)) THEN
                       'El codigo de usuario ya existe'  
                 END 
            FROM
                SEG_M_USUARIO U
            WHERE
                (
                  UPPER(U.DNI) = UPPER(RTRIM(@PI_DNI))
                 OR  UPPER(U.COD_USUARIO) = UPPER(RTRIM(@PI_COD_USUARIO))
                )
            ),'-') ); 

        IF @P_MENSAJE = '-' 
		  BEGIN
            INSERT INTO
               SEG_M_USUARIO
                (
                  ID_ENTIDAD,
                  COD_USUARIO,
                  CLAVE_USUARIO,           
                  NOMBRE_USUARIO, 
                  APE_PATERNO,
                  APE_MATERNO,
                  DNI,
                  TELEFONO,
                  CELULAR,
                  CORREO, 
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  @PI_ID_ENTIDAD,
                  @PI_COD_USUARIO,
                  @PI_CLAVE_USUARIO,
                  @PI_NOMBRE_USUARIO,
                  @PI_APE_PATERNO,
                  @PI_APE_MATERNO,
                  @PI_DNI,
                  @PI_TELEFONO,
                  @PI_CELULAR,
                  @PI_CORREO,
                  1,
                  @PI_USUARIO_CREACION,
                  GETDATE(),
                  @PI_IP_CREACION
                );

            SET @PO_VALIDO  = 1;
		    SET  @PO_ID_USUARIO = SCOPE_IDENTITY() 
		END 
        ELSE
		 BEGIN 
          SET  @PO_VALIDO  = 0;
        END 
   SET  @PO_MENSAJE = @P_MENSAJE;

END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_USUARIO_LISTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_USUARIO_LISTAR](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_NOMBRE_USUARIO VARCHAR,
  @PI_FLG_ESTADO VARCHAR
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_USUARIO,
            V.COD_USUARIO,
            V.ID_ENTIDAD, 
            v.CLAVE_USUARIO, 
            V.NOMBRE_USUARIO,
			V.NOMBRES_COMPLETOS, 
            E.DESC_ENTIDAD,  
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 101) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            V_USUARIO V
            LEFT JOIN SEG_M_ENTIDAD E ON E.ID_ENTIDAD = V.ID_ENTIDAD
       
             
        WHERE
             UPPER(V.NOMBRE_USUARIO) LIKE '%' +ISNULL(@PI_NOMBRE_USUARIO,V.NOMBRE_USUARIO) +'%'
            AND UPPER(V.FLG_ESTADO)  LIKE '%' +ISNULL(@PI_FLG_ESTADO,V.FLG_ESTADO) +'%'
        ORDER BY V.ID_USUARIO DESC;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_USUARIO_LISTAR_UNO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_USUARIO_LISTAR_UNO](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_USUARIO INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_USUARIO,
            V.COD_USUARIO,  
            V.CLAVE_USUARIO,  
            V.NOMBRE_USUARIO,  
            V.ID_ENTIDAD, 
            V.APE_PATERNO,
            V.APE_MATERNO, 
            V.DNI, 
            V.CELULAR,
            V.TELEFONO,
            V.CORREO, 
            V.FLG_ESTADO,
            V.USU_CREACION,
            CONVERT(VARCHAR,V.FEC_CREACION, 101) FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            CONVERT(VARCHAR,V.FEC_MODIFICACION, 101) FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            SEG_M_USUARIO V
             
        WHERE
            V.ID_USUARIO=@PI_ID_USUARIO; 
        
END;




GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_USUARIO_PAGINACION]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_USUARIO_PAGINACION]
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
          SET @P_ORDEN_COLUMNA_AUX = 'ID_USUARIO';
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
/****** Object:  StoredProcedure [dbo].[P_ADMIN_USUARIOCARGO_ELIMINAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=====================================================================================
   Objetivo            : Elimina USUARIO CARGO
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
CREATE PROCEDURE [dbo].[P_ADMIN_USUARIOCARGO_ELIMINAR](
  @PI_ID_USUARIO_CARGO        INT,
  @PO_VALIDO             INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM SEG_D_USUARIO_CARGO
    WHERE ID_USUARIO_CARGO = @PI_ID_USUARIO_CARGO;
  SET  @PO_VALIDO =1;
END;


GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_USUARIOCARGO_INSERTAR]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_ADMIN_USUARIOCARGO_INSERTAR](
  @PI_ID_USUARIO     INT,
  @PI_ID_OFICINA   INT,
  @PI_ID_CARGO     INT,
  @PI_FLG_JEFE    INT,
  @PI_IP_CREACION      VARCHAR(200),
  @PI_USUARIO_CREACION  VARCHAR(200),
  @PO_VALIDO            INT OUT   -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN 
            INSERT INTO
               SEG_D_USUARIO_CARGO
                (
                  ID_USUARIO,
                  ID_OFICINA,   
                  ID_CARGO,      
                  FLG_JEFE, 
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  @PI_ID_USUARIO,
                  @PI_ID_OFICINA,
                  @PI_ID_CARGO,
                  @PI_FLG_JEFE,
                  1,
                  @PI_USUARIO_CREACION,
                  GETDATE(),
                  @PI_IP_CREACION
                );

          SET  @PO_VALIDO  = 1;
   
END;



GO
/****** Object:  StoredProcedure [dbo].[P_ADMIN_USUARIOCARGO_LISTAR_UNO]    Script Date: 13/05/2021 2:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_ADMIN_USUARIOCARGO_LISTAR_UNO](
  --PO_CURSOR  OUT CURSOR_TYPE,
  @PI_ID_USUARIO INT
)
AS
BEGIN
    --OPEN PO_CURSOR FOR
        SELECT
            V.ID_USUARIO_CARGO,
            V.ID_USUARIO,
            V.ID_OFICINA,  
            V.ID_CARGO,  
            V.FLG_JEFE, 
            O.DESC_OFICINA, 
            C.DESC_CARGO
        FROM
            SEG_D_USUARIO_CARGO V
            INNER JOIN  SEG_M_OFICINA O ON O.ID_OFICINA = V.ID_OFICINA 
            INNER JOIN  SEG_M_CARGO C ON C.ID_CARGO = V.ID_CARGO 
             
        WHERE
            V.ID_USUARIO=@PI_ID_USUARIO; 
        
END;




GO
