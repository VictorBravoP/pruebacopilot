----------------------------------------------
-- Export file for user TRAMITE             --
-- Created by ivans on 01/05/2021, 5:12:41  --
----------------------------------------------

--spool 2.secuencias.log

--prompt
--prompt Creating sequence SEQ_CARGO
--prompt ===========================
--prompt
create sequence TRAMITE.SEQ_CARGO
minvalue 1
maxvalue 999999999999999999999999
start with 18
increment by 1
nocache;

--prompt
--prompt Creating sequence SEQ_ENTIDAD
--prompt =============================
--prompt
create sequence TRAMITE.SEQ_ENTIDAD
minvalue 1
maxvalue 99999999999999999999999
start with 6
increment by 1
nocache;

--prompt
--prompt Creating sequence SEQ_ENTIDADEXTERNA
--prompt ====================================
--prompt
create sequence TRAMITE.SEQ_ENTIDADEXTERNA
minvalue 1
maxvalue 9999999999999999999999999
start with 11
increment by 1
nocache;

--prompt
--prompt Creating sequence SEQ_ID_SISTEMAS_PERFIL_MODULO
--prompt ===============================================
--prompt
create sequence TRAMITE.SEQ_ID_SISTEMAS_PERFIL_MODULO
minvalue 1
maxvalue 9999999999999999999999999
start with 41
increment by 1
nocache;

--prompt
--prompt Creating sequence SEQ_ID_SISTEMAS_PERFIL_USUARIO
--prompt ================================================
--prompt
create sequence TRAMITE.SEQ_ID_SISTEMAS_PERFIL_USUARIO
minvalue 1
maxvalue 999999999999999999999999
start with 16
increment by 1
nocache;

--prompt
--prompt Creating sequence SEQ_OFICINA
--prompt =============================
--prompt
create sequence TRAMITE.SEQ_OFICINA
minvalue 1
maxvalue 9999999999999999999999999
start with 1201
increment by 200
nocache;

--prompt
--prompt Creating sequence SEQ_OFICINAFILTRO
--prompt ===================================
--prompt
create sequence TRAMITE.SEQ_OFICINAFILTRO
minvalue 1
maxvalue 9999999999999999999999999
start with 30
increment by 1
nocache;

--prompt
--prompt Creating sequence SEQ_OFICINAPERMISO
--prompt ====================================
--prompt
create sequence TRAMITE.SEQ_OFICINAPERMISO
minvalue 1
maxvalue 9999999999999999999999999
start with 24
increment by 1
nocache;

--prompt
--prompt Creating sequence SEQ_PERFIL
--prompt ============================
--prompt
create sequence TRAMITE.SEQ_PERFIL
minvalue 1
maxvalue 999999999999999999999999
start with 24
increment by 1
nocache;

--prompt
--prompt Creating sequence SEQ_PLANTILLA
--prompt ===============================
--prompt
create sequence TRAMITE.SEQ_PLANTILLA
minvalue 1
maxvalue 9999999999999999999999999
start with 22
increment by 1
nocache;

--prompt
--prompt Creating sequence SEQ_PLANTILLA_CAMPO
--prompt =====================================
--prompt
create sequence TRAMITE.SEQ_PLANTILLA_CAMPO
minvalue 1
maxvalue 999999999999999999999999
start with 202
increment by 1
nocache;

--prompt
--prompt Creating sequence SEQ_SEDE
--prompt ==========================
--prompt
create sequence TRAMITE.SEQ_SEDE
minvalue 1
maxvalue 999999999999999999999999
start with 6
increment by 1
nocache;

--prompt
--prompt Creating sequence SEQ_USUARIO
--prompt =============================
--prompt
create sequence TRAMITE.SEQ_USUARIO
minvalue 1
maxvalue 9999999999999999999999999
start with 1607
increment by 1
nocache;

--prompt
--prompt Creating sequence SEQ_USUARIO_CARGO
--prompt ===================================
--prompt
create sequence TRAMITE.SEQ_USUARIO_CARGO
minvalue 1
maxvalue 999999999999999999999999
start with 141
increment by 10
nocache;


--spool off
