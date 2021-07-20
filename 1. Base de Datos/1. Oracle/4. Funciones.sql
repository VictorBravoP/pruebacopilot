--prompt
--prompt Creating function FN_GENERAR_CLAVE
--prompt ==================================
--prompt
CREATE OR REPLACE FUNCTION TRAMITE.FN_GENERAR_CLAVE
   RETURN VARCHAR2
   IS CLAVE VARCHAR2(8);
   P_CUENTA INTEGER;
   BEGIN
       SELECT 
           DBMS_RANDOM.string('X', 8) 
           INTO 
           CLAVE 
       FROM 
           DUAL;
       SELECT 
           COUNT(*) INTO P_CUENTA 
       FROM 
           TRA_M_DOCUMENTO 
       WHERE 
           CLAVE_FIRMA = CLAVE;
       IF P_CUENTA > 0 THEN
         BEGIN
         SELECT 
             FN_GENERAR_CLAVE 
             INTO 
             CLAVE 
         FROM 
             DUAL;
         END;
       END IF;
       RETURN(CLAVE);
   END;
/

