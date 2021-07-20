----------------------------------------------
-- Export file for user TRAMITE             --
-- Created by ivans on 01/05/2021, 5:13:00  --
----------------------------------------------

spool 3.vistas.log

prompt
prompt Creating view V_USUARIO
prompt =======================
prompt
CREATE OR REPLACE VIEW TRAMITE.V_USUARIO AS
SELECT
      U.ID_USUARIO,
      U.COD_USUARIO,
      UPPER(U.NOMBRE_USUARIO) NOMBRE_USUARIO,
      U.APE_PATERNO,
      U.APE_MATERNO,
      U.NOMBRE_USUARIO || ' ' ||  U.APE_PATERNO || ' ' || U.APE_MATERNO NOMBRES_COMPLETOS,
      U.DNI,
      U.TELEFONO,
      U.CELULAR,
      U.CORREO,
      U.CLAVE_USUARIO,
      (SELECT
           LISTAGG( C.DESC_CARGO  || ' - ' ||  O.DESC_OFICINA,   ' ' || CHR(13)) WITHIN GROUP (ORDER BY UC.ID_USUARIO_CARGO)  --  ,  LISTAGG(S.DNOMBRE, ', ')   WITHIN GROUP (ORDER BY S.DDOCUMENTO)
       FROM
           SEG_D_USUARIO_CARGO UC
           INNER JOIN SEG_M_CARGO C ON C.ID_CARGO = UC.ID_CARGO
           INNER JOIN SEG_M_OFICINA O ON O.ID_OFICINA = UC.ID_OFICINA
       WHERE
           UC.ID_USUARIO = U.ID_USUARIO) AS DESC_CARGO,
            U.FLG_ESTADO,
            U.USU_CREACION,
            TO_CHAR(U.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FEC_CREACION,
            U.IP_CREACION,
            U.USU_MODIFICACION,
            TO_CHAR(U.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FEC_MODIFICACION,
            U.IP_MODIFICACION


  FROM
      SEG_M_USUARIO U

  ORDER BY
      U.ID_USUARIO ASC
/


spool off
