--prompt
--prompt Creating table LOGG
--prompt ===================
--prompt
create table TRAMITE.LOGG
(
  xdd VARCHAR2(2500)
)
;

--prompt
--prompt Creating table SEG_D_USUARIO_CARGO
--prompt ==================================
--prompt
create table TRAMITE.SEG_D_USUARIO_CARGO
(
  id_usuario_cargo NUMBER(20),
  id_usuario       NUMBER(20),
  id_cargo         NUMBER(20),
  id_oficina       NUMBER(20),
  flg_jefe         CHAR(1),
  flg_estado       CHAR(1) default 1,
  usu_creacion     VARCHAR2(50),
  fec_creacion     DATE default SYSDATE,
  ip_creacion      VARCHAR2(50),
  usu_modificacion VARCHAR2(50),
  fec_modificacion DATE,
  ip_modificacion  VARCHAR2(50)
)
;

--prompt
--prompt Creating table SEG_M_CARGO
--prompt ==========================
--prompt
create table TRAMITE.SEG_M_CARGO
(
  id_cargo         NUMBER(20) not null,
  desc_cargo       VARCHAR2(150),
  flg_estado       CHAR(1) default 1,
  usu_creacion     VARCHAR2(50),
  fec_creacion     DATE default SYSDATE,
  ip_creacion      VARCHAR2(50),
  usu_modificacion VARCHAR2(50),
  fec_modificacion DATE,
  ip_modificacion  VARCHAR2(50)
)
;
alter table TRAMITE.SEG_M_CARGO
  add constraint PK_C_ID_CARGO primary key (ID_CARGO);

--prompt
--prompt Creating table SEG_M_ENTIDAD
--prompt ============================
--prompt
create table TRAMITE.SEG_M_ENTIDAD
(
  id_entidad       NUMBER(20),
  desc_entidad     VARCHAR2(250),
  sigla_entidad    VARCHAR2(250),
  flg_estado       CHAR(1) default 1,
  usu_creacion     VARCHAR2(50),
  fec_creacion     DATE default SYSDATE,
  ip_creacion      VARCHAR2(50),
  usu_modificacion VARCHAR2(50),
  fec_modificacion DATE,
  ip_modificacion  VARCHAR2(50)
)
;

--prompt
--prompt Creating table SEG_M_OFICINA
--prompt ============================
--prompt
create table TRAMITE.SEG_M_OFICINA
(
  id_oficina         NUMBER(20) not null,
  id_entidad         NUMBER(20) default 1,
  id_oficina_padre   NUMBER(20),
  desc_corta_oficina VARCHAR2(150),
  desc_oficina       VARCHAR2(250),
  sigla_oficina      VARCHAR2(150),
  vds                DATE,
  flg_estado         CHAR(1) default 1,
  usu_creacion       VARCHAR2(50),
  fec_creacion       DATE default SYSDATE,
  ip_creacion        VARCHAR2(50),
  usu_modificacion   VARCHAR2(50),
  fec_modificacion   DATE,
  ip_modificacion    VARCHAR2(50)
)
;
alter table TRAMITE.SEG_M_OFICINA
  add constraint PK_O_ID_OFICINA primary key (ID_OFICINA);

--prompt
--prompt Creating table SEG_M_PERFIL
--prompt ===========================
--prompt
create table TRAMITE.SEG_M_PERFIL
(
  id_perfil        NUMBER(20),
  id_sistema       NUMBER(20),
  desc_perfil      VARCHAR2(150),
  flg_estado       CHAR(1) default 1,
  usu_creacion     VARCHAR2(50),
  fec_creacion     DATE default SYSDATE,
  ip_creacion      VARCHAR2(50),
  usu_modificacion VARCHAR2(50),
  fec_modificacion DATE,
  ip_modificacion  VARCHAR2(50)
)
;

--prompt
--prompt Creating table SEG_M_SISTEMA
--prompt ============================
--prompt
create table TRAMITE.SEG_M_SISTEMA
(
  id_sistema       NUMBER(20),
  desc_sistema     VARCHAR2(150),
  flg_estado       CHAR(1) default 1,
  usu_creacion     VARCHAR2(50),
  fec_creacion     DATE default SYSDATE,
  ip_creacion      VARCHAR2(50),
  usu_modificacion VARCHAR2(50),
  fec_modificacion DATE,
  ip_modificacion  VARCHAR2(50)
)
;

--prompt
--prompt Creating table SEG_M_USUARIO
--prompt ============================
--prompt
create table TRAMITE.SEG_M_USUARIO
(
  id_usuario       NUMBER(20),
  cod_usuario      VARCHAR2(150),
  clave_usuario    VARCHAR2(150) default 123,
  nombre_usuario   VARCHAR2(150),
  x4               DATE,
  x5               DATE,
  x6               DATE,
  flg_estado       CHAR(1) default 1,
  usu_creacion     VARCHAR2(50),
  fec_creacion     DATE default SYSDATE,
  ip_creacion      VARCHAR2(50),
  usu_modificacion VARCHAR2(50),
  fec_modificacion DATE,
  ip_modificacion  VARCHAR2(50)
)
;

--prompt
--prompt Creating table SEG_R_USUARIO_PERFIL
--prompt ===================================
--prompt
create table TRAMITE.SEG_R_USUARIO_PERFIL
(
  id_usuario_perfil NUMBER(20),
  id_sistema        NUMBER(20),
  id_usuario        NUMBER(20),
  id_perfil         NUMBER(20),
  id_oficina        NUMBER(20),
  id_cargo          NUMBER(20)
)
;

--prompt
--prompt Creating table TRA_D_DOCUMENTO_ADJUNTO
--prompt ======================================
--prompt
create table TRAMITE.TRA_D_DOCUMENTO_ADJUNTO
(
  id_documento_adjunto NUMBER(20) not null,
  id_documento         NUMBER(20),
  nombre_archivo       VARCHAR2(500),
  codigo_archivo       VARCHAR2(500),
  peso_archivo         NUMBER,
  extension_archivo    VARCHAR2(100),
  flg_firma            CHAR(1) default 0,
  flg_estado           CHAR(1) default 1,
  usu_creacion         VARCHAR2(50),
  fec_creacion         DATE default SYSDATE,
  ip_creacion          VARCHAR2(50),
  usu_modificacion     VARCHAR2(50),
  fec_modificacion     DATE,
  ip_modificacion      VARCHAR2(50)
)
;

--prompt
--prompt Creating table TRA_D_DOCUMENTO_ANEXO
--prompt ====================================
--prompt
create table TRAMITE.TRA_D_DOCUMENTO_ANEXO
(
  id_documento_anexo NUMBER(20) not null,
  nro_cut            VARCHAR2(20),
  id_documento_padre NUMBER(20),
  id_documento_hijo  NUMBER(20),
  flg_anexado        CHAR(1) default 0,
  flg_estado         CHAR(1) default 1,
  usu_creacion       VARCHAR2(50),
  fec_creacion       DATE default SYSDATE,
  ip_creacion        VARCHAR2(50),
  usu_modificacion   VARCHAR2(50),
  fec_modificacion   DATE,
  ip_modificacion    VARCHAR2(50)
)
;

--prompt
--prompt Creating table TRA_D_DOCUMENTO_DESTINO
--prompt ======================================
--prompt
create table TRAMITE.TRA_D_DOCUMENTO_DESTINO
(
  id_documento_destino INTEGER not null,
  id_documento         INTEGER,
  id_entidad           INTEGER,
  oficina              VARCHAR2(150),
  rubrica              VARCHAR2(30),
  remitente            VARCHAR2(150),
  cargo                VARCHAR2(150),
  direccion            VARCHAR2(500),
  flg_mgd              CHAR(1) default 1,
  flg_domicilio        CHAR(1) default 1,
  flg_estado           CHAR(1) default 1,
  usu_creacion         VARCHAR2(50),
  fec_creacion         DATE default SYSDATE,
  ip_creacion          VARCHAR2(50),
  usu_modificacion     VARCHAR2(50),
  fec_modificacion     DATE,
  ip_modificacion      VARCHAR2(50)
)
;

--prompt
--prompt Creating table TRA_D_DOCUMENTO_MOVIMIENTO
--prompt =========================================
--prompt
create table TRAMITE.TRA_D_DOCUMENTO_MOVIMIENTO
(
  id_documento_movimiento NUMBER(20) not null,
  id_documento            NUMBER(20),
  id_estado_documento     NUMBER(20),
  movimiento              VARCHAR2(4000),
  id_usuario              NUMBER(20),
  id_oficina              NUMBER(20),
  id_cargo                NUMBER(20),
  flg_estado              CHAR(1) default 1,
  usu_creacion            VARCHAR2(50),
  fec_creacion            DATE default SYSDATE,
  ip_creacion             VARCHAR2(50),
  usu_modificacion        VARCHAR2(50),
  fec_modificacion        DATE,
  ip_modificacion         VARCHAR2(50)
)
;

--prompt
--prompt Creating table TRA_D_DOCUMENTO_OFICINA
--prompt ======================================
--prompt
create table TRAMITE.TRA_D_DOCUMENTO_OFICINA
(
  id_documento_oficina NUMBER(20) not null,
  id_documento         NUMBER(20),
  id_oficina           NUMBER(20),
  id_usuario           NUMBER(20),
  id_cargo             NUMBER(20),
  flg_cargo            CHAR(1) default 0,
  cod_cargo            VARCHAR2(150),
  fec_cargo            DATE,
  flg_estado           CHAR(1) default 1,
  usu_creacion         VARCHAR2(50),
  fec_creacion         DATE default SYSDATE,
  ip_creacion          VARCHAR2(50),
  usu_modificacion     VARCHAR2(50),
  fec_modificacion     DATE,
  ip_modificacion      VARCHAR2(50)
)
;

--prompt
--prompt Creating table TRA_D_DOCUMENTO_USUARIO
--prompt ======================================
--prompt
create table TRAMITE.TRA_D_DOCUMENTO_USUARIO
(
  id_documento_usuario NUMBER(20),
  id_documento         NUMBER(20),
  id_usuario           NUMBER(20),
  id_oficina           NUMBER(20),
  id_cargo             NUMBER(20),
  id_tarea             NUMBER(20),
  nro_prioridad        INTEGER,
  flg_cumplido         CHAR(1) default 0,
  fec_cumplido         DATE,
  flg_rechazado        CHAR(1) default 0,
  flg_editar           CHAR(1),
  flg_permitido        CHAR(1) default 1,
  flg_edito            CHAR(1) default 0,
  nombre_usuario       VARCHAR2(150),
  nombre_oficina       VARCHAR2(150),
  dasdsa               DATE,
  flg_estado           CHAR(1) default 1,
  usu_creacion         VARCHAR2(100),
  fec_creacion         DATE default SYSDATE,
  ip_creacion          VARCHAR2(20),
  usu_modificacion     VARCHAR2(100),
  fec_modificacion     DATE,
  ip_modificacion      VARCHAR2(20)
)
;

--prompt
--prompt Creating table TRA_D_PLANTILLA_CAMPO
--prompt ====================================
--prompt
create table TRAMITE.TRA_D_PLANTILLA_CAMPO
(
  id_plantilla_campo INTEGER,
  id_plantilla       INTEGER,
  id_campo           INTEGER,
  orden              NUMBER,
  flg_estado         CHAR(1) default 1,
  usu_creacion       VARCHAR2(50),
  fec_creacion       DATE default SYSDATE,
  ip_creacion        VARCHAR2(50),
  usu_modificacion   VARCHAR2(50),
  fec_modificacion   DATE,
  ip_modificacion    VARCHAR2(50)
)
;

--prompt
--prompt Creating table TRA_L_CABECERA
--prompt =============================
--prompt
create table TRAMITE.TRA_L_CABECERA
(
  id_cabecera      INTEGER not null,
  nombre_anio      VARCHAR2(3000),
  nombre_decenio   VARCHAR2(3000),
  codigo_imagen    VARCHAR2(3000),
  nombre_imagen    VARCHAR2(3000),
  extension_imagen VARCHAR2(3000),
  flg_estado       CHAR(1) default 1,
  usu_creacion     VARCHAR2(50),
  fec_creacion     DATE default SYSDATE,
  ip_creacion      VARCHAR2(50),
  usu_modificacion VARCHAR2(50),
  fec_modificacion DATE,
  ip_modificacion  VARCHAR2(50)
)
;

--prompt
--prompt Creating table TRA_L_CAMPO
--prompt ==========================
--prompt
create table TRAMITE.TRA_L_CAMPO
(
  id_campo         INTEGER,
  id_campo_padre   INTEGER,
  desc_campo       VARCHAR2(500),
  codigo_campo     VARCHAR2(500),
  flg_estado       CHAR(1) default 1,
  usu_creacion     VARCHAR2(50),
  fec_creacion     DATE default SYSDATE,
  ip_creacion      VARCHAR2(50),
  usu_modificacion VARCHAR2(50),
  fec_modificacion DATE,
  ip_modificacion  VARCHAR2(50)
)
;

--prompt
--prompt Creating table TRA_L_ENTIDADES
--prompt ==============================
--prompt
create table TRAMITE.TRA_L_ENTIDADES
(
  id_entidad          NUMBER(20),
  desc_entidad        VARCHAR2(150),
  ruc_entidad         VARCHAR2(11),
  abreviacion_entidad VARCHAR2(150),
  direccion_entidad   VARCHAR2(50),
  flg_estado          CHAR(1) default 1,
  usu_creacion        VARCHAR2(50),
  fec_creacion        DATE default SYSDATE,
  ip_creacion         VARCHAR2(50),
  usu_modificacion    VARCHAR2(50),
  fec_modificacion    DATE,
  ip_modificacion     VARCHAR2(50)
)
;

--prompt
--prompt Creating table TRA_L_ESTADO_DOCUMENTO
--prompt =====================================
--prompt
create table TRAMITE.TRA_L_ESTADO_DOCUMENTO
(
  id_estado_documento   NUMBER(20) not null,
  desc_estado_documento VARCHAR2(200),
  flg_estado            CHAR(1) default 1,
  usu_creacion          VARCHAR2(50),
  fec_creacion          DATE default SYSDATE,
  ip_creacion           VARCHAR2(50),
  usu_modificacion      VARCHAR2(50),
  fec_modificacion      DATE,
  ip_modificacion       VARCHAR2(50)
)
;

--prompt
--prompt Creating table TRA_L_TAREA
--prompt ==========================
--prompt
create table TRAMITE.TRA_L_TAREA
(
  id_tarea         NUMBER(20),
  desc_tarea       VARCHAR2(150),
  flg_estado       CHAR(1) default 1,
  usu_creacion     VARCHAR2(50),
  fec_creacion     DATE default SYSDATE,
  ip_creacion      VARCHAR2(50),
  usu_modificacion VARCHAR2(50),
  fec_modificacion DATE,
  ip_modificacion  VARCHAR2(50)
)
;

--prompt
--prompt Creating table TRA_L_TIPO_DOCUMENTO
--prompt ===================================
--prompt
create table TRAMITE.TRA_L_TIPO_DOCUMENTO
(
  id_tipo_documento      NUMBER(20) not null,
  id_tipo_documento_pide VARCHAR2(2),
  desc_tipo_documento    VARCHAR2(200),
  sigla_tipo_documento   VARCHAR2(100),
  flg_mgd                CHAR(1) default 0,
  flg_estado             CHAR(1) default 1,
  usu_creacion           VARCHAR2(50),
  fec_creacion           DATE default SYSDATE,
  ip_creacion            VARCHAR2(50),
  usu_modificacion       VARCHAR2(50),
  fec_modificacion       DATE,
  ip_modificacion        VARCHAR2(50)
)
;

--prompt
--prompt Creating table TRA_M_CORRELATIVO
--prompt ================================
--prompt
create table TRAMITE.TRA_M_CORRELATIVO
(
  id_correlativo    NUMBER(20),
  id_tipo_documento NUMBER(20),
  id_oficina        NUMBER(20),
  id_perfil         NUMBER(20),
  n_correlativo     NUMBER(20),
  n_anio            NUMBER(20)
)
;

--prompt
--prompt Creating table TRA_M_CUT
--prompt ========================
--prompt
create table TRAMITE.TRA_M_CUT
(
  id_cut           NUMBER(20) not null,
  nro_cut          NUMBER(20),
  id_anio          NUMBER(10),
  flg_estado       CHAR(1) default 1,
  usu_creacion     VARCHAR2(50),
  fec_creacion     DATE default SYSDATE,
  ip_creacion      VARCHAR2(50),
  usu_modificacion VARCHAR2(50),
  fec_modificacion DATE,
  ip_modificacion  VARCHAR2(50)
)
;
alter table TRAMITE.TRA_M_CUT
  add constraint PK_C_ID_CUT primary key (ID_CUT);
alter table TRAMITE.TRA_M_CUT
  add constraint UK_C_ID_ANIO unique (ID_ANIO);

--prompt
--prompt Creating table TRA_M_DOCUMENTO
--prompt ==============================
--prompt
create table TRAMITE.TRA_M_DOCUMENTO
(
  id_documento          NUMBER(20) not null,
  nro_cut               VARCHAR2(20) not null,
  id_tipo               INTEGER default 1,
  id_tipo_documento     NUMBER(20),
  id_flujo              INTEGER default 1,
  id_estado_documento   INTEGER,
  asunto                VARCHAR2(2000),
  referencia            VARCHAR2(2000),
  correlativo_documento NUMBER(20),
  nro_documento         VARCHAR2(500),
  cod_archivo           VARCHAR2(100),
  nombre_archivo        VARCHAR2(200),
  extension_archivo     VARCHAR2(50),
  clave_firma           VARCHAR2(20),
  fec_firma             DATE,
  cod_archivo_firmado   VARCHAR2(100),
  flg_firma             CHAR(1) default 0,
  flg_proyectado        CHAR(1),
  flg_zip               CHAR(1) default 0,
  id_usuario            NUMBER(20) not null,
  id_oficina            NUMBER(20) not null,
  id_cargo              NUMBER(20) not null,
  flg_estado            CHAR(1) default 1,
  usu_creacion          VARCHAR2(50),
  fec_creacion          DATE default SYSDATE,
  ip_creacion           VARCHAR2(50),
  usu_modificacion      VARCHAR2(50),
  fec_modificacion      DATE,
  ip_modificacion       VARCHAR2(50)
)
;
comment on column TRAMITE.TRA_M_DOCUMENTO.id_tipo
  is '1 : Digital  -  2 : Fisico';
comment on column TRAMITE.TRA_M_DOCUMENTO.id_flujo
  is '1 : Interno  - 2 : Externo';
comment on column TRAMITE.TRA_M_DOCUMENTO.flg_firma
  is '1 : Firmado - 0 : No Firmado';
alter table TRAMITE.TRA_M_DOCUMENTO
  add constraint PK_D_ID_DOCUMENTO primary key (ID_DOCUMENTO);

--prompt
--prompt Creating table TRA_M_PLANTILLA
--prompt ==============================
--prompt
create table TRAMITE.TRA_M_PLANTILLA
(
  id_plantilla        INTEGER,
  id_tipo_documento   INTEGER,
  desc_plantilla      VARCHAR2(500),
  codigo_documento    VARCHAR2(4000),
  nombre_documento    VARCHAR2(4000),
  extension_documento VARCHAR2(4000),
  flg_estado          CHAR(1) default 1,
  usu_creacion        VARCHAR2(50),
  fec_creacion        DATE default SYSDATE,
  ip_creacion         VARCHAR2(50),
  usu_modificacion    VARCHAR2(50),
  fec_modificacion    DATE,
  ip_modificacion     VARCHAR2(50)
)
;

