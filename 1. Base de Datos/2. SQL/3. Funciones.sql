--prompt
--prompt Creating function FN_GENERAR_CLAVE
--prompt ==================================
--prompt
CREATE   FUNCTION FN_GENERAR_CLAVE()
   RETURNS VARCHAR(8) 
   AS 
   BEGIN
       DECLARE @P_CUENTA INTEGER, @P_CLAVE VARCHAR(8);
       SET @P_CLAVE = SUBSTRING(CONVERT(varchar(255), (SELECT NEW_ID FROM V_CLAVE)),1,8); --DBMS_RANDOM.string('X', 8);
       SELECT 
           @P_CUENTA = COUNT(*)  
       FROM 
           TRA_M_DOCUMENTO 
       WHERE 
           CLAVE_FIRMA = @P_CLAVE;
       IF @P_CUENTA > 0  
         BEGIN
             SELECT @P_CLAVE = dbo.FN_GENERAR_CLAVE()  ;
         END; 
       RETURN(@P_CLAVE);
   END; 

