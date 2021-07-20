--prompt Disabling triggers for TRAMITE.SEG_D_USUARIO_CARGO...
alter table TRAMITE.SEG_D_USUARIO_CARGO disable all triggers;
--prompt Disabling triggers for TRAMITE.SEG_M_CARGO...
alter table TRAMITE.SEG_M_CARGO disable all triggers;
--prompt Disabling triggers for TRAMITE.SEG_M_ENTIDAD...
alter table TRAMITE.SEG_M_ENTIDAD disable all triggers;
--prompt Disabling triggers for TRAMITE.SEG_M_OFICINA...
alter table TRAMITE.SEG_M_OFICINA disable all triggers;
--prompt Disabling triggers for TRAMITE.SEG_M_PERFIL...
alter table TRAMITE.SEG_M_PERFIL disable all triggers;
--prompt Disabling triggers for TRAMITE.SEG_M_SISTEMA...
alter table TRAMITE.SEG_M_SISTEMA disable all triggers;
--prompt Disabling triggers for TRAMITE.SEG_M_USUARIO...
alter table TRAMITE.SEG_M_USUARIO disable all triggers;
--prompt Disabling triggers for TRAMITE.SEG_R_USUARIO_PERFIL...
alter table TRAMITE.SEG_R_USUARIO_PERFIL disable all triggers;
--prompt Disabling triggers for TRAMITE.TRA_D_PLANTILLA_CAMPO...
alter table TRAMITE.TRA_D_PLANTILLA_CAMPO disable all triggers;
--prompt Disabling triggers for TRAMITE.TRA_L_CABECERA...
alter table TRAMITE.TRA_L_CABECERA disable all triggers;
--prompt Disabling triggers for TRAMITE.TRA_L_CAMPO...
alter table TRAMITE.TRA_L_CAMPO disable all triggers;
--prompt Disabling triggers for TRAMITE.TRA_L_ENTIDADES...
alter table TRAMITE.TRA_L_ENTIDADES disable all triggers;
--prompt Disabling triggers for TRAMITE.TRA_L_ESTADO_DOCUMENTO...
alter table TRAMITE.TRA_L_ESTADO_DOCUMENTO disable all triggers;
--prompt Disabling triggers for TRAMITE.TRA_L_TAREA...
alter table TRAMITE.TRA_L_TAREA disable all triggers;
--prompt Disabling triggers for TRAMITE.TRA_L_TIPO_DOCUMENTO...
alter table TRAMITE.TRA_L_TIPO_DOCUMENTO disable all triggers;
--prompt Disabling triggers for TRAMITE.TRA_M_CORRELATIVO...
alter table TRAMITE.TRA_M_CORRELATIVO disable all triggers;
--prompt Disabling triggers for TRAMITE.TRA_M_CUT...
alter table TRAMITE.TRA_M_CUT disable all triggers;
--prompt Disabling triggers for TRAMITE.TRA_M_PLANTILLA...
alter table TRAMITE.TRA_M_PLANTILLA disable all triggers;
--prompt Loading TRAMITE.SEG_D_USUARIO_CARGO...
insert into TRAMITE.SEG_D_USUARIO_CARGO (id_usuario_cargo, id_usuario, id_cargo, id_oficina, flg_jefe, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (3, 184, 1, 1, '1', '1', null, to_date('23-04-2021 18:18:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_D_USUARIO_CARGO (id_usuario_cargo, id_usuario, id_cargo, id_oficina, flg_jefe, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1, 1, 1, 1, '1', '1', null, to_date('23-04-2021 18:18:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_D_USUARIO_CARGO (id_usuario_cargo, id_usuario, id_cargo, id_oficina, flg_jefe, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (2, 1, 1, 2, '1', '1', null, to_date('23-04-2021 18:18:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 3 records loaded
--prompt Loading TRAMITE.SEG_M_CARGO...
insert into TRAMITE.SEG_M_CARGO (id_cargo, desc_cargo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (3, 'Sub-Directora', '1', null, to_date('23-04-2021 18:09:31', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_CARGO (id_cargo, desc_cargo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1, 'Director', '1', null, to_date('23-04-2021 18:09:31', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_CARGO (id_cargo, desc_cargo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (2, 'Profesional', '1', null, to_date('23-04-2021 18:09:31', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 3 records loaded
--prompt Loading TRAMITE.SEG_M_ENTIDAD...
insert into TRAMITE.SEG_M_ENTIDAD (id_entidad, desc_entidad, sigla_entidad, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1, 'AUTORIZACION NACIONAL DEL AGUA', 'ANA', '1', null, to_date('23-04-2021 18:18:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_ENTIDAD (id_entidad, desc_entidad, sigla_entidad, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (2, 'MODERNIZACION DE LA GESTION DE RECURSOS HIDRICOS', 'MGRH', '1', null, to_date('23-04-2021 18:18:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 2 records loaded
--prompt Loading TRAMITE.SEG_M_OFICINA...
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (133, 2, null, 'MGRH-CARH', 'COORDINACIÓN PARA LA ADMINISTRACOÓN DE LOS RECURSOS HÍDRICOS', 'MGRH-CARH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (62, 1, null, 'AAA - JEQUETEPEQUE ZARUMILLA', 'AUTORIDAD ADMINISTRATIVA DEL AGUA - JEQUETEPEQUE ZARUMILLA', 'AAA.JZ', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (64, 1, null, 'ALA - ZAÑA', 'ADMINISTRACION LOCAL DE AGUA ZAÑA', 'AAA.JZ-ALA.Z', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (65, 1, null, 'ALA - CHANCAY LAMBAYEQUE', 'ADMINISTRACION LOCAL DE AGUA CHANCAY LAMBAYEQUE', 'AAA.JZ-ALA.CHL', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (66, 1, null, 'ALA - MOTUPE OLMOS LA LECHE', 'ADMINISTRACION LOCAL DE AGUA MOTUPE OLMOS LA LECHE', 'AAA.JZ-ALA.MOLL', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (67, 1, null, 'ALA - MEDIO Y BAJO PIURA', 'ADMINISTRACION LOCAL DE AGUA MEDIO Y BAJO PIURA', 'AAA.JZ-ALA.MBP', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (69, 1, null, 'ALA - SAN LORENZO', 'ADMINISTRACION LOCAL DE AGUA SAN LORENZO', 'AAA.JZ-ALA.SL', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (70, 1, null, 'ALA - CHIRA PIURA', 'ADMINISTRACION LOCAL DE AGUA CHIRA PIURA', 'AAA.JZ-ALA.CH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (71, 1, null, 'ALA - TUMBES', 'ADMINISTRACION LOCAL DE AGUA TUMBES', 'AAA.JZ-ALA.T', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (72, 1, null, 'AAA - MARAÑON', 'AUTORIDAD ADMINISTRATIVA DEL AGUA - MARAÑON', 'AAA.M', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (73, 1, null, 'ALA - CHINCHIPE CHAMAYA', 'ADMINISTRACION LOCAL DE AGUA CHINCHIPE CHAMAYA', 'AAA.M-ALA.CHCH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (75, 1, null, 'ALA - UTCUBAMBA', 'ADMINISTRACION LOCAL DE AGUA UTCUBAMBA', 'AAA.M-ALA.UTC', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (76, 1, null, 'ALA - CHOTANO LLAUCANO', 'ADMINISTRACION LOCAL DE AGUA CHOTANO LLAUCANO', 'AAA.M-ALA.CHLL', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (77, 1, null, 'ALA - LAS YANGAS SUITE', 'ADMINISTRACION LOCAL DE AGUA LAS YANGAS SUITE', 'AAA.M-ALA.LYS', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (78, 1, null, 'ALA - CAJAMARCA', 'ADMINISTRACION LOCAL DE AGUA CAJAMARCA', 'AAA.M-ALA.C', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (80, 1, null, 'ALA - HUAMACHUCO', 'ADMINISTRACION LOCAL DE AGUA HUAMACHUCO', 'AAA.M-ALA.H', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (81, 1, null, 'ALA - POMABAMBA', 'ADMINISTRACION LOCAL DE AGUA POMABAMBA', 'AAA.M-ALA.POMA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (82, 1, null, 'ALA - HUARI', 'ADMINISTRACION LOCAL DE AGUA HUARI', 'AAA.M-ALA.HUARI', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (83, 1, null, 'ALA - ALTO MARAÑON', 'ADMINISTRACION LOCAL DE AGUA ALTO MARAÑON', 'AAA.M-ALA.AM', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (85, 1, null, 'ALA - ALTO AMAZONAS', 'ADMINISTRACION LOCAL DE AGUA ALTO AMAZONAS', 'AAA.A-ALA.AA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (86, 1, null, 'AAA - HUALLAGA', 'AUTORIDAD ADMINISTRATIVA DEL AGUA - HUALLAGA', 'AAA.H', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (87, 1, null, 'ALA - ALTO MAYO', 'ADMINISTRACION LOCAL DE AGUA ALTO MAYO', 'AAA.H-ALA.ALTO MAYO', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (88, 1, null, 'ALA - TARAPOTO', 'ADMINISTRACION LOCAL DE AGUA TARAPOTO', 'AAA.H-ALA.TA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (89, 1, null, 'ALA - HUALLAGA CENTRAL', 'ADMINISTRACION LOCAL DE AGUA HUALLAGA CENTRAL', 'AAA.H-ALA.HC', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (90, 1, null, 'ALA - TINGO MARIA', 'ADMINISTRACION LOCAL DE AGUA TINGO MARIA', 'AAA.H-ALA.TINGO MARIA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (92, 1, null, 'AAA-UCAYALI', 'AUTORIDAD ADMINISTRATIVA DEL AGUA - UCAYALI', 'AAA.U', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (93, 1, null, 'ALA - PUCALLPA', 'ADMINISTRACION LOCAL DE AGUA PUCALLPA', 'AAA.U-ALA.PU', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (94, 1, null, 'ALA - ATALAYA', 'ADMINISTRACION LOCAL DE AGUA ATALAYA', 'AAA.U-ALA.AT', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (95, 1, null, 'ALA - PERENE', 'ADMINISTRACION LOCAL DE AGUA PERENE', 'AAA.U-ALA.PE', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (97, 1, null, 'AAA - MANTARO', 'AUTORIDAD ADMINISTRATIVA DEL AGUA - MANTARO', 'AAA.MAN', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (98, 1, null, 'ALA - PASCO', 'ADMINISTRACION LOCAL DE AGUA PASCO', 'AAA.MAN-ALA.PASCO', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (99, 1, null, 'ALA - MANTARO', 'ADMINISTRACION LOCAL DE AGUA MANTARO', 'AAA.MAN-ALA.MANTARO', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (100, 1, null, 'ALA - HUANCAVELICA', 'ADMINISTRACION LOCAL DE AGUA HUANCAVELICA', 'AAA.MAN-ALA.HUANC', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (102, 1, null, 'AAA - PAMPAS APURIMAC', 'AUTORIDAD ADMINISTRATIVA DEL AGUA - PAMPAS APURIMAC', 'AAA.PA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (103, 1, null, 'ALA - BAJO APURIMAC PAMPAS', 'ADMINISTRACION LOCAL DE AGUA BAJO APURIMAC PAMPAS', 'AAA.PA-ALA.BAP', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (104, 1, null, 'ALA - MEDIO APURIMAC PACHACHACA', 'ADMINISTRACION LOCAL DE AGUA MEDIO APURIMAC PACHACHACA', 'AAA.PA-ALA.MAP', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (105, 1, null, 'ALA - ALTO APURIMAC - VELILLE', 'ADMINISTRACION LOCAL DE AGUA ALTO APURIMAC - VELILLE', 'AAA.PA-ALA.VE', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (106, 1, null, 'AAA - URUBAMBA VILCANOTA', 'AUTORIDAD ADMINISTRATIVA DEL AGUA - URUBAMBA VILCANOTA', 'AAA.UV', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (108, 1, null, 'ALA - SICUANI', 'ADMINISTRACION LOCAL DE AGUA SICUANI', 'AAA.UV-ALA.SI', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (109, 1, null, 'ALA - CUSCO', 'ADMINISTRACION LOCAL DE AGUA CUSCO', 'AAA.UV-ALA.CZ', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (110, 1, null, 'AAA - MADRE DE DIOS', 'AUTORIDAD ADMINISTRATIVA DEL AGUA - MADRE DE DIOS', 'AAA.MDD', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (111, 1, null, 'ALA - TAHUAMANU - MADRE DE DIOS', 'ADMINISTRACION LOCAL DE AGUA TAHUAMANU - MADRE DE DIOS', 'AAA.MDD-ALA.TMD', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (112, 1, null, 'ALA - TAMBOPATA - INAMBARI', 'ADMINISTRACION LOCAL DE AGUA TAMBOPATA - INAMBARI', 'AAA.MDD-ALA.TI', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (114, 1, null, 'ALA - RAMIS', 'ADMINISTRACION LOCAL DE AGUA RAMIS', 'AAA.TIT-ALA.RM', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (115, 1, null, 'ALA - HUANCANE', 'ADMINISTRACION LOCAL DE AGUA HUANCANE', 'AAA.TIT-ALA.HU', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (116, 1, null, 'ALA - JULIACA', 'ADMINISTRACION LOCAL DE AGUA JULIACA', 'AAA.TIT-ALA.JULIACA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (118, 1, null, 'AAA-AMAZONAS', 'AUTORIDAD ADMINISTRATIVA DEL AGUA - AMAZONAS', 'AAA.A', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (119, 2, null, 'MGRH', 'MODERNIZACIÓN DE LA GESTIÓN DE RECURSOS HÍDRICOS', 'ANA-MGRH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (121, 2, null, 'MGRH-UA-TES', 'ÁREA DE TESORERÍA', 'MGRH-UA-TES', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (122, 2, null, 'MGRH-UA-PAT', 'ÁREA DE PATRIMONIO', 'MGRH-UA-PAT', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (123, 2, null, 'MGRH-UA-ADQ', 'ÁREA DE ADQUISICIONES', 'MGRH-UA-ADQ', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (125, 2, null, 'MGRH LEGAL', 'ASESORIA LEGAL', 'ANA-MGRH-LEGAL', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (126, 2, null, 'MGRH-UA', 'UNIDAD DE ADMINISTRACION', 'MGRH-UA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (127, 2, null, 'MGRH-UPP', 'UNIDAD DE PLANEAMIENTO Y PRESUPUESTO', 'MGRH-UPP', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (129, 2, null, 'MGRH-CH', 'COORDINACIÓN DE HIDROMETRÍA', 'MGRH-CH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (130, 2, null, 'MGRH-CAS', 'COORDINACIÓN DE AGUAS SUBTERRÁNEAS', 'MGRH-CAS', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (131, 2, null, 'MGRH-CCRH', 'COORDINACIÓN DE CALIDAD DE RECURSOS HÍDRICOS', 'MGRH-CCRH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (132, 2, null, 'MGRH-CGRH', 'COORDINACIÓN PARA LA GESTIÓN DE LOS RECURSOS HÍDRICOS', 'MGRH-CGRH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (135, 2, null, 'MGRH-CSI', 'COORDINACIÓN DE SISTEMAS DE INFORMACIÓN', 'MGRH-CSI', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (146, 1, null, 'ST-CRHC CHIRA - PIURA', 'SECRETARIA TECNICA DEL CONSEJO DE RECURSOS HIDRICOS DE LA CUENCA CHIRA – PIURA', 'ST-CRHC CHIRA - PIURA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1, 1, null, 'CONSEJO DIRECTIVO', 'CONSEJO DIRECTIVO', 'CD', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (2, 1, null, 'JEFATURA', 'JEFATURA', 'JEFATURA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (3, 1, null, 'GG-GERENCIA GENERAL', 'GERENCIA GENERAL', 'GG', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (4, 1, null, 'DCERH', 'DIRECCION DE CALIDAD Y EVALUACION DE RECURSOS HIDRICOS', 'DCERH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (5, 1, null, 'DOUA', 'DIRECCION DE ORGANIZACIONES DE USUARIOS DE AGUA', 'DOUA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (6, 1, null, 'DPDRH', 'DIRECCION DE PLANIFICACION Y DESARROLLO DE LOS RECURSOS HIDRICOS', 'DPDRH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (7, 1, null, 'DSNIRH', 'DIRECCION DEL SISTEMA NACIONAL DE INFORMACION DE RECURSOS HIDRICOS', 'DSNIRH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (8, 1, null, 'DARH', 'DIRECCION DE ADMINISTRACION DE RECURSOS HIDRICOS', 'DARH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (9, 1, null, 'OAJ', 'OFICINA DE ASESORIA JURIDICA', 'OAJ', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (10, 1, null, 'OA', 'OFICINA DE ADMINISTRACION', 'OA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (11, 1, null, 'OA-UAP', 'UNIDAD DE ABASTECIMIENTO Y PATRIMONIO', 'OA-UAP', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (12, 1, null, 'OA-UCT', 'UNIDAD DE CONTABILIDAD Y TESORERIA', 'OA-UCT', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (13, 1, null, 'OA-URH', 'UNIDAD DE RECURSOS HUMANOS', 'OA-URH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (14, 1, null, 'OA-UATD', 'UNIDAD DE ARCHIVO Y TRAMITE DOCUMENTARIO', 'OA-UATD', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (15, 1, null, 'OPP', 'OFICINA DE PLANEAMIENTO Y PRESUPUESTO', 'OPP', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (16, 1, null, 'OPP-UCI', 'UNIDAD DE COOPERACION INTERNACIONAL', 'OPP-UCI', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (17, 1, null, 'OPP-UPM', 'UNIDAD DE PLANEAMIENTO Y MODERNIZACION', 'OPP-UPM', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (18, 1, null, 'OPP-UP', 'UNIDAD DE PRESUPUESTO', 'OPP-UP', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (19, 1, null, 'TNRCH', 'TRIBUNAL NACIONAL DE RESOLUCION DE CONTROVERSIAS HIDRICAS', 'TNRCH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (20, 1, null, 'DCPRH', 'DIRECCION DE CONSERVACION Y PLANEAMIENTO DE RECURSOS HIDRICOS', 'DCPRH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (21, 1, null, 'DEPHM', 'DIRECCION DE ESTUDIOS DE PROYECTOS HIDRAULICOS MULTISECTORIALES', 'DEPHM', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (22, 1, null, 'DGCRH', 'DIRECCION DE GESTION DE CALIDAD DE LOS RECURSOS HIDRICOS', 'DGCRH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (23, 1, null, 'DGOI', 'DIRECCION DE GESTION DE OPERADORES DE INFRAESTRUCTURA HIDRAULICA', 'DGOI', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (24, 1, null, 'DGCC', 'DIRECCION DE GESTION DEL CONOCIMIENTO Y COORDINACION INTERINSTITUCIONAL', 'DGCC', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (25, 1, null, 'OCI', 'ORGANO DE CONTROL INSTITUCIONAL', 'OCI', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (26, 1, null, 'OA-UCRE', 'UNIDAD DE COBRANZA DE RETRIBUCION ECONOMICA', 'OA-UCRE', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (27, 1, null, 'OA-UEC', 'UNIDAD DE EJECUCION COACTIVA', 'OA-UEC', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (28, 1, null, 'UPGCRH', 'UNIDAD DE PREVENCION Y GESTION DE CONFLICTOS DE RECURSOS HIDRICOS', 'UPGCRH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (29, 1, null, 'UGRH', 'UNIDAD DE GLACIOLOGIA Y RECURSOS HIDRICOS', 'UGRH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (30, 1, null, 'UPRPPII', 'UNIDAD DE PRENSA, RELACIONES PUBLICAS, PROTOCOLO E IMAGEN INSTITUCIONAL', 'UPRPPII', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (31, 1, null, 'USCA', 'UNIDAD DE SENSIBILIZACION EN CULTURA DEL AGUA', 'USCA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (32, 1, null, 'TNRCH - SECRETARIO TECNICO', 'TRIBUNAL NACIONAL DE RESOLUCION DE CONTROVERSIAS HIDRICAS - ST', 'TNRCH-ST', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (33, 1, null, 'UNIDAD DE COORDINACIÓN Y SUPERVISIÓN', 'UNIDAD DE COORDINACIÓN Y SUPERVISIÓN', 'GG-UCS', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (34, 1, null, 'AAA - CAPLINA OCOÑA', 'AUTORIDAD ADMINISTRATIVA DEL AGUA - CAPLINA OCOÑA', 'AAA.CO', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (35, 1, null, 'ALA-CAPLINA - LOCUMBA', 'ADMINISTRACION LOCAL DE AGUA CAPLINA – LOCUMBA', 'AAA.CO-ALA.CL', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (36, 1, null, 'ALA - MOQUEGUA', 'ADMINISTRACION LOCAL DE AGUA MOQUEGUA', 'AAA.CO-ALA.M', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (37, 1, null, 'ALA - TAMBO ALTO TAMBO', 'ADMINISTRACION LOCAL DE AGUA TAMBO ALTO TAMBO', 'AAA.CO-ALA.TAT', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (38, 1, null, 'ALA - CHILI', 'ADMINISTRACION LOCAL DE AGUA CHILI', 'AAA.CO-ALA.CH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (39, 1, null, 'ALA - CAMANA MAJES', 'ADMINISTRACION LOCAL DE AGUA CAMANA MAJES', 'AAA.CO-ALA.CM', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (40, 1, null, 'ALA - OCOÑA PAUSA', 'ADMINISTRACION LOCAL DE AGUA OCOÑA PAUSA', 'AAA.CO-ALA.OP', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 100 records committed...
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (41, 1, null, 'ALA - COLCA SIGUAS CHIVAY', 'ADMINISTRACION LOCAL DE AGUA COLCA SIGUAS CHIVAY', 'AAA.CO-ALA.CSCH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (42, 1, null, 'AAA - CHAPARRA CHINCHA', 'AUTORIDAD ADMINISTRATIVA DEL AGUA - CHAPARRA CHINCHA', 'AAA.CHCH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (43, 1, null, 'ALA - CHAPARRA ACARI', 'ADMINISTRACION LOCAL DE AGUA CHAPARRA ACARI', 'AAA.CHCH-ALA-CHA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (44, 1, null, 'ALA - GRANDE', 'ADMINISTRACION LOCAL DE AGUA GRANDE', 'AAA.CHCH-ALA.G', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (45, 1, null, 'ALA - ICA', 'ADMINISTRACION LOCAL DE AGUA ICA', 'AAA.CHCH-ALA.I', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (46, 1, null, 'ALA - RIO SECO', 'ADMINISTRACION LOCAL DE AGUA RIO SECO', 'AAA.CHCH-ALA.RS', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (47, 1, null, 'ALA - PISCO', 'ADMINISTRACION LOCAL DE AGUA PISCO', 'AAA.CHCH-ALA.P', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (48, 1, null, 'ALA - SAN JUAN', 'ADMINISTRACION LOCAL DE AGUA SAN JUAN', 'AAA.CHCH-ALA.SJ', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (49, 1, null, 'AAA - CAÑETE FORTALEZA', 'AUTORIDAD ADMINISTRATIVA DEL AGUA - CAÑETE FORTALEZA', 'AAA.CF', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (50, 1, null, 'ALA - MALA OMAS CAÑETE', 'ADMINISTRACION LOCAL DE AGUA MALA OMAS CAÑETE', 'AAA.CF-ALA.MOC', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (51, 1, null, 'ALA - CHILLON RIMAC LURIN', 'ADMINISTRACION LOCAL DE AGUA CHILLON RIMAC LURIN', 'AAA.CF-ALA.CHRL', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (52, 1, null, 'ALA - CHANCAY HUARAL', 'ADMINISTRACION LOCAL DE AGUA CHANCAY HUARAL', 'AAA.CF-ALA.CHH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (53, 1, null, 'ALA - HUAURA', 'ADMINISTRACION LOCAL DE AGUA HUAURA', 'AAA.CF-ALA.H', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (54, 1, null, 'ALA - BARRANCA', 'ADMINISTRACION LOCAL DE AGUA BARRANCA', 'AAA.CF-ALA.B', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (55, 1, null, 'AAA - HUARMEY CHICAMA', 'AUTORIDAD ADMINISTRATIVA DEL AGUA - HUARMEY CHICAMA', 'AAA.HCH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (56, 1, null, 'ALA - CASMA HUARMEY', 'ADMINISTRACION LOCAL DE AGUA CASMA HUARMEY', 'AAA.HCH-ALA.CHUARMEY', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (57, 1, null, 'ALA - HUARAZ', 'ADMINISTRACION LOCAL DE AGUA HUARAZ', 'AAA.HCH-ALA.HZ', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (58, 1, null, 'ALA - SANTA LACRAMARCA NEPEÑA', 'ADMINISTRACION LOCAL DE AGUA SANTA LACRAMARCA NEPEÑA', 'AAA.HCH-ALA.SLN', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (59, 1, null, 'ALA - SANTIAGO DE CHUCO', 'ADMINISTRACION LOCAL DE AGUA SANTIAGO DE CHUCO', 'AAA.HCH.ALA.SC', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (60, 1, null, 'ALA - MOCHE VIRU CHAO', 'ADMINISTRACION LOCAL DE AGUA MOCHE VIRU CHAO', 'AAA.HCH-ALA.MVCHAO', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (61, 1, null, 'ALA - CHICAMA', 'ADMINISTRACION LOCAL DE AGUA CHICAMA', 'AAA.HCH-ALA.CHICAMA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (63, 1, null, 'ALA - JEQUETEPEQUE', 'ADMINISTRACION LOCAL DE AGUA JEQUETEPEQUE', 'AAA.JZ-ALA.J', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (68, 1, null, 'ALA - ALTO PIURA', 'ADMINISTRACION LOCAL DE AGUA ALTO PIURA', 'AAA.JZ-ALA.APH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (74, 1, null, 'ALA - BAGUA-SANTIAGO', 'ADMINISTRACION LOCAL DE AGUA BAGUA SANTIAGO', 'AAA.M-ALA.BS', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (79, 1, null, 'ALA - CRISNEJAS', 'ADMINISTRACION LOCAL DE AGUA CRISNEJAS', 'AAA.M-ALA.CR', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (84, 1, null, 'ALA - IQUITOS', 'ADMINISTRACION LOCAL DE AGUA IQUITOS', 'AAA.A-ALA.IQ', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (91, 1, null, 'ALA - ALTO HUALLAGA', 'ADMINISTRACION LOCAL DE AGUA ALTO HUALLAGA', 'AAA.H-ALA.ALTO HUALLAGA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (96, 1, null, 'ALA - TARMA', 'ADMINISTRACION LOCAL DE AGUA TARMA', 'AAA.U-ALA.TAR', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (101, 1, null, 'ALA - AYACUCHO', 'ADMINISTRACION LOCAL DE AGUA AYACUCHO', 'AAA.MAN-ALA.AYA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (107, 1, null, 'ALA - LA CONVENCION', 'ADMINISTRACION LOCAL DE AGUA LA CONVENCION', 'AAA.UV-ALA.CV', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (113, 1, null, 'AAA-TITICACA', 'AUTORIDAD ADMINISTRATIVA DEL AGUA - TITICACA', 'AAA.TIT', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (117, 1, null, 'ALA - ILAVE', 'ADMINISTRACION LOCAL DE AGUA ILAVE', 'AAA.TIT-ALA.ILAVE', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (120, 2, null, 'MGRH-UA-CON', 'ÁREA DE CONTABILIDAD', 'MGRH-UA-CON', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (124, 2, null, 'MGRH-UA-LOG', 'ÁREA DE LOGISTICA', 'MGRH-UA-LOG', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (128, 2, null, 'MGRH-AERH', 'ASESORIA ESPECILIZADA EN RECURSOS HÍDRICOS', 'MGRH-AERH', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (134, 2, null, 'MGRH-CA', 'COORDINACIÓN DE ACTIVIDADES', 'MGRH-CA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (137, 2, null, 'MGRH-CTCMAYO', 'COORDINACIÓN TÉCNICA DE LA CUENCA MAYO', 'MGRH-CTCMAYO', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (136, 2, null, 'MGRH-CTCMANTARO', 'COORDINACIÓN TÉCNICA DE LA CUENCA MANTARO', 'MGRH-CTCMANTARO', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (138, 2, null, 'MGRH-CTCPAMPAS', 'COORIDNACIÓN TÉCNICA DE LA CUENCA PAMPAS', 'MGRH-CTCPAMPAS', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (139, 2, null, 'MGRH-CTCURUBAMBA', 'COORDINACIÓN TÉCNICA DE LA CUENCA URUBAMBA', 'MGRH-CTCURUBAMBA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (140, 1, null, 'ST-CRHC QUILCA - CHILI', 'SECRETARIA TECNICA DEL CONSEJO DE RECURSOS HIDRICOS DE LA CUENCA QUILCA – CHILI', 'ST-CRHC QUILCA - CHILI', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (141, 1, null, 'ST-CRHC JEQUETEPEQUE - ZAÑA', 'SECRETARIA TECNICA DEL CONSEJO DE RECURSOS HIDRICOS DE LA CUENCA JEQUETEPEQUE – ZAÑA', 'ST-CRHC JEQUETEPEQUE - ZAÑA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (142, 1, null, 'ST-CRHC TUMBES', 'SECRETARIA TECNICA DEL CONSEJO DE RECURSOS HIDRICOS DE LA CUENCA TUMBES', 'ST-CRHC TUMBES', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (143, 1, null, 'ST-CRHC CHANCAY - HUARAL', 'SECRETARIA TECNICA DEL CONSEJO DE RECURSOS HIDRICOS DE LA CUENCA CHANCAY – HUARAL', 'ST-CRHC CHANCAY - HUARAL', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (144, 1, null, 'ST-CRHC CHANCAY - LAMBAYEQUE', 'SECRETARIA TECNICA DEL CONSEJO DE RECURSOS HIDRICOS DE LA CUENCA CHANCAY – LAMBAYEQUE', 'ST-CRHC CHANCAY - LAMBAYEQUE', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (145, 1, null, 'ST-CRHC CAPLINA-LOCUMBA', 'SECRETARIA TECNICA DEL CONSEJO DE RECURSOS HIDRICOS DE LA CUENCA CAPLINA – LOCUMBA', 'ST-CRHC CAPLINA-LOCUMBA', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_OFICINA (id_oficina, id_entidad, id_oficina_padre, desc_corta_oficina, desc_oficina, sigla_oficina, vds, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (147, 1, null, 'ST-CRHC CHILLÓN - RIMAC - LURIN', 'SECRETARIA TECNICA DEL CONSEJO DE RECURSOS HIDRICOS DE LA CUENCA CHILLON RIMAC LURIN', 'ST-CRHC CHILLÓN - RIMAC - LURIN', null, '1', null, to_date('23-04-2021 18:26:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 147 records loaded
--prompt Loading TRAMITE.SEG_M_PERFIL...
insert into TRAMITE.SEG_M_PERFIL (id_perfil, id_sistema, desc_perfil, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1, 1, 'DIRECTOR', '1', null, to_date('23-04-2021 18:28:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_PERFIL (id_perfil, id_sistema, desc_perfil, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (2, 1, 'PROFESIONAL ADMINISTRATIVO', '1', null, to_date('23-04-2021 18:28:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_PERFIL (id_perfil, id_sistema, desc_perfil, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (3, 1, 'ASISTENTE ADMINISTRATIVO', '1', null, to_date('23-04-2021 18:28:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_PERFIL (id_perfil, id_sistema, desc_perfil, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (4, 1, 'TECNICO DE VENTANILLA', '1', null, to_date('23-04-2021 18:28:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_PERFIL (id_perfil, id_sistema, desc_perfil, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (5, 1, 'ADMINISTRADOR DEL SISTEMA', '1', null, to_date('23-04-2021 18:28:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_PERFIL (id_perfil, id_sistema, desc_perfil, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (6, 1, 'COURIER', '1', null, to_date('23-04-2021 18:28:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_PERFIL (id_perfil, id_sistema, desc_perfil, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (7, 1, 'COURIER NACIONAL', '1', null, to_date('23-04-2021 18:28:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_PERFIL (id_perfil, id_sistema, desc_perfil, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (8, 1, 'COURIER INSTITUCIONAL', '1', null, to_date('23-04-2021 18:28:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_PERFIL (id_perfil, id_sistema, desc_perfil, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (9, 1, 'SEGUIMIENTO', '1', null, to_date('23-04-2021 18:28:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_PERFIL (id_perfil, id_sistema, desc_perfil, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (10, 1, 'SEGUIMIENTO-PROF', '1', null, to_date('23-04-2021 18:28:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_PERFIL (id_perfil, id_sistema, desc_perfil, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (11, 1, 'REGISTRO EXTERNO', '1', null, to_date('23-04-2021 18:28:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_PERFIL (id_perfil, id_sistema, desc_perfil, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (12, 1, 'ADMINISTRADOR LOCAL DEL AGUA', '1', null, to_date('23-04-2021 18:28:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_PERFIL (id_perfil, id_sistema, desc_perfil, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (13, 1, 'TECNICO DE VENTANILLA SC', '1', null, to_date('23-04-2021 18:28:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_PERFIL (id_perfil, id_sistema, desc_perfil, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (14, 1, 'ADMINISTRADOR MGRH', '1', null, to_date('23-04-2021 18:28:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 14 records loaded
--prompt Loading TRAMITE.SEG_M_SISTEMA...
insert into TRAMITE.SEG_M_SISTEMA (id_sistema, desc_sistema, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1, 'Tramite', '1', null, to_date('23-04-2021 18:18:26', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 1 records loaded
--prompt Loading TRAMITE.SEG_M_USUARIO...
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (575, 'JAGRAMONTE', '123', 'JOSE DOMINGO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (576, 'JHUACAC', '123', 'JUDITH ANDREA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (577, 'EIRRARAZABAL', '123', 'EDWARD HERNAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (578, 'WMAMANI', '123', 'WILFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (579, 'EMUNOZ', '123', 'JUAN EDUARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (580, 'AOYOLA', '123', 'ABILIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (581, 'MSACA', '123', 'MALIBET NATALIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (582, 'BVENERO', '123', 'BRUNO MAURICIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (583, 'MPAREDESB', '123', 'MELISSA ROSARIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (584, 'EORE', '123', 'ERICSSON GLAUDER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (585, 'FJACINTO', '123', 'FLORENCIO VICTOR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (586, 'NHUAMANI', '123', 'NADINE CHRISTI', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (587, 'VHERNANDEZ', '123', 'VICTOR HERMES', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (588, 'EGRIMALDO', '123', 'ELVIRA KATTY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (589, 'EBENDEZU', '123', 'ESTEBAN MARINO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (590, 'LBENAVENTE', '123', 'LISSETE MADELEY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (591, 'CBECERRA', '123', 'CARLOS ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (592, 'JARANA', '123', 'JOSE ENRIQUE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (593, 'CANTONIO', '123', 'CARLOS HERMINIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (594, 'JAGUIRRE', '123', 'JUAN MIGUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (595, 'JARMAS', '123', 'JOSE MANUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (596, 'GCOLVAQUI', '123', 'GILDER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (597, 'EDIAZM', '123', 'EDGAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (598, 'MGUEVARA', '123', 'MARIBEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (599, 'MHIDALGO', '123', 'MARCO HECTOR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (600, 'MHUAMANI', '123', 'MARIA ELENA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (601, 'LLIMO', '123', 'LUIS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (602, 'HLLATANZA', '123', 'HILDEBRANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (603, 'RMAINETTO', '123', 'RENZO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (604, 'MMALLQUI', '123', 'MARIO ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (605, 'RORDONEZ', '123', 'RICARDO SANTOS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (606, 'MPAIMA', '123', 'MERLIN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (607, 'JRIVERA', '123', 'JENNY MILAGROS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (608, 'JSANCHEZM', '123', 'JULIO CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (609, 'JUSQUIANO', '123', 'JESUS GUMERCINDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (610, 'LTOLENTINO', '123', 'LUIS HUMBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (611, 'JPEREDA', '123', 'JUAN CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (612, 'OMARTIN', '123', 'OSCAR HELI', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (613, 'RMALLQUI', '123', 'ROBERT IVAN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (614, 'ACUBA', '123', 'ANA MARIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (615, 'LCRUZADO', '123', 'LUIS ARMANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (616, 'DCASTRO', '123', 'DEMETRIO RAUL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (617, 'IBOCANEGRA', '123', 'IRMA MARISOL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (618, 'MBENITES', '123', 'MARCO DANIEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (619, 'JBARBOZA', '123', 'JAIME', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (620, 'WVILLAVICENCIOB', '123', 'WALTER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (621, 'YSUCASAIRE', '123', 'YESSICA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (622, 'LQUEA', '123', 'LEONCIO TEODULO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (623, 'GMURILLO', '123', 'GLICETH', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (624, 'VMAMANI', '123', 'VLADIMIR GUZMAN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (625, 'SMAMANIV', '123', 'SONIA ALEJANDRA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (626, 'HCONDORI', '123', 'HUMBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (627, 'JCCALLA', '123', 'JOSE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (628, 'TANTALLACA', '123', 'TITO WILFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (629, 'JARTEAGA', '123', 'JULIO YUBER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (630, 'RCHAHUAYO', '123', 'ROSA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (631, 'WGIRALDEZ', '123', 'WILBER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (632, 'TMARTINEZ', '123', 'TEODOSIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (633, 'YMONTALVAN', '123', 'YANCIBAN KAIDIQUIN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (634, 'JMORANTE', '123', 'JOSE ARTURO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (635, 'FREQUENA', '123', 'FISHER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (636, 'JRIMACHI', '123', 'JOSE MIGUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (637, 'LRUMISONCCO', '123', 'LUIS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (638, 'CYAPUCHURA', '123', 'CIRILO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (639, 'HGARCIA', '123', 'HIPOLITO ESEQUIEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (640, 'RGONZALESQ', '123', 'ROGER JAVIER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (641, 'IINTIR', '123', 'ISABELA HILDA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (642, 'MLOPEZ', '123', 'MIGUEL GRIMALDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (643, 'JNINANTAY', '123', 'JORGE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (645, 'RREYNALTE', '123', 'RENE BLADIMIR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (646, 'PROSAS', '123', 'PERCY ALEJANDRO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (647, 'CSANCHEZ', '123', 'CIRILO ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (648, 'EVALDERRAMA', '123', 'ELIO TITO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (649, 'MDELGADO', '123', 'MANUEL ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (650, 'EGUERRERO', '123', 'EMILIO JULIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (651, 'JMANUICO', '123', 'JUAN CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (652, 'AMORY', '123', 'AUBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (653, 'ZROJAS', '123', 'ZULMA ELIDA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (654, 'EAQUINO', '123', 'EDSEL LEE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (655, 'GAVALOS', '123', 'GUILLERMO ALONSO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (656, 'EBAZALAR', '123', 'ETEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (657, 'JCAHUAS', '123', 'JORGE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (658, 'AGUTIERREZR', '123', 'ALLAN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (659, 'KHUAMAN', '123', 'KELLY YOHANA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (660, 'YQUESADA', '123', 'YSABEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (661, 'EVISE', '123', 'CARLOS EDWARDS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (662, 'JANCHAYHUA', '123', 'JOSE EDUARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (663, 'CCUEVA', '123', 'CARLOS ENRIQUE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (665, 'JMIRANDAT', '123', 'JAIRS ALEXANDER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (666, 'AMITACC', '123', 'ANDRES JESUS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (667, 'WORMENO', '123', 'WILLIAM ALAN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (668, 'RPUPPI', '123', 'FIDELA ROXANA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (669, 'BQUEVEDO', '123', 'BRANCO ANDRE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (670, 'MQUIHUE', '123', 'MOISES EVELIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (671, 'HURIBED', '123', 'HILMER REBECA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (672, 'KVALENCIA', '123', 'KATTY ROSA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (673, 'RARAPA', '123', 'RENE GROVER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (674, 'VARIZAPANA', '123', 'VILMA ASUNCION', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (675, 'JBAILON', '123', 'JENNY JAQUELINE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (676, 'DHUANCA', '123', 'DEMECIO FEDERICO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 100 records committed...
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (677, 'IHUMPIRI', '123', 'ISAAC', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (678, 'ALUJANO', '123', 'APOLINARIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (679, 'EMAQUERA', '123', 'ELIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (680, 'FPARI', '123', 'FELIX', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (681, 'CRAMOSP', '123', 'CENAIDA MARLENY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (682, 'EZENTENOY', '123', 'EDGAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (683, 'RZEVALLOS', '123', 'ROBERT', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (684, 'BCAVALCANTI', '123', 'BRENO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (685, 'EDAVILAG', '123', 'ERICKA JEANNETTE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (686, 'JDIAZ', '123', 'VASQUEZ JOSE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (687, 'CHURTADOV', '123', 'CARLOS ALBERTO MARTIN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (688, 'RMAGALHAES', '123', 'ROBINSON', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (689, 'RPACAYA', '123', 'ROMAN ALCIDES', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (690, 'CPENA', '123', 'CLAUDIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (691, 'RVASQUEZ', '123', 'ROCIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (693, 'CAQUINO', '123', 'CESAR AUGUSTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (694, 'JBARBA', '123', 'JAIME RAMON', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (696, 'FBARBOZA', '123', 'FRANKLIN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (697, 'MBRAVO', '123', 'MARIA MILAGROS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (698, 'LFERNANDEZ', '123', 'LITA JOVANNY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (699, 'RICO', '123', 'ROMAN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (700, 'DLEON', '123', 'DIANA PAOLA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (701, 'EPANTA', '123', 'EDWIN DARWIN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (702, 'VPEREDA', '123', 'VICTOR OMAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (703, 'VPORTILLA', '123', 'VERONICA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (704, 'ARAMIREZ', '123', 'ALFREDO APARICIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (705, 'RRUIZ', '123', 'RUFFO EMERSON', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (706, 'CTORRES', '123', 'CESAR ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (707, 'JVALERA', '123', 'JOSE MAURO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (708, 'JVENTURA', '123', 'JULIO ELADIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (709, 'LCENTENO', '123', 'LEONARDO ABAD', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (710, 'WCURRO', '123', 'WILFREDO SIMON', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (711, 'CIBEROS', '123', 'CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (712, 'DMAMANI', '123', 'DELIA ZANDRA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (713, 'SMAMANI', '123', 'SALVADOR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (714, 'WPEDRAZA', '123', 'WILSON GRUBER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (715, 'FPIZARRO', '123', 'FELIPE ALFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (716, 'MSOTOMAYOR', '123', 'MARIBEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (717, 'JAMANQUI', '123', 'JANETH MILAGROS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (718, 'FCONDORI', '123', 'FEDERICO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (719, 'GFARFAN', '123', 'PABLO GUILLERMO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (720, 'IFERNANDEZ', '123', 'INDALECIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (2, 'dtorres2', '123', 'Dora Torres', null, null, null, '1', null, to_date('17-04-2021 11:18:30', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (3, 'ADMIN', '123', 'ADM_NOMBRES', null, null, null, '1', null, to_date('17-04-2021 13:09:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (5, 'MMORALES', '123', 'MARIO', null, null, null, '1', null, to_date('17-04-2021 13:09:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (6, 'EPEREZS', '123', 'ERIKA', null, null, null, '1', null, to_date('17-04-2021 13:09:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (7, 'AFERNANDEZ', '123', 'AMARILDO', null, null, null, '1', null, to_date('17-04-2021 13:09:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (8, 'JAGUILAR', '123', 'JOSE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (9, 'ENUNEZ', '123', 'ELADIO MAXIMO RAMON', null, null, null, '1', null, to_date('17-04-2021 13:09:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (10, 'ESIFUENTES', '123', 'EMILIANO', null, null, null, '1', null, to_date('17-04-2021 13:09:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (11, 'JABASOLO', '123', 'JOSE RAMON', null, null, null, '1', null, to_date('17-04-2021 13:09:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (12, 'EQUISPE', '123', 'EDWIN DANTE', null, null, null, '1', null, to_date('17-04-2021 13:09:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (13, 'AALVA', '123', 'ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (14, 'LDIAZRAMIREZ', '123', 'LUIS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (15, 'RALVARADO', '123', 'ROSA', null, null, null, '1', null, to_date('17-04-2021 13:09:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (16, 'GSANDOVAL', '123', 'GERMAN', null, null, null, '1', null, to_date('17-04-2021 13:09:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (17, 'ALLAXA', '123', 'ARMANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (18, 'TROJAS', '123', 'TERESA VERONICA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (19, 'RCAVERO', '123', 'RICARDO IVAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (20, 'CCAYO', '123', 'JOHNNY CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (21, 'EMESETH', '123', 'ENRIQUE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (22, 'HLEVANO', '123', 'HELLEN MONICA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (23, 'CNORIEGA', '123', 'CARMEN BEATRIZ', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (24, 'LRAMIREZP', '123', 'LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (25, 'SVILLAVICENCIO', '123', 'SILVIA KARINA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (26, 'AACHARTE', '123', 'ANYINSON CRISTOFER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (27, 'AAMARU', '123', 'ANDRES', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (28, 'EPCASTILLO', '123', 'EDGAR PRIMERO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (29, 'GCHIPANA', '123', 'GILBERTH', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (30, 'CCONTRERAS', '123', 'CARLOS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (31, 'LCORDOVAH', '123', 'LUCIANO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (32, 'VDELGADOR', '123', 'VICTOR HERMES', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (33, 'IUAYHUA', '123', 'ISAURA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (34, 'VLOAYZA', '123', 'VENTURA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (35, 'CMOREANO', '123', 'CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (36, 'JMUNIZ', '123', 'JOSE ALFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (37, 'JPHACSI', '123', 'JUVENAL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (38, 'RPIZARRO', '123', 'REYNALDO ALEXANDER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (39, 'YPOZO', '123', 'YURY ALEX', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (40, 'EQUISPEH', '123', 'MARIA ELENA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (41, 'RQUISPEA', '123', 'RUTH IRENE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (42, 'JQUISPEA', '123', 'JOSE PITAGORAS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (43, 'MRUIZ', '123', 'MIGUEL ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (44, 'MTAYPE', '123', 'MABEL MARYLUZ', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (45, 'HTEJADA', '123', 'HENRY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (46, 'FVALVERDE', '123', 'FLORA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (47, 'WVILLAVICENCIO', '123', 'WALTER BACILIDES', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (48, 'OAVALOS', '123', 'OSCAR ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (49, 'SLAZO', '123', 'SHEYLA TERESA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (50, 'LZAVALA', '123', 'LOURDES MARLENE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (51, 'PFERNANDEZ', '123', 'PEKER PAVLICH', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (52, 'PPACHAS', '123', 'PEDRO ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (53, 'JPEREZA', '123', 'JAVIER ALFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (54, 'LANCAJIMA', '123', 'LUIS ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (55, 'CPAYANO', '123', 'CHRISTIAN JORGE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (56, 'FLOPEZ', '123', 'FABIOLA BETSABE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (57, 'PMIRANDA', '123', 'PERCY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (58, 'LGAMARRA', '123', 'LUIS HUGO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (59, 'MCABRERAR', '123', 'MIGUEL ALFREDO ERICK', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (60, 'MFLORES', '123', 'MARIO CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 200 records committed...
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (61, 'LYAMPUFEM', '123', 'LUIS ENRIQUE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (62, 'RFANANAN', '123', 'RICARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (63, 'WBENITES', '123', 'WALTER JAVIER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (64, 'APACO', '123', 'ALEX FABIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (65, 'YGALVEZ', '123', 'YONY JAVIER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (66, 'APACHAS', '123', 'ARTURO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (67, 'ACORCINO', '123', 'ANDERSON WILLIAM', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (68, 'EZARATE', '123', 'ERIKA ROSMERY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (69, 'VGODOY', '123', 'VICTOR DAVID', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (70, 'RLOCK', '123', 'ROSA MARIA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (71, 'BCORDOVA', '123', 'BEATRIZ', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (72, 'MUYUQUIPA', '123', 'MAURICIO MATIAS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (73, 'MMEDINA', '123', 'MARIO MARLANDO EMIGDIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (74, 'FAPAZA', '123', 'FEDERICO DEMETRIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (75, 'LLUNA', '123', 'LUIS VICTOR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (76, 'JPORTUGAL', '123', 'JULISSA MONICA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (77, 'RVALENCIA', '123', 'ROLAND JESUS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (78, 'LFLORES', '123', 'LENNY ONEIDA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (79, 'ACASTILLO', '123', 'ALVARO WILLY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (80, 'JJROMERO', '123', 'JUAN JOSE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (81, 'MAGUILAR', '123', 'MILAGROS YULEMY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (82, 'WVELIZ', '123', 'WENDY MARYOTH', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (83, 'GGAMBOA', '123', 'GONZALO PERCY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (84, 'DROSAS', '123', 'DERLY ROMMEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (85, 'NVARGAS', '123', 'NANCY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (86, 'RGALLEGOS', '123', 'ROLANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (87, 'JOVIEDO', '123', 'JESUS LORENZO EZEQUIEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (88, 'KMORA', '123', 'KATTYA YESSENYA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (89, 'YSOLIS', '123', 'YANET ISABEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (90, 'JFIGUEROA', '123', 'JACQUELINE LILIAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (91, 'MPALZA', '123', 'MARYE ANN LIZBETH', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (92, 'MTORREJON', '123', 'MILAGROS AURORA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (93, 'GMOLLO', '123', 'GLENDA MAGALI', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (94, 'RQUISPEJ', '123', 'ROSA JULIA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (95, 'EFERNANDEZ', '123', 'EDGAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (96, 'MOVIEDO', '123', 'MARCO ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (97, 'HGUERRERO', '123', 'HOMERO ROOSEVELT', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (98, 'LMONCADA', '123', 'LUIS ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (99, 'MMENDOZAC', '123', 'MARIA DE LAS MERCEDES', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (100, 'JCHAVEZC', '123', 'JULIO CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (101, 'DRAMIREZ', '123', 'DIANA MARGOT', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (102, 'CGUILLEN', '123', 'CARMEN TERESA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (103, 'ATUBILLAS', '123', 'ALBERTO RUBEN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (104, 'JJHONG', '123', 'JORGE RHALF', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (105, 'MCARHUAYO', '123', 'MARTHA ELENA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (106, 'MCANTORAL', '123', 'MAYDE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (107, 'JYATACO', '123', 'JUANA RITA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (108, 'LHERNANDEZ', '123', 'LIGIA DEYSI', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (109, 'NNEYRA', '123', 'NILDA OLIVIA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (110, 'YSIGUAS', '123', 'YOVANNA ELIZABETH', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (111, 'ETERRONES', '123', 'ELMER HERNAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (112, 'ARAMOSM', '123', 'ABDEL VICTOR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (113, 'AOSORIO', '123', 'ALBERTO DOMINGO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (114, 'ESALAZAR', '123', 'ELOY JESUS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (115, 'VRANGEL', '123', 'VIVIANA VERONICA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (116, 'JEVANAN', '123', 'JOSE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (117, 'LLOAYZA', '123', 'LEYDY JOANNA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (118, 'KCOTAQUISPE', '123', 'KAROT SINDY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (119, 'LBUSTINZA', '123', 'LUIS MANUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (120, 'CBONIFAZ', '123', 'CESAR AUGUSTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (121, 'LROMERO', '123', 'LUISA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (122, 'JGARATE', '123', 'JHONNY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (123, 'JRIVAS', '123', 'JOSE DOLORES', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (124, 'JPUICAN', '123', 'JOSE FELIPE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (125, 'JOYOLA', '123', 'JULIO CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (126, 'WCHINCHAY', '123', 'WILLIAM FRANCISCO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (127, 'VTIRADO', '123', 'VICTOR ENRIQUE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (128, 'JCACHAY', '123', 'JOSE ANDRES', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (129, 'MVENTURA', '123', 'MIGUEL ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (130, 'KGARCIA', '123', 'KARIN IVONE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (131, 'CMERINO', '123', 'CARLOS LENIN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (132, 'GMONTELUIZ', '123', 'GRACIELA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (133, 'SMORALES', '123', 'SALOMON', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (134, 'LRUIZR', '123', 'LADY DIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (135, 'FTORRESD', '123', 'FROY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (136, 'JRAMIREZ', '123', 'JUAN PABLO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (137, 'OALFARO', '123', 'OSCAR EDUARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (138, 'IALVA', '123', 'ISMAEL CRISTIAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (139, 'YCACERES', '123', 'YONDI LEONEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (140, 'JFERNANDEZ', '123', 'JUAN PABLO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (141, 'DGRAUS', '123', 'DIEGO SAUL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (142, 'JHUAMANC', '123', 'JOSE WILLIAM', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (143, 'RINFANTE', '123', 'RAUL ALFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (144, 'RLEONL', '123', 'RUBEN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (145, 'VMELENDEZ', '123', 'VICTOR ALEJANDRO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (146, 'MNEYRA', '123', 'MALENA DEL PILAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (147, 'RPALACIOS', '123', 'ROCIO DEL CARMEN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (148, 'ZPRETELL', '123', 'ZAYRA ADELAIDA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (149, 'RRAFAILE', '123', 'RICHARD JULIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (150, 'ERUIZ', '123', 'ELIANA MAGALY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (151, 'RSUING', '123', 'ROBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (152, 'JTARIFENO', '123', 'JORGE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (153, 'FTORREALVA', '123', 'FREDY PERCY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (154, 'LTORRES', '123', 'LUIS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (155, 'EANGELDONIS', '123', 'EDWIN JHONSON', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (156, 'JCALLE', '123', 'JORGE ARMENGOL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (157, 'SCARMEN', '123', 'SOCORRO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (158, 'KCASTILLO', '123', 'KELLY JAQUELINE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (159, 'MCHAQUI', '123', 'MARCOS ALEJANDRO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (160, 'YCORREA', '123', 'YASMIN CORAL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 300 records committed...
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (161, 'JDELAMA', '123', 'JORGE MIRKO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (162, 'RDELGADO', '123', 'RAUL ENRIQUE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (163, 'MENCALADA', '123', 'MIRNA ARCELY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (164, 'SFLORES', '123', 'SILVIA GISELA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (165, 'RAFLORES', '123', 'RAUL ARMANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (166, 'VGARCIA', '123', 'VANESSA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (167, 'JHUAMANCHUMO', '123', 'JAIME PACO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (168, 'AJARAMILLOC', '123', 'ARACELI DEL PILAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (169, 'SJIMENE', '123', 'SARITA ADELA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (170, 'JALAYO', '123', 'JUAN MANUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (171, 'EANGULO', '123', 'EDITH MARIBEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (172, 'JCABELLOB', '123', 'JOHANA AIMEE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (173, 'NCADILLO', '123', 'NIKO ELMER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (174, 'MGIRALDO', '123', 'MARIA GUADALUPE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (175, 'LGOICOCHEA', '123', 'LILI ELIZABETH', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (176, 'CMILLA', '123', 'CESAR GUSTAVO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (177, 'EPOLO', '123', 'EDGAR ALEX', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (178, 'EPUELLES', '123', 'ELISEO MARCIANO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (179, 'MREYES', '123', 'MARIA DEL PILAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (180, 'EVIDALQ', '123', 'EDGAR EDWIN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (181, 'JBERROSPI', '123', 'JORGE CRISTOPHER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (182, 'CROSALES', '123', 'CAROLINA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (183, 'MALVARADO', '123', 'MARIO HUMBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (184, 'DTORRES', '123', 'DORA MILAGROS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (185, 'YLABRIN', '123', 'YOVANY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (186, 'FLERTUA', '123', 'FRANCISCO SOLANO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (187, 'CLOPEZ', '123', 'CESAR AUGUSTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (188, 'JMARINAS', '123', 'JUDITH SHIRLEY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (189, 'CMATEO', '123', 'CONSTANTINO DAMIAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (190, 'JMENDOZA', '123', 'JOSE ORLANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (191, 'DPEREZ', '123', 'DANNY DOMINGO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (192, 'DPINEDA', '123', 'DELIA ESTHER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (193, 'KYARLEQUEC', '123', 'KATTY VANESSA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (194, 'KAJALLA', '123', 'KELY SALOME', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (195, 'BBETZABE', '123', 'BETZABE JUANA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (196, 'WCABALLERO', '123', 'WILLIAM', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (197, 'DHUALLPA', '123', 'DORISDAY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (198, 'MHUAPAYA', '123', 'MELISSA ROXANA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (199, 'EHUARANCCA', '123', 'EDWAR ALAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (200, 'AHUARANCCA', '123', 'ALEX JUVENAL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (201, 'HLEON', '123', 'HUGO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (202, 'LMIRANDAC', '123', 'LETICIA ESTEFANIA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (203, 'JOCOLAN', '123', 'JALBERTH JAVIER ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (204, 'CQUISPICURO', '123', 'CARLOS AUGUSTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (205, 'JRAMIREZQ', '123', 'JUAN CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (206, 'HRAMOS', '123', 'HADHE LIN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (207, 'DSAJAMI', '123', 'DONNA DELYS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (208, 'PSANTIN', '123', 'PABLO BENITO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (209, 'ATICONA', '123', 'ALEX CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (210, 'RABARCA', '123', 'ROCIO ISABEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (211, 'IALTAMIRANO', '123', 'ISABEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (212, 'RARIAS', '123', 'ROGER GAERO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (213, 'LBIFFI', '123', 'LUIS FERNANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (214, 'ACANCHAN', '123', 'ADOLFO MARTIN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (215, 'GCARDENAS', '123', 'GUSTAVO SANTIAGO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (216, 'RCASAS', '123', 'ROSARIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (217, 'EFONSECA', '123', 'EVELINA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (218, 'AGAMERO', '123', 'ANNIE ELIZABETH', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (219, 'RHINOSTROZA', '123', 'ROBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (220, 'JMONTALVOS', '123', 'JUAN SALVADOR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (221, 'JPAZOS', '123', 'JOSE PAULO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (222, 'LEPEREZP', '123', 'LENIN IVAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (223, 'JQUISPEB', '123', 'JUAN GABRIEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (224, 'PRODRIGUEZ', '123', 'PATRICIA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (225, 'LROSAS', '123', 'LUI ALLEN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (226, 'PSCARSI', '123', 'PALMIRA ANTONIETA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (227, 'NTARAZONAS', '123', 'NILA FELICIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (228, 'FTORRES', '123', 'FRANCISCO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (229, 'GURETA', '123', 'GIOVANA PILAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (230, 'GAGUILAR', '123', 'GLORIA SOLEDAD', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (231, 'LANAYA', '123', 'LIZETH NATHALIE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (232, 'LBURGOS', '123', 'LUIS ORLANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (233, 'NCABOS', '123', 'NATANAEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (234, 'ACASTOPE', '123', 'ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (235, 'JCHAVEZT', '123', 'JOSE MARIANO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (236, 'JCOTRINA', '123', 'JUAN CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (237, 'EDIAZ', '123', 'EVERLIN HADI', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (238, 'MGONZALESC', '123', 'MIRIAN MAYLEY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (239, 'AHERNANDEZ', '123', 'ALVARO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (240, 'PHUACHANI', '123', 'PANTALION', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (241, 'LLEONA', '123', 'LORENA RAQUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (242, 'DLEZCANO', '123', 'DEYNER DANIEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (243, 'MPEREZ', '123', 'MARINA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (244, 'MRAMIREZT', '123', 'MARIA FLOR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (245, 'JRIOJA', '123', 'JHEYSON EUFEMIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (246, 'CSANCHEZG', '123', 'CARLOS OCLIDE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (247, 'ASANCHEZ', '123', 'ALEJANDRO ESTEBAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (248, 'BSUAREZ', '123', 'ARQUIMEDES BENJAMIN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (249, 'EVEGAS', '123', 'EDUARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (250, 'LYAMPUFE', '123', 'LUIS ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (251, 'TAGUILAR', '123', 'TEODORA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (252, 'RAPAZA', '123', 'RICHARD WILBERTH', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (253, 'LBARRETO', '123', 'LUIS SERAFIN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (254, 'ABAYLON', '123', 'ADELAIDA JUDITH', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (255, 'WCANAZA', '123', 'WALTER FREDY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (256, 'ECASTILLOB', '123', 'EUGENIO NICASIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (257, 'KCHIPOCO', '123', 'KARLA FABIOLA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (258, 'ECONDORI', '123', 'ELVIS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (259, 'MFERNANDEZ', '123', 'MIGUEL ENRIQUE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (260, 'PGAMARRA', '123', 'PAUL ALEXIS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 400 records committed...
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (261, 'GGONZALESS', '123', 'GUIDO ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (262, 'RLLANOS', '123', 'RENE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (263, 'HMANRIQUE', '123', 'HERNANDO LEONIDAS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (264, 'OOLIVERA', '123', 'OMAR MELQUIADES', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (265, 'GQUIROZ', '123', 'GEOVANA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (266, 'RQUISPE', '123', 'RENE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (267, 'MQUISPEQ', '123', 'MARELY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (268, 'LROJAS', '123', 'LUIS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (269, 'LVILCA', '123', 'LORENZO MOISES', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (270, 'ZVILCA', '123', 'ZAYDA NILDA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (271, 'BZAPANA', '123', 'BLAS ISRAEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (272, 'DAGUINAGA', '123', 'DAVID ERNESTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (273, 'MALDEA', '123', 'MARIA ISABEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (274, 'EALIAGA', '123', 'ERIC EDILBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (275, 'CANGULO', '123', 'CARLOS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (276, 'FCARRION', '123', 'FLOR DEL PILAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (277, 'FCASTILLO', '123', 'FRANCO JOSUE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (278, 'LCHAMPI', '123', 'LUIS ABIMAEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (279, 'JESCOBAR', '123', 'JUAN FRANCISCO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (280, 'RFLORESA', '123', 'RAUL EDWIN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (281, 'JMATTA', '123', 'JUAN CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (282, 'COLANO', '123', 'CARLOS WILDOR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (283, 'MOYOLA', '123', 'MILNER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (284, 'BPANANA', '123', 'BETTY ESTHER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (285, 'EPINA', '123', 'EVELYN GERALDINE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (286, 'RQUISPEV', '123', 'RONALD', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (287, 'PRENGIFO', '123', 'PRISCILIA LEONOR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (288, 'SDELAGUILA', '123', 'NOBEL HOMERO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (289, 'JSIESQUEN', '123', 'JOSE DUVAL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (290, 'CVASQUEZ', '123', 'CARLOS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (291, 'JBECERRA', '123', 'JOSE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (292, 'MBEDIA', '123', 'MARINA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (293, 'LBUENO', '123', 'LAURA DELMA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (294, 'XCABALLERO', '123', 'XAVIER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (295, 'GCALSIN', '123', 'MERY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (296, 'KCASAFRANCA', '123', 'KARINA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (297, 'ECASTROB', '123', 'EDWARD', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (298, 'OCENTENO', '123', 'OSCAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (299, 'GCHAVEZ', '123', 'GERARDO CRISTIAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (300, 'ECHUCTAYAT', '123', 'ELIZABETH JULIA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (301, 'SDONAYRE', '123', 'SAMUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (302, 'BFIGUEROA', '123', 'BISVANI EMERIDA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (303, 'PHERRERA', '123', 'PIEDAD CELINA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (304, 'FHILARI', '123', 'FREDY EUSEBIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (305, 'CHUAMANM', '123', 'CINTHIA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (306, 'FLISARAZO', '123', 'FRANK FERRER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (307, 'RLOAIZA', '123', 'RUTH', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (308, 'CLUQUE', '123', 'CESAR LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (309, 'RMONJARAS', '123', 'RAUL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (310, 'OPENA', '123', 'OMAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (311, 'NSALAS', '123', 'NILO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (312, 'ESULLCA', '123', 'ELVIS FERNANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (313, 'JVARAL', '123', 'JOSE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (314, 'CVARGASE', '123', 'CATHERINA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (315, 'RVENERO', '123', 'ROCIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (316, 'RANGULO', '123', 'ROSA MERCEDES', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (317, 'BATOCHE', '123', 'BIENVENIDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (318, 'MCORAL', '123', 'MIRABEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (319, 'JDELAGUILA', '123', 'JEANS KERVIN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (320, 'SHIPUSHIMA', '123', 'SHIRLEY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (321, 'MMENDOZA', '123', 'MONIKA DEL PILAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (322, 'MORTIZ', '123', 'MARIA ISABEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (323, 'VSAAVEDRA', '123', 'VICTOR PATRICIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (324, 'DALVAREZ', '123', 'DENNIS MARCELINO GUSTAVO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (325, 'JAPAZA', '123', 'JESUS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (326, 'FBELLIDO', '123', 'FELICIANO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (327, 'YCJULA', '123', 'YESSICA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (328, 'YCRUZ', '123', 'YANINA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (329, 'RHUAYLLANI', '123', 'RUBEN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (330, 'WLOVON', '123', 'WILBER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (331, 'LMACHACA', '123', 'LEONIDAS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (332, 'AMAMANIG', '123', 'ALEJANDRO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (333, 'DMARIN', '123', 'DANIEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (334, 'EMENDOZAH', '123', 'EBERTH ASUNCION', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (335, 'ZPEZO', '123', 'ZENAIDA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (336, 'ERAMOS', '123', 'ELMER ALFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (337, 'MAMANCAY', '123', 'MARIA LUZ', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (338, 'LHURTADO', '123', 'LUIS ARMANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (339, 'NMILLA', '123', 'NILTON EDINSON', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (340, 'JPALACIOS', '123', 'JUAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (341, 'PSARAVIA', '123', 'PEDRO CRISANTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (342, 'NSOSA', '123', 'NATIVIDAD', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (343, 'MSOSA', '123', 'MARIA ISABEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (344, 'WFLORES', '123', 'WILLY ENRIQUE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (345, 'EGODOY', '123', 'EVER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (346, 'YRAMOS', '123', 'YESY DALY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (347, 'JULLOA', '123', 'JOSE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (348, 'HCARRION', '123', 'HENDERSON NOE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (349, 'ACHERO', '123', 'ARASELI YVONNE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (350, 'GCHOTA', '123', 'GARY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (351, 'JCRUZ', '123', 'JULIA HAYDEE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (352, 'VDELACRUZ', '123', 'VICTOR FABIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (353, 'LFERNANDEZR', '123', 'LUCY AURORA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (354, 'EREATEGUI', '123', 'EDGARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (355, 'ASALDIVAR', '123', 'ANGEL ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (356, 'CSOLIS', '123', 'CARLOS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (357, 'FSOTO', '123', 'FRANCO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (358, 'MVARGAS', '123', 'MERTON', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (359, 'AZETA', '123', 'BERNARDINO GERMAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (360, 'FASTUDILLO', '123', 'FELIX ESTEBAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 500 records committed...
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (361, 'JBALLONAG', '123', 'JULIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (362, 'CCHAMPA', '123', 'CARLOS HUMBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (363, 'ECUSTODIO', '123', 'EMILIO GREGORIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (364, 'LFARFAN', '123', 'LIZBETH ALHELY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (365, 'DJAIME', '123', 'DANY RAFAEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (366, 'LJARA', '123', 'LUIS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (367, 'LPERICHE', '123', 'LORENA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (368, 'KYARLEQUE', '123', 'KARINA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (369, 'OYOVERA', '123', 'OMAR MARTIN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (370, 'ALAATALAYA', '123', 'JUAN JOSE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (371, 'ECHAVEZA', '123', 'ERIKA SOLEDAD', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (372, 'SLOPEZ', '123', 'SIMEON', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (373, 'SZAVALETA', '123', 'SONIA BEATRIZ', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (374, 'LALBITES', '123', 'LEYDA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (375, 'HCCORAHUA', '123', 'HAYDEE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (376, 'LCUNYA', '123', 'LEONCIO JHONY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (377, 'LGARCIAB', '123', 'LUIGUI ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (378, 'AGOMEZ', '123', 'AQUILES MARCELINO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (379, 'JOHUAMANC', '123', 'JOSSIMAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (380, 'MJANAMPA', '123', 'MAICOL MICHAEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (381, 'MMELLISHO', '123', 'MARLENE YUZ', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (382, 'MQUISPEA', '123', 'MARCO ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (383, 'RTINOCO', '123', 'RODOLFO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (384, 'WZAMBRANO', '123', 'WILLIAM GILBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (385, 'JCASTILLOA', '123', 'JOSE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (386, 'JCHAPONAN', '123', 'JAIME HUMBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (387, 'EFERNANDEZD', '123', 'EDWIN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (388, 'PGONZALES', '123', 'PAULA ELSA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (389, 'FMARQUINA', '123', 'FELIX DARWIN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (390, 'JREYES', '123', 'JULIO CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (391, 'NSAUCEDO', '123', 'NEIL WILLIAM', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (392, 'HVERAC', '123', 'HERMELINDA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (393, 'EANDRADEB', '123', 'ENRIQUE ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (394, 'RARCOCCAULLA', '123', 'ROEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (395, 'MBARRIO', '123', 'MARILYN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (396, 'KCARDICH', '123', 'KEVIN ALEXANDER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (397, 'RDAVILA', '123', 'ROSALIA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (398, 'SLEON', '123', 'SANTIAGO ALCIDES', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (399, 'GLIMA', '123', 'GUIDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (400, 'SMITMA', '123', 'SANTOS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (401, 'EORTIZ', '123', 'EDGAR CLAUDIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (402, 'JPAHUARA', '123', 'JAIRO IVAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (403, 'YRAMOSF', '123', 'YONY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (404, 'SSORIANO', '123', 'SERGIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (405, 'VTELLO', '123', 'VANESSA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (406, 'NVALENZUELA', '123', 'NANCY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (407, 'FVARGASC', '123', 'FELIX HERNAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (408, 'CBARRERA', '123', 'CLEMENTE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (409, 'CCASTANEDA', '123', 'CARLOS ALFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (410, 'PCRUZ', '123', 'PABLO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (411, 'RDELOSSANTOS', '123', 'ROOSEWEL RUBEN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (412, 'JESQUENP', '123', 'JUAN PABLO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (413, 'PGARAY', '123', 'PEDRO JAIME', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (414, 'DGONZALES', '123', 'DANIEL ADOLFO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (415, 'EGUZMAN', '123', 'ELENA RENE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (416, 'JNUNEZ', '123', 'JULIO CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (417, 'ARAMOS', '123', 'RICHARD ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (418, 'SSILVA', '123', 'SOLANSH PAMELA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (419, 'ECHALAN', '123', 'EDWIN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (420, 'MCISNEROS', '123', 'MONICA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (421, 'JDELAPUENTE', '123', 'JOSE DAMIAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (422, 'MGUTIERREZD', '123', 'MARIA FAUSTA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (423, 'MHUACACHINO', '123', 'MANUEL ALEXANDER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (424, 'CNINO', '123', 'CARLOS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (425, 'GRAMIREZ', '123', 'GUILLERMO JOSE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (426, 'RRODRIGUEZ', '123', 'RONEY GILMER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (427, 'CVARGAS', '123', 'JULIO CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (428, 'OVILLEGAS', '123', 'OLGA GAUDENCIA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (429, 'ECANALES', '123', 'ELARD FIDEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (430, 'FCHAVEZG', '123', 'FRANCISCO DAVID', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (431, 'NCONDORI', '123', 'NORA VERONICA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (432, 'FFERNANDEZ', '123', 'FRANCISCO HENRY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1, 'richi', '123', 'Richard Carbajal Garcia', null, null, null, '1', null, to_date('17-04-2021 11:18:30', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (433, 'GFLORES', '123', 'GERMAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (434, 'FGUILLEN', '123', 'FREDY AGAPITO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (435, 'JIRIGOING', '123', 'JOSE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (436, 'JPAREDES', '123', 'JOSE IGNACIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (437, 'RPORTILLA', '123', 'ROSENDO JAVIER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (438, 'NTICONA', '123', 'NERIKA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (439, 'MZEGARRA', '123', 'MIGUEL ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (440, 'HLAGUNA', '123', 'HENRY GERMAN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (441, 'COLIVEROS', '123', 'CESAR WILLIANS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (442, 'HSALVADOR', '123', 'HUGO ERNESTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (443, 'JBEJARANO', '123', 'JULIO CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (444, 'EBOCANEGRA', '123', 'ENRIQUE ALFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (445, 'CCHAVEZ', '123', 'CESAR ENRIQUE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (446, 'JFERNANDEZC', '123', 'JANNET ALICIA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (447, 'FLEON', '123', 'FIDEL ISAIAS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (448, 'SREYES', '123', 'SARA MARIA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (449, 'FROJAS', '123', 'FABIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (450, 'EROQUE', '123', 'EVELYN MALENA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (451, 'FAQUINO', '123', 'FREDDY JAIME ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (452, 'RCUMPA', '123', 'ROSA GRACIELA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (453, 'GESTELA', '123', 'GILBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (454, 'CLANDIVAR', '123', 'CAROLINA VIVIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (455, 'VMARCOS', '123', 'VICTOR EDUARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (456, 'WMARTINEZ', '123', 'WILLIAM DE JESUS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (457, 'KMOLINA', '123', 'KATIA LORENA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (458, 'WMONTALVO', '123', 'WILLIAN ARNALDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (459, 'LMONTALVO', '123', 'LIDUVINO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 600 records committed...
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (460, 'CMURO', '123', 'CARLOS EDUARDO ANDRES', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (461, 'ANIETO', '123', 'ARACELY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (462, 'NOLAYA', '123', 'NIMIA BRENDITA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (463, 'LPAZ', '123', 'LUIS JOSE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (464, 'SRAMIREZB', '123', 'SEGUNDO VISITACION', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (465, 'JSANTACRUZ', '123', 'JORGE ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (466, 'CTAPIA', '123', 'CLOTILDE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (467, 'ATUNOQUES', '123', 'ASUNCION', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (468, 'RVARGAS', '123', 'RUBEN GREGORIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (470, 'AROJAS', '123', 'ALFONSO FELIX', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (471, 'CRAMIREZ', '123', 'CARLOS ANDRES', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (472, 'JLOPEZD', '123', 'JUANA LOURDES', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (473, 'EHERRERA', '123', 'ERLAND WILMAR', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (474, 'JGARAYAR', '123', 'JERSSON RICHARD', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (475, 'DFERIA', '123', 'DENISSE VIRGINA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (476, 'JFAJARDO', '123', 'JOSE EMILIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (477, 'HCONDORIC', '123', 'HIGINIO HONORATO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (478, 'CCERON', '123', 'CARLOS ENRIQUE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (479, 'LALBAYE', '123', 'FELIX LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (480, 'JALCANTARA', '123', 'JOSE ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (481, 'AALVAC', '123', 'ALFREDO WILIBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (482, 'LBERNAQUE', '123', 'LUIS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (483, 'SCABALLERO', '123', 'SOFIA MAGDALENA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (484, 'RCASTILLO', '123', 'RICARDO DAVID', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (485, 'LCASTRO', '123', 'LUIS JOSE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (486, 'LCRUZ', '123', 'LEANDRA SOLEDAD', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (487, 'LGARCIA', '123', 'CELSO LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (488, 'AGUEVARA', '123', 'ANDY MARLON', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (489, 'JHERNANDEZ', '123', 'JORGE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (490, 'NLEIVA', '123', 'NANCI ELENA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (491, 'JMORALES', '123', 'JOSE ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (492, 'JPOLO', '123', 'JUAN BENITO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (493, 'JRIOS', '123', 'JORGE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (494, 'LROJASC', '123', 'LUIS ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (495, 'JTANTALEAN', '123', 'JUAN JULIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (496, 'JCARPIO', '123', 'JESUS ARTURO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (497, 'MCHAVEZ', '123', 'MONICA MARIBEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (498, 'JCORDOVA', '123', 'JIMMY CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (499, 'RDELACRUZ', '123', 'RUBEN FABIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (500, 'VESTREMADOYRO', '123', 'VANESA ROSARIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (501, 'MHUAYCHAJENA', '123', 'MARLENY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (502, 'JIGLESIAS', '123', 'JAIME ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (503, 'FORDONEZ', '123', 'FLORENTINO SANTIAGO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (504, 'SSARMIENTO', '123', 'SILVIO GUSTAVO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (505, 'MTEJERINA', '123', 'MERCEDES MAGALLY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (506, 'CYPARRAGUIRRE', '123', 'CARO IRIS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (507, 'MVALDIVIAV', '123', 'MARLENE CECILIA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (508, 'JTESEN', '123', 'JORGE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (509, 'JSILVAS', '123', 'JOSE MARIA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (510, 'MSILVA', '123', 'MANUEL FRANCISCO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (511, 'NSALDANA', '123', 'NICANOR ABEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (512, 'SPALOMINO', '123', 'SIXTO CELSO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (513, 'CPAIVA', '123', 'CRYSTHIAN RAY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (514, 'JMEZA', '123', 'JUAN FABIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (515, 'CGUERRA', '123', 'CARLOS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (516, 'CGOMEZ', '123', 'CARLOS FORTUNATO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (517, 'VFERNANDEZ', '123', 'VIRGINIA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (519, 'DAPOLINARIO', '123', 'DIEGO MIJAIL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (520, 'CABAD', '123', 'CARMEN JANET', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (521, 'WCARRASCO', '123', 'WALTHER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (522, 'HCHICLOTE', '123', 'HUMBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (523, 'GCUBAS', '123', 'GOMER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (524, 'LCUEVA', '123', 'LUZGARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (525, 'LDIAZ', '123', 'LUIS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (526, 'OGRANADOS', '123', 'OSWALDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (527, 'LIRIGOIN', '123', 'LILIA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (528, 'MPINTADO', '123', 'MERCEDES TEODOMIRO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (529, 'YRAMIREZ', '123', 'YANNINA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (530, 'JSILVAB', '123', 'JORGE EDISON', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (531, 'JURBINA', '123', 'JULIO EDUARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (532, 'KATOCHE', '123', 'KETTY IVONNE', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (534, 'PCASTRO', '123', 'PABLO FLORENTINO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (535, 'JCHOZO', '123', 'JAVIER HIPOLITO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (536, 'GCRUZ', '123', 'GISELDA MARGARITA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (537, 'EFLORESF', '123', 'ELY JUDITH', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (538, 'SGONZALES', '123', 'SEGUNDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (539, 'CLAMAS', '123', 'CARLOS MIGUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (540, 'CLOPEZL', '123', 'CLAUDIO JIMMY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (541, 'CMACHADO', '123', 'CARLOTA CARIDAD', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (542, 'SVIDAL', '123', 'SALOMON', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (543, 'FVITE', '123', 'FRANCISCO JAVIER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (544, 'MYARLAQUE', '123', 'MIGUEL ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (545, 'AYOVERA', '123', 'ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (546, 'MVALLEJOS', '123', 'MARLON ERIK', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (547, 'TTAMAY', '123', 'TANIA MARIANELA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (548, 'CSUAREZ', '123', 'CRISTIAN ALVARO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (549, 'TRAMIREZ', '123', 'TATIANA MARIBEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (550, 'NNUNEZ', '123', 'NALDA MARIA ELENA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (551, 'EMONTES', '123', 'ERICK ENOCH', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (552, 'MLOPEZC', '123', 'MARINA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (553, 'PLINARES', '123', 'PEDRO PABLO MARTIN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (554, 'GDOMINGUEZ', '123', 'GONZALO DAVID', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (555, 'ABRIONES', '123', 'ALEX IDELSO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (556, 'CALVITEZ', '123', 'CARLOS GILBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (557, 'AZEVALLOS', '123', 'ANGEL GUSTAVO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (558, 'MCARPIO', '123', 'MIGUEL ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (559, 'JCHACA', '123', 'JOSE HENRY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (560, 'JCHALCO', '123', 'JOEL LARDY', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (561, 'FDELGADOM', '123', 'FREDDY ALVARO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (562, 'LFARFANR', '123', 'LENIN ARMANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 700 records committed...
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (563, 'JGUTIERREZ', '123', 'JOSE ALFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (564, 'MLIMA', '123', 'MIGUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (565, 'JMONTENEGRO', '123', 'JOSE WILDER', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (566, 'BOLARTES', '123', 'BERLY JOEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (567, 'HVERA', '123', 'HELEN', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (568, 'WABANTO', '123', 'WILIAN JESUS', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (569, 'MESPINO', '123', 'MIGUEL ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (570, 'DHOLGUIN', '123', 'DANIEL', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (571, 'MHUARIPATA', '123', 'MARCO ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (572, 'AMUNOZ', '123', 'ANA MARIA', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (573, 'JTORRESCH', '123', 'JOSE RICARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (574, 'HVASQUEZ', '123', 'HIDELBRANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:52', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1287, 'VFERNANDEZA', '123', 'VICTOR DANIEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1288, 'PGUERRERO', '123', 'PEDRO LUIS ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1289, 'NPURIZACA', '123', 'NERY', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1290, 'MCABREJOS', '123', 'MIRELLA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1291, 'PCELIS', '123', 'PAUL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1292, 'ANEVES', '123', 'ALESSANDRA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1293, 'ARODRIGUEZ', '123', 'ABEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1294, 'LAGUILAR', '123', 'LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1295, 'KCARBAJO', '123', 'KARIN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1296, 'CROJAS', '123', 'CAROLA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1297, 'LESCOBAR', '123', 'LOURDES', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1298, 'YZAVALA', '123', 'YESENIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1299, 'LCHINCHAY', '123', 'LUIS RAFAEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1300, 'SREBAZA', '123', 'SILVER', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1301, 'TARROYO', '123', 'TEODOLINDA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1302, 'RBERMEO', '123', 'RONALD', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1303, 'WCAMPOS', '123', 'WALTER', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1304, 'HCRUZ', '123', 'HERBERT', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1305, 'AJUNES', '123', 'ALEJANDRO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1306, 'CMEDINA', '123', 'CARLOS ALEJANDRO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1307, 'MMOTTA', '123', 'MARIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1308, 'PURBINA', '123', 'PATRICIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1309, 'MGUTIERREZB', '123', 'MAXIMO MARTIN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1310, 'CSANCHEZV', '123', 'CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1311, 'MATAULLUCO', '123', 'MIGUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1312, 'MCANDELA', '123', 'MILAGROS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1313, 'COJEDA', '123', 'CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1314, 'MTORRESF', '123', 'MARIELA ROXANA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1315, 'OVELASQUEZ', '123', 'OMAR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1316, 'HCASTILLO', '123', 'HECTOR ANIBAL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1317, 'JSEGOVIA', '123', 'JAVIER ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1318, 'RANCAJIMA', '123', 'RONALD', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1319, 'SPAHUARA', '123', 'SANDRA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1320, 'GCAJUSOL', '123', 'GUSTAVO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1321, 'HGARAY', '123', 'HEIDY', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1322, 'JDELGADO', '123', 'JORGE VICTOR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1323, 'APALADINES', '123', 'ANDRES LUCIANO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1324, 'MQUIJANDRIA', '123', 'MERLY GIOVANNA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1325, 'JBERNABE', '123', 'JUAN PABLO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1326, 'ETAPIA', '123', 'EDGAR YSMAEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1327, 'DCASTANON', '123', 'DAYSI', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1328, 'JCUTIPA', '123', 'JAVIER PAULO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1329, 'JGUTIERREZH', '123', 'JAIME', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1330, 'RCHAMBILLA', '123', 'ROBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1331, 'CANCCOC', '123', 'CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1332, 'LCALLE', '123', 'LUZ MARINA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1333, 'CCALLE', '123', 'CARLOS GERARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1334, 'JAGURTO', '123', 'JORGE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1335, 'KMORALES', '123', 'KARLA JANET', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1336, 'RPENA', '123', 'RITA MILA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1337, 'JHUAMAN', '123', 'JOSE FRANCISCO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1338, 'AMENDOZA', '123', 'LUCIO ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1339, 'FFLORES', '123', 'FRANCISCO FREDDY', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1340, 'GSERRUTO', '123', 'GUILLERMO ELISEO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1341, 'FRIVA', '123', 'FRANCISCO SEGUNDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1342, 'JQUEVEDO', '123', 'JANET', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1343, 'HLOPEZ', '123', 'HUGO BRIAN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1344, 'EMENDOZAR', '123', 'EDITH', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1345, 'HTORRES', '123', 'HUMBERTO RICHARD', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1346, 'WCAHUANA', '123', 'WALTER ROLANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1347, 'PCUCCHI', '123', 'PABLO JOSE', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1348, 'AJARAMILLO', '123', 'SANTOS ANGELITA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1349, 'CTOLEDO', '123', 'CESAR ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1350, 'NVERA', '123', 'NILDA ESTHER', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1351, 'JGUTIERREZR', '123', 'JOSE AUGUSTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1352, 'JMUNDACA', '123', 'JORGE ANDRES', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1353, 'FLAVALLE', '123', 'FEDERICO GUILLERMO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1354, 'MBARTHE', '123', 'MARCO ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1355, 'WCERQUIN', '123', 'WALTER', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1356, 'MBACA', '123', 'MANUEL RICARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1357, 'RSANCHEZ', '123', 'ROSA NIDIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1358, 'EGARCIAGODOS', '123', 'EMILIO ARTIDORO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1359, 'MSALAZAR', '123', 'MARIANO MOISES', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1360, 'CCASTILLO', '123', 'CARLOS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1361, 'MPEREA', '123', 'MARIA ELENA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1362, 'NSANTILLAN', '123', 'NELSON', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1363, 'ATOLEDO', '123', 'ADOLFO POLIDORO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1364, 'SHUAYAMA', '123', 'SERGIO DIONICIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1365, 'MRAMIREZR', '123', 'MIGUEL GRIMALDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1366, 'FDELGADO', '123', 'FRANCISCO ELISVAN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1367, 'FPEREZ', '123', 'FRANCISCO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1368, 'ECARDENAS', '123', 'EMMA FRANCY', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1369, 'JVARI', '123', 'MODESTO JESUS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1370, 'MGARCIA', '123', 'MIGUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1371, 'RCHUNGA', '123', 'KARINA ROXANA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1372, 'JCHUNGA', '123', 'JULIO CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1373, 'MGAMARRA', '123', 'MARTIN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1374, 'AANAYA', '123', 'ADA VIOLETA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 800 records committed...
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1375, 'CAQUIJE', '123', 'CARLOS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1376, 'ECAPARO', '123', 'EDUARDO JORGE', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1377, 'RSALCEDO', '123', 'ROBERTO CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1378, 'CLATORRE', '123', 'CESAR ALEJANDRO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1379, 'JLINARES', '123', 'JAVIER ENRIQUE', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1380, 'ATAMARIZ', '123', 'ANTONIO AMADEO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1381, 'SMEJIA', '123', 'SANDRA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1382, 'NSALAZAR', '123', 'NELLY', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1383, 'EGARCIAGA', '123', 'ELIO ASMILKAR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1384, 'HCHAVEZ', '123', 'HUMBELINA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1385, 'JORTIZ', '123', 'JOHN IVAN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1386, 'VMOQUILLAZA', '123', 'VICTORIA ELVIRA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1387, 'JALMENDRAS', '123', 'JORGE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1388, 'JCABELLO', '123', 'JUAN WILLIAM', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1389, 'JBARDALEZ', '123', 'JUAN ADOLFO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1390, 'JVASQUEZ', '123', 'JAIME MANUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1391, 'EPORTOCARRERO', '123', 'EDWIN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1392, 'CCABALLERO', '123', 'EYIMAR CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1393, 'MPALACIOS', '123', 'MARIA ESTHER', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1394, 'JNOLASCO', '123', 'JAIME MIGUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1395, 'BASALDE', '123', 'BALTAZAR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1396, 'FSILVA', '123', 'FLORO CELESTINO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1397, 'IAVALOS', '123', 'VICTOR YVAN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1398, 'ATACSI', '123', 'ARNALDO ALDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1399, 'VHUAPAYA', '123', 'VICTOR ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1400, 'ECHAVEZ', '123', 'ELIAS EMILIANO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1401, 'AOCHOA', '123', 'ANA MARIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1402, 'DSOTO', '123', 'DORA BASILIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1403, 'CALVAO', '123', 'CECILIA ZORAIDA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1404, 'JHUAMANF', '123', 'JENNY KATY', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1405, 'LRUBIANES', '123', 'LUIS RICARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1406, 'RRUIZR', '123', 'ROSA ISABEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1407, 'WPEBE', '123', 'WALTER AUGUSTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1408, 'JHUAMANI', '123', 'JANE JULIE', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1409, 'MQUISPET', '123', 'MIGUEL ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1410, 'JCORREA', '123', 'JULISSA CONSUELO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1411, 'NJUARES', '123', 'NYLLE', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1412, 'LCARRILLO', '123', 'LILLIAN LOURDES', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1413, 'AGALINDO', '123', 'ANDRES FERNANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1414, 'ARIVERA', '123', 'AIDA ALICIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1415, 'ANUNEZ', '123', 'LAZARO ARMANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1416, 'AMORALESC', '123', 'ALEXANDER HERADIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1417, 'ESOTO', '123', 'ERIK EMERZON', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1418, 'MCOLLAS', '123', 'MANUEL ELIAS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1419, 'MPIZARRO', '123', 'MARCO ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1420, 'GROSAZZA', '123', 'GIANCARLO ALBERTHO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1421, 'JESPINOZAA', '123', 'JUAN ROBERTO NICOLAS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1422, 'JBEDON', '123', 'JAVIER HECTOR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1423, 'HQUISPE', '123', 'HANNY MARIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1424, 'ANAHUIN', '123', 'ALICIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1425, 'EGARCIAG', '123', 'ERICK', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1426, 'JESPINOZAG', '123', 'JIMMY MARTIN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1427, 'JSOTO', '123', 'JUAN FRANCISCO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1428, 'OARRASCO', '123', 'OSCAR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1429, 'JVALENCIA', '123', 'JOSE MANUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1430, 'WFENCO', '123', 'WALTER ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1431, 'WSALAS', '123', 'WILLIAM RICARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1432, 'JLLUMPO', '123', 'JOSE ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1433, 'CNOGAMI', '123', 'CARLOS YASUHIRO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1434, 'OCASTRO', '123', 'OSCAR GUILLERMO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1435, 'CCAMBILO', '123', 'CARLOS EDGAR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1436, 'MALVA', '123', 'MILAGROS DEL ROSARIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1437, 'MANICAMA', '123', 'MAVI', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1438, 'RAGUILAR', '123', 'RUTH MAGALY', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1439, 'FARCE', '123', 'FIORELLA ALEXANDRA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1440, 'VARISMENDI', '123', 'VICTOR ADRIAN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1441, 'MARIZAGA', '123', 'MIGUEL ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1442, 'VASCONA', '123', 'VICTOR ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1443, 'SATUNCAR', '123', 'SANTIAGO EUGENIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1444, 'CBARRENECHEA', '123', 'CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1445, 'EBARRIENTOS', '123', 'ESWIN KELY', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1446, 'DBARTRA', '123', 'DORA VIOLETA GUILIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1447, 'JBAUTISTA', '123', 'JHON ALEX', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1448, 'JCALIZAYA', '123', 'JOSE ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1449, 'WCARBAJAL', '123', 'WELINTON CONRADO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1450, 'JCASTRO', '123', 'JOHNNY CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1451, 'ECASTRO', '123', 'EVERTH', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1452, 'KCHANCAFE', '123', 'KARINA MILAGROS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1453, 'GCHAVEZB', '123', 'GONZALO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1454, 'JCHUNGAA', '123', 'JAIRO ROMEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1455, 'WCIURLIZZA', '123', 'WUILLIAMS EDUARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1456, 'JCOCHACHIN', '123', 'JUSTINIANO ALEJO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1457, 'KCONTRERAS', '123', 'KELY MARITZA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1458, 'RCRUZ', '123', 'ROLANDO CESAI', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1459, 'SCRUZATE', '123', 'SIXTO BENJAMIN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1460, 'PCUEVA', '123', 'PATRICIA GUADALUPE', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1461, 'VDIOSES', '123', 'VALERY', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1462, 'JDURAN', '123', 'JORGE ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1463, 'FFERNANDEZG', '123', 'FABIOLA LIZBETH', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1464, 'RFUENTES', '123', 'RAQUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1465, 'DGAMA', '123', 'DAVID', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1466, 'RGARCIA', '123', 'ROSARIO JASUMI', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1467, 'LGIL', '123', 'LUIS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1468, 'GGONZALES', '123', 'GILBER', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1469, 'JGONZALESS', '123', 'JAIME FAUSTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1470, 'KGRANDEZ', '123', 'KARINA IVETTE', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1471, 'JGUERRA', '123', 'JUAN ALFONSO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1472, 'MGUIMAC', '123', 'MAGDALENA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1473, 'AGUTIERREZM', '123', 'ALVARO MARCELINO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1474, 'HHERNANDEZ', '123', 'HERNANDO STEVEN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 900 records committed...
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1475, 'KJIMENEZ', '123', 'FELICINDA KARIM', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1476, 'ALALICH', '123', 'ADRIANA SUYIN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1477, 'TLINARES', '123', 'TERESA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1478, 'LLISBOA', '123', 'LORENA ALICIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1479, 'LLUJAN', '123', 'JOSE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1480, 'AMAGUINA', '123', 'ATILIO MAMERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1481, 'IMAMANI', '123', 'IGNACIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1482, 'CMARIN', '123', 'CARLOS ARTURO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1483, 'IMARTINEZG', '123', 'ISAAC EDUARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1484, 'JMEJIAA', '123', 'JOSEPH AUGUSTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1485, 'JMOROCHO', '123', 'JUNIOR DAVID', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1486, 'SNINAJA', '123', 'SHEILA NATALI', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1487, 'JNORIEGA', '123', 'JORGE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1488, 'CPALACIOS', '123', 'CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1489, 'BPANTA', '123', 'BERTHA RUTH', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1490, 'APARDAVE', '123', 'ANGELA MILAGROS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1491, 'HPAREDES', '123', 'HECTOR MANUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1492, 'MPAREDES', '123', 'MARIA LUCRECIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1493, 'EPAREDESM', '123', 'ERIKA DELIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1494, 'JPERALTA', '123', 'JUAN CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1495, 'PPEREZ', '123', 'PERCY ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1496, 'JPEREZ', '123', 'JOSSEPH IGOR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1497, 'JPERLACIOS', '123', 'JUAN MARTIN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1498, 'YPINTO', '123', 'YURY ALFONSO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1499, 'SPUERTA', '123', 'SONIA MARIELLA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1500, 'JQUIJANO', '123', 'JOE ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1501, 'JQUINTANAA', '123', 'JUAN MANUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1502, 'jquinones', '123', 'JEANNE SUSAN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1503, 'MROMERO', '123', 'MARILUZ SILVIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1504, 'YROSADIO', '123', 'YASMIN YLSE', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1505, 'JRODRIGUEZH', '123', 'JENNY CATHERINE', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1506, 'JREVILLA', '123', 'JOSE FELIX', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1507, 'JRAMIREZR', '123', 'JUAN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1508, 'CSALAZAR', '123', 'CESAR JOSE', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1509, 'MSANCHEZ', '123', 'MIGUEL ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1510, 'ISANCHEZ', '123', 'INGRID BETSABE', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1511, 'ESANCHEZ', '123', 'EDUARDO WILFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1512, 'HSANJINEZ', '123', 'HUGO ALEXANDER', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1513, 'NSANTAMARIA', '123', 'NATALIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1514, 'MSARUMO', '123', 'MILAGROS ELVIRA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1515, 'RSERPA', '123', 'ROLANDO VIDAL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1516, 'ESEVERINOC', '123', 'EDITH GULLIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1517, 'JSIFUENTES', '123', 'JOSE EDUARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1518, 'LSOANA', '123', 'LILIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1519, 'SSUYON', '123', 'SERGUIS ALEXANDER', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1520, 'MVALVERDE', '123', 'MIGUEL EDGAR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1521, 'MVASQUEZF', '123', 'MILAGROS DEL PILAR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1522, 'RVERA', '123', 'ROMAN EDINSON', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1523, 'JVEREAU', '123', 'JOAQUIN IVAN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1524, 'LVERGARA', '123', 'LUCIO EUSEBIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1525, 'DVIDAL', '123', 'DIANA LUZ', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1526, 'VVILCAPAZA', '123', 'WALTHER', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1527, 'RVIZCONDE', '123', 'ROMINA VIVIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1528, 'RYAURI', '123', 'ROSALIA CONSUELO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1529, 'DYAURI', '123', 'DENNIS MIGUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1530, 'LZEA', '123', 'LILI EMILIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1531, 'FZUTA', '123', 'FERNANDO ROLAN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1532, 'RFERNANDEZ', '123', 'RONAL HAMILTON', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1533, 'CQUIROZ', '123', 'CESAR AUGUSTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1534, 'EPAJARES', '123', 'EDWIN ROGGER', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1535, 'JCUBAS', '123', 'JORGE FERNANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1536, 'MARTEAGA', '123', 'MANUEL EINAR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1537, 'MRIOS', '123', 'MARIO ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1538, 'RTALAVERA', '123', 'RODOLFO FABIAN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1555, 'RSALAZAR_CD', '123', 'ROBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1556, 'KLEON_CD', '123', 'KAREN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1558, 'JSOTO_C', '123', 'JUAN FRANCISCO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1574, 'HTEJADA_ALA', '123', 'HENRY', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1583, 'BAYALA', '123', 'BETSY INGRID', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1588, 'MANDIAV_AAA', '123', 'MILDER', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (721, 'GFERNANDEZ', '123', 'GENOVEVA ARMINDA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (723, 'EACHA', '123', 'ELOY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (724, 'SHUAMAN', '123', 'SANDY DAVID', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (725, 'GMAMANI', '123', 'GUIDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (726, 'CPANTA', '123', 'CARLOS GUSTAVO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (727, 'PROQUE', '123', 'PERCY ELVIS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (728, 'ASALAZARD', '123', 'ADDLER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (729, 'SSANCHEZT', '123', 'SINTIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (730, 'BYANA', '123', 'BERTHA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (731, 'AACOSTA', '123', 'AUBER LANDY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (732, 'LCHAVEZ', '123', 'LILIANA ELVIRA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (733, 'DCHAVEZ', '123', 'DORIS ELIZABETH', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (734, 'CCHAVEZG', '123', 'CESAR MANUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (735, 'JQUIROZ', '123', 'JUAN ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (736, 'RSALDANA', '123', 'REY ORLANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (737, 'HBERMEO', '123', 'HEBERTH PATRICIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (738, 'LBERNAOLA', '123', 'LUIS ELIAS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (739, 'RCAMPOS', '123', 'ROSAURA RUTH', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (740, 'JCASTANEDA', '123', 'JORGE JENNER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (741, 'GCHIRINOS', '123', 'GUSTAVO AMARO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (742, 'VMINGUILLO', '123', 'VICTOR FEDERICO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (743, 'CMINOPE', '123', 'CESAR SIMON', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (744, 'JPOQUIOMA', '123', 'JUAN JOSE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (745, 'MRAMOS', '123', 'MARTIN JESUS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (746, 'TSIME', '123', 'TALITA CUMI', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (747, 'HURIBE', '123', 'HENRY HUGO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (748, 'MANDIAV', '123', 'MILNER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (749, 'ABARBAL', '123', 'ABLUSER ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (750, 'CBASURTO', '123', 'CARLOS MANUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (751, 'JDELACRUZ', '123', 'JAIME GAMANIEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 1000 records committed...
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (752, 'RMARINAS', '123', 'RODOLFO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (753, 'LORE', '123', 'LUIS ORLANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (754, 'FSOTOMAYOR', '123', 'FRANCISCO JAVIER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (755, 'ETORRESS', '123', 'EDGAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (756, 'RVENTURA', '123', 'RICHARD ALFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (757, 'JVICENTEM', '123', 'JULIO CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (758, 'AARIAS', '123', 'ALFONSO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (759, 'BATAYUPANQUI', '123', 'BERTA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (760, 'ACACERES', '123', 'ANITA NOHELIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (761, 'DCONTRERAS', '123', 'DUBERLY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (762, 'LDIAZM', '123', 'LUIS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (763, 'CMEJIA', '123', 'CESAR ENRIQUE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (764, 'CROMAN', '123', 'CORNELIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (765, 'LSALAS', '123', 'LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (766, 'EVALENZUELA', '123', 'EDGAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (767, 'JVARGASM', '123', 'JESUS ROBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (768, 'JVELAZCO', '123', 'JOHN VALENTIN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (769, 'JAGUILARV', '123', 'JULIO AUGUSTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (770, 'MALDANA', '123', 'MARCELINO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (771, 'RAYALA', '123', 'ROSARIO DEL PILAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (772, 'JCHAVEZG', '123', 'JORGE CARLOS FORTUNATO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (773, 'NCHIROQUE', '123', 'NESTOR PORFIRIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (774, 'LCHIROQUE', '123', 'LAZARO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (775, 'JCRUZZ', '123', 'JOSE SANTIAGO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (776, 'KHUACO', '123', 'KARINA MABEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (777, 'KIPARRAGIRRE', '123', 'KRISS PAOLA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (778, 'EPEREZ', '123', 'ELIZAR ASUNCION', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (779, 'JRAMOS', '123', 'JORGE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (780, 'VTUME', '123', 'VIRGILIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (781, 'JVEGA', '123', 'JORGE ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (782, 'JALVARADO', '123', 'JULIO CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (783, 'IANTICONA', '123', 'ITALO ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (784, 'JCALDERON', '123', 'CARMEN JUDITH', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (785, 'RCHAVEZ', '123', 'RUTH MELLY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (786, 'JCUMPA', '123', 'JOHN ERICK', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (787, 'JGRAUM', '123', 'JULIO REINERIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (788, 'JGUANILO', '123', 'JUAN MANUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (789, 'NMEDINA', '123', 'NATALIA JAQUELINE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (790, 'JMURGA', '123', 'JULIO CESAR SEGUNDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (791, 'EROBLES', '123', 'ELMER JOSE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (792, 'GSANDOVALS', '123', 'GREGORIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (793, 'ESILVAB', '123', 'JOSE EDUARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (794, 'PSOSA', '123', 'PATRICIA INES', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (795, 'CTANTALEAN', '123', 'CARLOS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (796, 'ETORRESA', '123', 'YOLVI ELIZABETH', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (797, 'TVERASTEGUI', '123', 'TELMO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (798, 'LVILLAVICENCIO', '123', 'LUIS MARIANO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (799, 'LVILLEGAS', '123', 'LUIS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (800, 'OZAVALETA', '123', 'OSWALDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (801, 'LALVARES', '123', 'LEONEL LEYVIS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (802, 'CCORDOVA', '123', 'CARMEN ROSA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (803, 'CHUAMANI', '123', 'CAMILO DE LELIS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (804, 'AHUARACHI', '123', 'ALFREDO UBALDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (805, 'JHUERTAS', '123', 'JAIME LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (806, 'RMARQUEZ', '123', 'ROLANDO RIDER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (807, 'MRAMOSH', '123', 'MARCO ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (808, 'PSAGUA', '123', 'PEDRO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (809, 'JSAIRA', '123', 'JONATHAN JOSE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (810, 'LSALINAS', '123', 'LENY NELLY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (811, 'LUCHARICO', '123', 'LUCY VERONICA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (812, 'RZAPATA', '123', 'ROXANA MARIELA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (813, 'CBEGAZO', '123', 'CECILIA VERONICA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (814, 'LCARLOS', '123', 'LILIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (815, 'ACHIROQUE', '123', 'ALEXANDER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (816, 'MCOLMENARES', '123', 'MAURICIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (817, 'DDELACRUZ', '123', 'CLEVER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (818, 'KGOMEZ', '123', 'KARLA MILAGROS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (819, 'SNOPO', '123', 'SANDRA YARMILA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (820, 'LPAZI', '123', 'LUIS ARTURO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (821, 'SSANCHEZ', '123', 'SEGUNDO CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (822, 'DSEGURA', '123', 'DANIEL ROMAN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (823, 'LZAMBRANO', '123', 'LUISA GERTRUDIS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (824, 'FZEGARRA', '123', 'FIDEL ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (825, 'RUSCAMAYTA', '123', 'RICHARD JORGE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (826, 'WSEGURA', '123', 'WILLIAM ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (827, 'LORELLANA', '123', 'LILIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (828, 'FMOTTA', '123', 'FREDY JOEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (829, 'CGUTIERREZ', '123', 'CESAR ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (830, 'AFUENTES', '123', 'ALBERTO GIANCARLO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (831, 'AFLORESC', '123', 'ANA MARIANELLA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (832, 'VCONDO', '123', 'VICTOR HENRY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (833, 'WASPILCUETA', '123', 'WIGBERTO HERNAN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (834, 'RARBANIL', '123', 'RICARDO ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (835, 'MCASAS', '123', 'MITCHAEL EUSEBIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (836, 'LMARCOS', '123', 'LUIS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (837, 'KNIETOV', '123', 'KELY VANESSA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (838, 'JPALACIN', '123', 'JESUS GABRIEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (839, 'NTUEROS', '123', 'NATALY VICTORIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (840, 'EVALLE', '123', 'EDWIN RAUL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (841, 'JANTON', '123', 'JESSICA JHOVANA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (842, 'ECAMPOS', '123', 'EDITH', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (843, 'VCAVANILLAS', '123', 'VICTOR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (844, 'AESPINOZA', '123', 'AUGUSTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (845, 'EREATEGUIR', '123', 'EZEQUIEL VIDAL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (846, 'RRODRIGUEZR', '123', 'ROGER ASUNCION', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (847, 'JROMEROS', '123', 'JULIO CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (848, 'WAMBROSIO', '123', 'WILDER GIOLINO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (849, 'CCASTRO', '123', 'CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (850, 'KCCAICO', '123', 'KEVIN ADRIAN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (851, 'EDAVILAR', '123', 'ELMER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 1100 records committed...
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (852, 'LCDELGADO', '123', 'LEONARDO CAMILO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (853, 'AGONZALES', '123', 'DIMAS AGUSTIN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (854, 'LGUERRAT', '123', 'LUIS ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (855, 'JLEONA', '123', 'JENNY MAGALI', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (856, 'LMENDOZA', '123', 'LUIS ELIAS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (857, 'DQUINTANILLA', '123', 'DENNYS EDUARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (858, 'RSANCHEZS', '123', 'RICARDO FRANCISCO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (859, 'TSUAREZ', '123', 'TEOFILO ROLANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (860, 'GTACCSI', '123', 'GENOVEVA EMPERATRIZ', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (861, 'GRETUERTO', '123', 'GUIDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (862, 'LPASTOR', '123', 'LENIN ALEXANDER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (863, 'MLUNA', '123', 'MARCO ALFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (864, 'RLOPEZ', '123', 'RAUL ERNESTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (865, 'JLLALLIHUAMAN', '123', 'JAIME TEOFILO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (866, 'JJARA', '123', 'JUAQUIN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (867, 'HESTRADA', '123', 'HIPOLITO SEGUNDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (868, 'MCASTRO', '123', 'MELINA PILAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (869, 'JCADILLO', '123', 'JOSE JAIME', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (870, 'MBALTAZAR', '123', 'MARIO ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (871, 'AVILCHEZV', '123', 'ADELMO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (872, 'LVALDIVIEZO', '123', 'LUIS EDGARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (873, 'TPEREA', '123', 'TEOBALDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (874, 'JFLORES', '123', 'JULIO ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (875, 'OFLORESP', '123', 'ODILO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (876, 'CDOMINGUEZR', '123', 'CARMEN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (877, 'PCRUZE', '123', 'PEDRO EVARISTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (878, 'DCASTILLO', '123', 'DIANA MARIBEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (879, 'LARIAS', '123', 'LIZ DIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (880, 'CAREVALO', '123', 'CARLOS EDUARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (881, 'JZARATE', '123', 'JULIAN ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (882, 'MTICONA', '123', 'MIRIAM GLICET', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (883, 'WRUELAS', '123', 'WILMER ABRAHAM', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (884, 'LQUISPE', '123', 'LOURDES VILMA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (885, 'MNINANTAY', '123', 'MIRIAM', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (886, 'AFLORESE', '123', 'ANGEL HUGO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (887, 'JFERNANDEZM', '123', 'JORGE RICARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (888, 'CCARPIOR', '123', 'CARLOS EFRAIN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (889, 'RCALLATA', '123', 'RENE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (890, 'JCAIRO', '123', 'JUAN ROSVELT', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (891, 'JTIPISMANA', '123', 'JORGE ARTURO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (892, 'JTEJEDA', '123', 'JUAN GERMAN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (893, 'HSALAZAR', '123', 'HENRRY HING', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (894, 'JPINTO', '123', 'JESSICA KAREN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (895, 'RMORA', '123', 'ROSARIO DEL PILAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (896, 'RHERNANDEZ', '123', 'ROBERTO CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (897, 'MCHUQUIPIONDO', '123', 'MENDELSON', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (898, 'JBRENA', '123', 'JUAN CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (899, 'JANAHUARI', '123', 'JUAN ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (900, 'BAGUEDO', '123', 'JBUENAVENTURA ARTURO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (901, 'EABREGO', '123', 'EFRAIN MATEO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (902, 'RVILLAGARAY', '123', 'RICHARD VICTOR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (903, 'SSAAVEDRA', '123', 'SONIA MAGALY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (904, 'RMORAN', '123', 'RICARDO LEONIDAS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (905, 'WGALA', '123', 'WILLY RENATO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (906, 'ACUELLO', '123', 'TEOFILA AMERICA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (907, 'MCAYO', '123', 'MIGUEL ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (908, 'ECAPILLO', '123', 'EDUARDO LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (909, 'DCALLATOPA', '123', 'DANIEL ALCIDES', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (910, 'NBABASTRE', '123', 'NOEMI RODY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (911, 'WAVILA', '123', 'WILMER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (912, 'TAGUIRRE', '123', 'TOVIAS NARCES', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (913, 'AROMERO', '123', 'ALEJANDRO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (914, 'DMONTALBAN', '123', 'DIANA CAROLINA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (915, 'JMECHATO', '123', 'JUANA DEL ROSARIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (916, 'GMARIGORDA', '123', 'GUILLERMO SANTIAGO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (917, 'MGUTIERREZV', '123', 'MABEL KARIM', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (918, 'CDIAZ', '123', 'CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (919, 'KDAVILA', '123', 'KATYA FIORELLA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (920, 'MCIEZA', '123', 'MILLAN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (921, 'OCHAVEZ', '123', 'ORLANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (922, 'WCARRANZA', '123', 'WILSON ARTEMIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (923, 'WBOULANGER', '123', 'WALTER RICARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (924, 'RBERNAL', '123', 'ROSAURA LUZ', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (925, 'ETABOADA', '123', 'ELVA MARIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (926, 'JOLIVARES', '123', 'JOSSIE LOURDES', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (927, 'JMEJIA', '123', 'JORGE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (928, 'SMEDINA', '123', 'SARA MALEXI', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (929, 'SDIAZ', '123', 'SONIA VANESSA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (930, 'JDIAZS', '123', 'JOSE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (931, 'WBRAVO', '123', 'FAREZ WALTER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (932, 'LAZANA', '123', 'LUIS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (933, 'SVALDERRAMA', '123', 'SONIA MAGALI', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (934, 'ARUIZ', '123', 'ASDEMIO MARCELO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (935, 'JOTINIANO', '123', 'JOSE SAMUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (936, 'CCASTILLOH', '123', 'CARLOS OSWALDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (937, 'MVELARDE', '123', 'MELQUIADES JAVIER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (938, 'NSURCO', '123', 'NERY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (939, 'CQUISPEC', '123', 'CLEMENTE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (940, 'IPUMASUPA', '123', 'ISAIS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (941, 'HPINTO', '123', 'HUGO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (942, 'SPAMPA', '123', 'SERGIO WALTER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (943, 'WMOROCCO', '123', 'WILBER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (944, 'DANCO', '123', 'DORA ELIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (945, 'VZAMBRANO', '123', 'VICENTE JORGE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (946, 'LVASQUEZ', '123', 'LISETT', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (947, 'WTICONA', '123', 'WILBER JULIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (948, 'CSOLISC', '123', 'CLEVERT', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (949, 'ESANZ', '123', 'ELIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (950, 'HMAMANI', '123', 'HIPOLITO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (951, 'RLLALLERCO', '123', 'ROBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 1200 records committed...
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (952, 'JFLOREZ', '123', 'JUAN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (953, 'CAREQUE', '123', 'CELSY ZULLY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (954, 'YTORRESV', '123', 'YESIKA MARIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (955, 'RTICONA', '123', 'ROBERTO JESUS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (956, 'JSALAZAR', '123', 'JOHANA VERONICA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (957, 'MQUILCAHUANCA', '123', 'MARLENE REBECA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (958, 'JOCHOA', '123', 'JOSE SIXTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (959, 'BNINA', '123', 'BERNARDO FELICIANO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (960, 'SMENDOZA', '123', 'STEPHANY MILAGROS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (961, 'FCAHUA', '123', 'FROYLAN JESUS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (962, 'RBELTRAN', '123', 'RAUL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (963, 'NSUANA', '123', 'NESTOR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (964, 'MAQUISPEA', '123', 'MANUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (965, 'EPOMA', '123', 'EFRAIN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (966, 'LMAMANI', '123', 'LEONIDAS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (967, 'JDALENS', '123', 'JESUS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (968, 'MCASTROP', '123', 'MARTIN MANUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (969, 'ECALCINA', '123', 'EVA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (970, 'RALCOS', '123', 'RONALD ISIDRO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (971, 'RACHATA', '123', 'RICARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (972, 'GTORRES', '123', 'GARY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (973, 'IREATEGUI', '123', 'ITALO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (974, 'LREATEGUIV', '123', 'LIRIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (975, 'EPASHANASI', '123', 'EDWIN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (976, 'JNACARINO', '123', 'JORGE ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (977, 'RGONZALESV', '123', 'RUTH', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (978, 'JESTELA', '123', 'JOSE WILDOR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (979, 'FCAMPOS', '123', 'FERNANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (980, 'ACACHAY', '123', 'ANGEL FAUSTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (981, 'GBONFILD', '123', 'GREIS MILAGROS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (982, 'CALVAREZ', '123', 'CESAR ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (983, 'VCARMEN', '123', 'VICTOR RAUL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (984, 'CCHIRINOS', '123', 'CARLOS ENRIQUE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (985, 'MGOMEZ', '123', 'MIRIAM PILAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (986, 'JHUARIPATA', '123', 'JUDITH MAURA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (987, 'JLONDONA', '123', 'JUAN TEOFILO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (988, 'JMORALESR', '123', 'JULIO ENRIQUE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (989, 'JPOMA', '123', 'JUSTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (990, 'RQUISPEM', '123', 'RUBEN ROGER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (991, 'MAGUIRREA', '123', 'MAGALI MARLENI', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (992, 'MEUGENIO', '123', 'MARINA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (993, 'AMAGARINO', '123', 'ALEX HENRY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (994, 'MRAMIREZL', '123', 'MARLON ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (995, 'LSEVILLANO', '123', 'LUIS MIGUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (996, 'WTRUJILLO', '123', 'WILDER LEVI', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (997, 'JVALLEJOS', '123', 'JOSE CELESTINO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (998, 'AVARGAS', '123', 'ADRIAN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (999, 'AYQUISE', '123', 'ANTHONY ROBERT', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1000, 'RCADENILLAS', '123', 'ROBERTO CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1001, 'WGRANADOS', '123', 'WILSON JORGE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1002, 'DGUERRERO', '123', 'DEYCI YANET', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1003, 'RMEDINA', '123', 'RAMON', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1004, 'AMERA', '123', 'ANGEL SEGUNDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1005, 'SPEREZ', '123', 'SEGUNDO NICIADES', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1006, 'ERAMIREZ', '123', 'EDGARD NILSON', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1007, 'IRODRIGUEZ', '123', 'IVON PAMELA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1008, 'ISILVA', '123', 'DENISSE ISABEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1009, 'WSILVA', '123', 'EDWARD WILMER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1010, 'KVALDEZ', '123', 'KERIN MADAY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1011, 'EZARATEP', '123', 'ELVER WILFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1012, 'MCARRION', '123', 'MARIO ENRIQUE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1013, 'SCHAVEZ', '123', 'SIMON', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1014, 'CDAVILA', '123', 'CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1015, 'AHERRERAS', '123', 'AUGUSTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1016, 'CIRIGOIN', '123', 'CESAR ARMANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1017, 'RMILLONES', '123', 'ROBIN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1018, 'RPAREDES', '123', 'RICARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1019, 'VQUIROZ', '123', 'VICTOR ALEJANDRO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1020, 'KVILLALOBOS', '123', 'KARINA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1021, 'JYALTA', '123', 'JORGE ELADIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1022, 'GBOCANEGRA', '123', 'GILBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1023, 'DCHAVEZB', '123', 'DAVID GIULIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1024, 'ADIAZ', '123', 'ARIEL WELLINGTON', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1025, 'WGARCIA', '123', 'WILLIAN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1026, 'JORDONEZ', '123', 'JUAN GENARO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1027, 'JPEREZH', '123', 'JOSE EMILIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1028, 'JSONO', '123', 'JOSE RUPERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1029, 'MURBINA', '123', 'MERCEDES CONSTANSA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1030, 'EVILLANUEVA', '123', 'EDINSON', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1031, 'SZENA', '123', 'SOFIA JACKELINE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1032, 'WABANTOE', '123', 'WALTER FRANCISCO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1033, 'LAPOLINARIO', '123', 'LUIS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1034, 'AARRIARAN', '123', 'ABELARDO MANUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1035, 'RASTETE', '123', 'ROXANA IVONNE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1036, 'CBASILIO', '123', 'CESAR AUGUSTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1037, 'SCOLLANTES', '123', 'SANTOS BERNABE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1038, 'JCUELLAR', '123', 'JOSE GABRIEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1039, 'CDELATORRE', '123', 'CHRISTIAN DANNY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1040, 'FDELGADOF', '123', 'FIORELLA DEL CARMEN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1041, 'EESPINOZA', '123', 'ESTUARDO FIDEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1042, 'AGUILLEN', '123', 'AMADOR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1043, 'LHUAMAN', '123', 'LUIS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1044, 'TLAGUNA', '123', 'TANYA LUZ', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1045, 'MLITANO', '123', 'MIGUEL FAUSTINO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1046, 'LMENDIETA', '123', 'LILIA NELLY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1047, 'LMESONES', '123', 'LUCY NOEMI', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1048, 'JMORI', '123', 'JESUS ORLANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1049, 'DNAVARRO', '123', 'DALIA ZULEMA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1050, 'SNUNEZ', '123', 'SANTOS ANDRES', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1051, 'LOTERO', '123', 'LUIS HORACIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 1300 records committed...
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1052, 'GPALOMARES', '123', 'GUSTAVO ADOLFO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1053, 'WROJAS', '123', 'WEYDER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1054, 'JROQUE', '123', 'JUAN LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1055, 'JSALINAS', '123', 'JUAN BLANCO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1056, 'DSANTACRUZ', '123', 'DERY MABELL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1057, 'ASANTIBANEZ', '123', 'ARMANDO MARTIN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1058, 'SSPIERS', '123', 'SILVIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1059, 'NTARAZONA', '123', 'NICIANCENO EDILBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1060, 'LTORRESPISCOYA', '123', 'LUIS ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1061, 'AVASQUEZ', '123', 'ANA MARIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1062, 'EVEGA', '123', 'ELISA SUSANA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1063, 'RVELASQUEZ', '123', 'RAFAEL MARTIN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1064, 'KAGURTO', '123', 'KARINA LUISA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1066, 'MCANICOBA', '123', 'MCKEVIN PAUL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1067, 'LCARDENAS', '123', 'LIZETH ANANI', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1068, 'LCARRILLOM', '123', 'LUZ AYDE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1069, 'SFONSECA', '123', 'SIGFREDO ERNESTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1070, 'MGODINEZ', '123', 'MARIANELA BEATRIZ', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1071, 'FHUAMANI', '123', 'FLOR DE MARIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1072, 'DMEDRANO', '123', 'DANIEL PAULINO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1073, 'MNEYRAC', '123', 'MAGNA MODESTA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1074, 'GOLIVERA', '123', 'GIANCARLO ANTHONI', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1075, 'GPANTOJA', '123', 'GASTON', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1076, 'WQUISPE', '123', 'WILFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1077, 'RROSALES', '123', 'RANDY FRANCIS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1078, 'KSAEZ', '123', 'KATERIN NADIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1080, 'MSALBATIER', '123', 'MELISSA GULIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1081, 'JSILVA', '123', 'JORGE ELENO MARTIN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1082, 'MALDEAQ', '123', 'MARIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1083, 'RARIASV', '123', 'ROGER NELSON', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1084, 'PARRIBASPLATA', '123', 'PILAR ESTILITA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1085, 'ECARDENASC', '123', 'EDGAR GAMALIEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1086, 'DESPINOZA', '123', 'DANNY ARNALDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1087, 'VOSORIO', '123', 'VICTOR ROLANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1088, 'GBALDEONC', '123', 'DIOGENES GONZALO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1089, 'PCARRION', '123', 'PABLO DEMETRIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1090, 'SRAMOS', '123', 'SILVIA SACHIKO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1091, 'DJIMENEZ', '123', 'DEYSI GLADYS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1092, 'JMARILUZ', '123', 'JUAN PABLO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1093, 'JCUEVA', '123', 'JAVIER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1094, 'MZAVALETA', '123', 'JULIA MARCIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1095, 'LREATEGUI', '123', 'LIZ', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1096, 'JCESPEDES', '123', 'JEAN CARLO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1097, 'CBARDALES', '123', 'CARLOS ALFONSO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1098, 'RCASTROMORALES', '123', 'ROCIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1099, 'RROBLES', '123', 'ROBERT RONALD', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1100, 'LJULCA', '123', 'LUCY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1101, 'MTRUJILLO', '123', 'MANUEL NICOLAS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1102, 'LMONTENEGRO', '123', 'LAURA PILAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1103, 'BMOLINA', '123', 'BENJAMIN ROISY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1104, 'CSIU', '123', 'CARMEN JESSICA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1105, 'MGALICIA', '123', 'MIGUEL ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1106, 'JCASTILLO', '123', 'JESUS SANTIAGO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1107, 'RMARTINEZ', '123', 'RICHARD JACKSON', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1108, 'JARITOMI', '123', 'JAIME', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1109, 'KCALDERON', '123', 'KATHY ELENA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1110, 'MCHAPILLIQUEN', '123', 'MARIANO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1111, 'JGONZALES', '123', 'JESSICA MAGALY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1112, 'BOTERO', '123', 'BENJAMIN JUAN VICTOR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1113, 'HSAUNE', '123', 'HECTOR ANIBAL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1114, 'DSCHEREIBER', '123', 'DAVID ALEXANDER', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1115, 'AFERNANDEZS', '123', 'ANACLETO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1116, 'NMONTEZUMA', '123', 'NORMA EDITH', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1117, 'SVEGAS', '123', 'GREGORIA SOLEDAD', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1118, 'SAQUINO', '123', 'SALOME', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1119, 'CBURGOS', '123', 'CESAR ENRIQUE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1120, 'LCHICOMA', '123', 'LILIANA LORENA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1121, 'AVILCHEZ', '123', 'ANA MARIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1122, 'YBRINGAS', '123', 'YURI ALEXIS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1123, 'JCABRAL', '123', 'JULIO CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1124, 'HCAMPOSANO', '123', 'HENRY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1125, 'JDAVILA', '123', 'JOSE MARCELINO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1126, 'JDEALMEIDA', '123', 'JOAO MANUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1127, 'DDELACRUZE', '123', 'DANIEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1128, 'ZLOAYZA', '123', 'ZULEYKA DEYDANIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1129, 'FMORENO', '123', 'FRANCISCO MIGUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1130, 'AOLIDEN', '123', 'ANA MARIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1131, 'WPEREZ', '123', 'WILLY ALEXIS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1132, 'LQUIROZ', '123', 'LORENA LIZBETH', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1133, 'DTALAVERA', '123', 'DIANA LEONOR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1134, 'MGONZALES', '123', 'MARIA MILAGROS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1135, 'CLAPA', '123', 'CLAUDIO ARTURO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1136, 'LMURGUEYTIO', '123', 'LORENA MILAGROS', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1137, 'FSANCHEZ', '123', 'FRANCISCO RENE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1138, 'CSEGURA', '123', 'CORNELIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1139, 'MSIESQUEN', '123', 'MARITZA ESTELA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1140, 'BSILVA', '123', 'BETTY', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1141, 'CVERGARAC', '123', 'CRISTINA CATHERINE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1142, 'KAREVALO', '123', 'KAREN ARIADNA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1143, 'LBENAVIDES', '123', 'LUIS GABRIEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1144, 'OCABALLERO', '123', 'GUMERCINDO OSCAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1145, 'JCANDELA', '123', 'JOHANNA DEL PILAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1146, 'KCHACALIAZA', '123', 'KAREN TERESA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1147, 'ECORNEJO', '123', 'ENRIQUE PATRICIO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1148, 'NESPINOZA', '123', 'NELLY JENNE', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1149, 'DGARRIDO', '123', 'DANNY ANTONIO SEGUNDO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1150, 'GGONZALESB', '123', 'GUNTHER HERNAN', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1151, 'EGUEVARA', '123', 'EDILBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1152, 'CMALPICA', '123', 'CAROL NATHALI', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1153, 'AMONTERO', '123', 'ABNER ERICK', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 1400 records committed...
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1154, 'KMONTESINOS', '123', 'KATIA LUCIA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1155, 'MPOMA', '123', 'MARVELI ISAMAR', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1156, 'YPRE', '123', 'YESSICA', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1157, 'CRAMOSV', '123', 'CHRISTIAN MANUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1158, 'FREVILLA', '123', 'FRANCISCO MAURICIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1159, 'MRIQUELME', '123', 'MILAGROS ANA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1160, 'RRODRIGUEZC', '123', 'ROBERTO CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1161, 'ARUEDA', '123', 'ALBERTO CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1162, 'CSANCHEZE', '123', 'CARLOS ALEJANDRO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1163, 'EVIDAL', '123', 'EVELYN JENNY', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1164, 'DBUTRONL', '123', 'DIEGO GRIMALDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1165, 'JCHOY', '123', 'JOHANA MELANIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1166, 'HFIGUEROA', '123', 'HOMER GUILLERMO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1167, 'EHUANACO', '123', 'ELIZABETH DIANA ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1168, 'DMORALES', '123', 'DAVID', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1169, 'MSAAVEDRA', '123', 'MIGUEL ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1170, 'JTITO', '123', 'JEREMIAS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1171, 'AARMIJO', '123', 'ALYSON KATHERINE', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1172, 'MCASTILLA', '123', 'MARIA DEL CARMEN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1173, 'ACHAVEZ', '123', 'ANGELICA ROCIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1174, 'LCHIHUAN', '123', 'LIV LILIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1175, 'BDELATORRE', '123', 'BERTHA EMILIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1176, 'CHURTADO', '123', 'CECILIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1177, 'LSALAZAR', '123', 'LORENZO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1178, 'CSALDARRIAGA', '123', 'CRISTEL YIRLY MIRIAN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1179, 'GSANCHEZ', '123', 'GIANPIERRE GERSON', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1180, 'GHUARAQUISPE', '123', 'GIOVANNA HERMELINDA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1181, 'OORMENO', '123', 'OSCAR ALFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1182, 'NTELLO', '123', 'NANCY', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1183, 'YDIOS', '123', 'YANET DE JESUS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1184, 'IHUAYAQUISPE', '123', 'IVAN JAVIER', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1185, 'JNARREA', '123', 'JOEL ABELARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1186, 'HOBLITAS', '123', 'HECTOR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1187, 'DSANCHEZ', '123', 'DARWIN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1188, 'EAREVALO', '123', 'ELIZABETH JANNET', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1189, 'DBARRETO', '123', 'DULA FLORINDA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1190, 'OBRIONES', '123', 'OMAR ULISES', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1191, 'ACHAVEZM', '123', 'ALVARO BRYAN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1192, 'ECHIGNE', '123', 'ELIZABETH TATIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1193, 'CESPINOZA', '123', 'CESAR NAPOLEON', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1194, 'GGIRALDOP', '123', 'GISELLA ROXANA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1195, 'JHERRERA', '123', 'JOSE ARTURO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1196, 'PHINOSTROZA', '123', 'STEFANNYE PAMELA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1197, 'ILIZA', '123', 'ISABEL PAMELA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1198, 'JLLANOS', '123', 'JORGE LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1199, 'LMUNARRIZ', '123', 'LUIS FELIPE', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1200, 'OPICCINI', '123', 'ONELIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1201, 'JPONCE', '123', 'JERIKA MIRELLA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1202, 'KRUIZ', '123', 'KATTERINE FIORELLA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1203, 'GAVANZINI', '123', 'GUILLERMO JOSE CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1204, 'JMIRANDAC', '123', 'JENNY CLORINDA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1205, 'MSUAREZ', '123', 'MARTIN CRISTIAN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1206, 'NBUGUNA', '123', 'NILTON NORBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1207, 'RNOBLECILLA', '123', 'RICARDO GUSTAVO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1208, 'IMARTINEZ', '123', 'ISAAC EDUARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1209, 'LPATINO', '123', 'LEONEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1210, 'VRAMIREZ', '123', 'VICTOR MANUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1211, 'CHUANACUNI', '123', 'CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1212, 'FCHACHI', '123', 'FREDDY', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1213, 'AZAVALA', '123', 'ABNER', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1214, 'RHUERTAS', '123', 'MARIA DEL ROSARIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1215, 'FRONDINEL', '123', 'FERNANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1216, 'RVALDIVIEZO', '123', 'ROBERTO CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1217, 'MCUEVA', '123', 'MIGUEL ANGEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1218, 'MCAHUAYA', '123', 'MARISOL CARMEN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1219, 'HAMTURISMO', '123', 'EIRL HILARIO ANALY MARLENNY', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1220, 'JCCAPA', '123', 'JUAN ELISBAN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1221, 'AMALPARTIDA', '123', 'ALEJANDRO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1222, 'MUNISANTIAGOTU', '123', 'DE TUCUMA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1223, 'LCOTRINA', '123', 'LUIS MIGUEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1224, 'MFARRO', '123', 'MARTHA ISABEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1225, 'JBLONDET', '123', 'JACQUELIN DEL ROSARIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1226, 'ASANCHEZE', '123', 'ANDRES ABRAHAM', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1227, 'JSEVILLA', '123', 'JUAN CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1228, 'MGRANDEZ', '123', 'MILENA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1229, 'CMALAGA', '123', 'CESAR ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1230, 'JCRUZR', '123', 'JUAN VALERIANO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1231, 'AALVITRES', '123', 'ALICIA CONSUELO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1232, 'RPEÑA', '123', 'RITA MILA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1233, 'YFLORES', '123', 'YAHAIDA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1234, 'ERONDON', '123', 'ELIZABETH', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1235, 'NZAPATA', '123', 'NORMA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1236, 'EHUERTAS', '123', 'ELENA ROSARIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1237, 'TSANTOYO', '123', 'TULIO EDUARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1238, 'RSALAZAR', '123', 'ROBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1239, 'KSANCHEZ', '123', 'KILMENY CARMELA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1240, 'MTORRES', '123', 'MARCO ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1241, 'WMORENO', '123', 'WENDY', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1242, 'KLEON', '123', 'KAREN ZULEICA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1243, 'JGUEVARAC', '123', 'JOSE ARTEMIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1244, 'RFLORES', '123', 'RODOLFO DALI', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1245, 'GGRANIZO', '123', 'GISSELY MONICA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1246, 'VMARTINEZ', '123', 'VERONICA CECILIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1247, 'JUEJOWA', '123', 'JUAN ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1248, 'ASILVA', '123', 'ALESSANDRA CELESTE', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1249, 'TTRUJILLO', '123', 'TANIA ALIDA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1250, 'EGUTIERREZ', '123', 'EDDY RICHARD', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1251, 'EPEROCHENA', '123', 'EDUARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1252, 'JARELLANO', '123', 'JULIO CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1253, 'JBELLIDO', '123', 'JODIE KATHERINE', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 1500 records committed...
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1254, 'LSORIAR', '123', 'LIMNY LILIANA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1255, 'AALVAREZ', '123', 'ALI VIRGILIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1256, 'PBUSTAMANTE', '123', 'PRISCILLA ESTEPHANIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1257, 'RSUAREZ', '123', 'RICARDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1258, 'KMONTALVO', '123', 'KARLHA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1259, 'JGARCIA', '123', 'JULIO ALFREDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1260, 'MHUAMAN', '123', 'MARDEN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1261, 'FOSORIO', '123', 'FROILAN OSWALDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1262, 'KYEREN', '123', 'KARLA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1263, 'JSERRANO', '123', 'JOSE', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1264, 'SSAAVEDRAS', '123', 'SOLEDAD', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1265, 'LATUNCAR', '123', 'LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1266, 'BBOUCHER', '123', 'ANTONIO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1267, 'JMEDIANERO', '123', 'JEAN PAUL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1268, 'VALDAVE', '123', 'VICTOR POMPEYO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1269, 'YVEGA', '123', 'YOLANDA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1270, 'EITURRIZAGA', '123', 'ERICKO FERNANDO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1271, 'ADIAZZ', '123', 'ANA MARIA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1272, 'ECORONEL', '123', 'EDGARD', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1273, 'IDUENAS', '123', 'ISAIAS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1274, 'CMERCADO', '123', 'CARLA', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1275, 'CGRILLO', '123', 'CARMEN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1276, 'MOLORTIGA', '123', 'MARCO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1277, 'LSANCHEZ', '123', 'LUIS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1278, 'CLEON', '123', 'CARLOS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1279, 'VOTINIANO', '123', 'VICTOR RAUL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1280, 'CVALLEJO', '123', 'CARLOS CESAR', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1281, 'RPOMA', '123', 'ROMULO ABEL', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1282, 'JTRUJILLO', '123', 'JHON', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1283, 'ECACERES', '123', 'ELMO EFRAIN', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1284, 'AGUTIERREZ', '123', 'ALBERTO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1285, 'MNAVARRO', '123', 'MARCO', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.SEG_M_USUARIO (id_usuario, cod_usuario, clave_usuario, nombre_usuario, x4, x5, x6, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1286, 'DNEIRA', '123', 'DENNIS', null, null, null, '1', null, to_date('17-04-2021 13:09:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 1533 records loaded
--prompt Loading TRAMITE.SEG_R_USUARIO_PERFIL...
insert into TRAMITE.SEG_R_USUARIO_PERFIL (id_usuario_perfil, id_sistema, id_usuario, id_perfil, id_oficina, id_cargo)
values (3, 1, 184, 1, 1, 1);
insert into TRAMITE.SEG_R_USUARIO_PERFIL (id_usuario_perfil, id_sistema, id_usuario, id_perfil, id_oficina, id_cargo)
values (5, 1, 184, 2, 1, 3);
insert into TRAMITE.SEG_R_USUARIO_PERFIL (id_usuario_perfil, id_sistema, id_usuario, id_perfil, id_oficina, id_cargo)
values (4, 1, 581, 1, 1, 1);
insert into TRAMITE.SEG_R_USUARIO_PERFIL (id_usuario_perfil, id_sistema, id_usuario, id_perfil, id_oficina, id_cargo)
values (6, 1, 1, 1, 1, 1);
insert into TRAMITE.SEG_R_USUARIO_PERFIL (id_usuario_perfil, id_sistema, id_usuario, id_perfil, id_oficina, id_cargo)
values (1, 1, 1, 1, 2, 1);
insert into TRAMITE.SEG_R_USUARIO_PERFIL (id_usuario_perfil, id_sistema, id_usuario, id_perfil, id_oficina, id_cargo)
values (2, 1, 1, 2, 1, 2);
commit;
--prompt 6 records loaded
--prompt Loading TRAMITE.TRA_D_PLANTILLA_CAMPO...
insert into TRAMITE.TRA_D_PLANTILLA_CAMPO (id_plantilla_campo, id_plantilla, id_campo, orden, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (61, 0, 3, 9, '1', null, to_date('12-06-2020 21:03:32', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_D_PLANTILLA_CAMPO (id_plantilla_campo, id_plantilla, id_campo, orden, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (60, 0, 11, 7, '1', null, to_date('12-06-2020 21:03:32', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_D_PLANTILLA_CAMPO (id_plantilla_campo, id_plantilla, id_campo, orden, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (63, 0, 7, 13, '1', null, to_date('12-06-2020 21:03:32', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_D_PLANTILLA_CAMPO (id_plantilla_campo, id_plantilla, id_campo, orden, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (67, 0, 16, 8, '1', null, to_date('12-06-2020 21:03:32', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_D_PLANTILLA_CAMPO (id_plantilla_campo, id_plantilla, id_campo, orden, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (62, 0, 4, 10, '1', null, to_date('12-06-2020 21:03:32', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_D_PLANTILLA_CAMPO (id_plantilla_campo, id_plantilla, id_campo, orden, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (66, 0, 15, 6, '1', null, to_date('12-06-2020 21:03:32', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_D_PLANTILLA_CAMPO (id_plantilla_campo, id_plantilla, id_campo, orden, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (65, 0, 9, 12, '1', null, to_date('12-06-2020 21:03:32', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_D_PLANTILLA_CAMPO (id_plantilla_campo, id_plantilla, id_campo, orden, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (64, 0, 8, 11, '1', null, to_date('12-06-2020 21:03:32', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_D_PLANTILLA_CAMPO (id_plantilla_campo, id_plantilla, id_campo, orden, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (59, 0, 14, 5, '1', null, to_date('12-06-2020 21:03:32', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_D_PLANTILLA_CAMPO (id_plantilla_campo, id_plantilla, id_campo, orden, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (58, 0, 13, 4, '1', null, to_date('12-06-2020 21:03:32', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_D_PLANTILLA_CAMPO (id_plantilla_campo, id_plantilla, id_campo, orden, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (57, 0, 12, 3, '1', null, to_date('12-06-2020 21:03:32', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_D_PLANTILLA_CAMPO (id_plantilla_campo, id_plantilla, id_campo, orden, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (56, 0, 2, 2, '1', null, to_date('12-06-2020 21:03:32', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_D_PLANTILLA_CAMPO (id_plantilla_campo, id_plantilla, id_campo, orden, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (55, 0, 5, 1, '1', null, to_date('12-06-2020 21:03:32', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 13 records loaded
--prompt Loading TRAMITE.TRA_L_CABECERA...
insert into TRAMITE.TRA_L_CABECERA (id_cabecera, nombre_anio, nombre_decenio, codigo_imagen, nombre_imagen, extension_imagen, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (6, '´Año del Bicentenario del Perú: 100 años de independencia´', ''' Decenio de la Igualdad de Oportunidades para Mujeres y Hombres ''', 'logo_ana', 'cabecera', '.png', '1', 'WCANCHO', to_date('27-06-2020 02:51:12', 'dd-mm-yyyy hh24:mi:ss'), '192.168.1.47', 'WCANCHO', to_date('07-01-2021 09:02:31', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254');
commit;
--prompt 1 records loaded
--prompt Loading TRAMITE.TRA_L_CAMPO...
insert into TRAMITE.TRA_L_CAMPO (id_campo, id_campo_padre, desc_campo, codigo_campo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1, 0, 'Documento', null, '1', null, to_date('12-06-2020 17:59:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_CAMPO (id_campo, id_campo_padre, desc_campo, codigo_campo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (2, 1, 'Nro de Documento', 'NRO_DOCUMENTO', '1', null, to_date('12-06-2020 17:59:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_CAMPO (id_campo, id_campo_padre, desc_campo, codigo_campo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (3, 1, 'Asunto', 'ASUNTO', '1', null, to_date('12-06-2020 17:59:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_CAMPO (id_campo, id_campo_padre, desc_campo, codigo_campo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (4, 1, 'Referencia', 'REFERENCIA', '1', null, to_date('12-06-2020 17:59:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_CAMPO (id_campo, id_campo_padre, desc_campo, codigo_campo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (5, 1, 'Fecha de Documento', 'FECHA', '1', null, to_date('12-06-2020 17:59:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_CAMPO (id_campo, id_campo_padre, desc_campo, codigo_campo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (6, 0, 'Destino Interno', null, '1', null, to_date('12-06-2020 17:59:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_CAMPO (id_campo, id_campo_padre, desc_campo, codigo_campo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (7, 6, 'Oficina', 'DES_INT_OFICINA', '1', null, to_date('12-06-2020 17:59:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_CAMPO (id_campo, id_campo_padre, desc_campo, codigo_campo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (8, 6, 'Destinatario', 'DES_INT_DESTINATARIO', '1', null, to_date('12-06-2020 17:59:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_CAMPO (id_campo, id_campo_padre, desc_campo, codigo_campo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (9, 6, 'Cargo', 'DES_INT_CARGO', '1', null, to_date('12-06-2020 17:59:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_CAMPO (id_campo, id_campo_padre, desc_campo, codigo_campo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (10, 0, 'Destino Externo', null, '1', null, to_date('12-06-2020 17:59:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_CAMPO (id_campo, id_campo_padre, desc_campo, codigo_campo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (11, 10, 'Entidad', 'DES_EXT_ENTIDAD', '1', null, to_date('12-06-2020 17:59:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_CAMPO (id_campo, id_campo_padre, desc_campo, codigo_campo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (12, 10, 'Rubrica', 'DES_EXT_RUBRICA', '1', null, to_date('12-06-2020 17:59:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_CAMPO (id_campo, id_campo_padre, desc_campo, codigo_campo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (13, 10, 'Destinatario', 'DES_EXT_DESTINATARIO', '1', null, to_date('12-06-2020 17:59:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_CAMPO (id_campo, id_campo_padre, desc_campo, codigo_campo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (14, 10, 'Cargo', 'DES_EXT_CARGO', '1', null, to_date('12-06-2020 17:59:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_CAMPO (id_campo, id_campo_padre, desc_campo, codigo_campo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (16, 10, 'Dirección', 'DES_EXT_DIRECCION', '1', null, to_date('12-06-2020 17:59:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_CAMPO (id_campo, id_campo_padre, desc_campo, codigo_campo, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (15, 10, 'Oficina', 'DES_EXT_OFICINA', '1', null, to_date('12-06-2020 17:59:33', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 16 records loaded
--prompt Loading TRAMITE.TRA_L_ENTIDADES...
insert into TRAMITE.TRA_L_ENTIDADES (id_entidad, desc_entidad, ruc_entidad, abreviacion_entidad, direccion_entidad, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1, 'ANA', null, null, null, '1', null, to_date('23-04-2021 18:09:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_ENTIDADES (id_entidad, desc_entidad, ruc_entidad, abreviacion_entidad, direccion_entidad, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (2, 'ENERGIA Y MINAS', null, null, null, '1', null, to_date('23-04-2021 18:09:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_ENTIDADES (id_entidad, desc_entidad, ruc_entidad, abreviacion_entidad, direccion_entidad, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (3, 'SERNARP', null, null, null, '1', null, to_date('23-04-2021 18:09:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_ENTIDADES (id_entidad, desc_entidad, ruc_entidad, abreviacion_entidad, direccion_entidad, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (4, 'SERFOR', null, null, null, '1', null, to_date('23-04-2021 18:09:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 4 records loaded
--prompt Loading TRAMITE.TRA_L_ESTADO_DOCUMENTO...
insert into TRAMITE.TRA_L_ESTADO_DOCUMENTO (id_estado_documento, desc_estado_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1, 'BORRADOR', '1', null, to_date('25-04-2021 00:52:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_ESTADO_DOCUMENTO (id_estado_documento, desc_estado_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (2, 'ENVIADO', '1', null, to_date('25-04-2021 00:52:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_ESTADO_DOCUMENTO (id_estado_documento, desc_estado_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (3, 'RECHAZADO', '1', null, to_date('25-04-2021 00:52:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_ESTADO_DOCUMENTO (id_estado_documento, desc_estado_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (4, 'ANULADO', '1', null, to_date('25-04-2021 00:52:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_ESTADO_DOCUMENTO (id_estado_documento, desc_estado_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (5, 'OBSERVADO', '1', null, to_date('25-04-2021 00:52:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_ESTADO_DOCUMENTO (id_estado_documento, desc_estado_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (6, 'REVISADO', '1', null, to_date('25-04-2021 00:52:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_ESTADO_DOCUMENTO (id_estado_documento, desc_estado_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (7, 'APROBADO', '1', null, to_date('25-04-2021 00:52:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_ESTADO_DOCUMENTO (id_estado_documento, desc_estado_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (8, 'VISADO', '1', null, to_date('25-04-2021 00:52:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_ESTADO_DOCUMENTO (id_estado_documento, desc_estado_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (9, 'FIRMADO', '1', null, to_date('25-04-2021 00:52:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_ESTADO_DOCUMENTO (id_estado_documento, desc_estado_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (10, 'FINALIZADO', '1', null, to_date('25-04-2021 00:52:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_ESTADO_DOCUMENTO (id_estado_documento, desc_estado_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (11, 'RECIBIDO', '1', null, to_date('25-04-2021 01:09:31', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 11 records loaded
--prompt Loading TRAMITE.TRA_L_TAREA...
insert into TRAMITE.TRA_L_TAREA (id_tarea, desc_tarea, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1, 'Firma', '1', null, to_date('23-04-2021 18:28:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TAREA (id_tarea, desc_tarea, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (2, 'Visar', '1', null, to_date('23-04-2021 18:28:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TAREA (id_tarea, desc_tarea, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (3, 'Aprobar', '1', null, to_date('23-04-2021 18:28:14', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TAREA (id_tarea, desc_tarea, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (4, 'Revisar', '1', null, to_date('24-04-2021 22:43:23', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 4 records loaded
--prompt Loading TRAMITE.TRA_L_TIPO_DOCUMENTO...
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (64, null, 'Acta', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (641, null, 'Acta de Conformidad', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (15, null, 'Acuerdo de Consejo Directivo', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (45, null, 'Adenda de Contrato', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (65, null, 'Ayuda Memoria', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (38, null, 'Boleta de Venta', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (66, null, 'Boletas De Deposito', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (68, null, 'Cargos', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (9, '02', 'Carta', null, '1', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (32, null, 'Carta Circular', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (69, null, 'Carta Múltiple', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (70, null, 'Carta Notarial', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (25, null, 'Carta Orden R.O. - Pensiones', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (905, null, 'Carta STPAD', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (71, null, 'Casos Especiales', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (72, null, 'Certif. Áreas Libres', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (39, null, 'Certificado', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (73, null, 'Certificado De Devolución', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (48, null, 'Comprobante de Pago', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (906, null, 'Comunicación de Orden de Pago', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (80, null, 'Constancia (S) Registral (Es)', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (74, null, 'Constancia De Pago De Derecho De Vigencia', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (75, null, 'Constancia De Pago De Penalidad', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (77, null, 'Constancia De Pago Por Fecha', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (78, null, 'Constancia De Vigencia', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (81, null, 'Constancias De Trámite', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (4, null, 'Contrato', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (5, null, 'Convenio', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (82, null, 'Copia', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (83, null, 'Copia Informativa', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (51, null, 'Cotización', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (84, null, 'Curriculum Vitae', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (35, null, 'Cédula de Notificación', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (231, null, 'Declaración Aduanera', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (52, null, 'Declaración Jurada', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (261, null, 'Decreto de Gerencia General', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (237, null, 'Depósito', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (85, null, 'Devoluciones De Pago', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (270, null, 'Directiva General', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (86, null, 'Directivas Administrativas', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (87, null, 'Directivas de Gerencia General', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (132, null, 'Directivas Presidenciales', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (229, null, 'Documento Autorizado', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (88, null, 'Documento De Cobranza', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (133, null, 'Entrega de Cargo', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (262, null, 'Entrega de materiales de difusión', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (21, null, 'Factura', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (276, null, 'Factura Electrónica', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (256, null, 'Ficha de Procedimiento de Preparación de Secciones ', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (252, null, 'Ficha de Procesamiento', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (271, null, 'Ficha Técnica de Preparación para Estudios Petromineralógicos', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (142, null, 'Formulario', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (92, null, 'Guia De Remisión', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (145, null, 'Hoja de Liquidación de Penalidad', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (148, null, 'Hoja de Observación', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (22, null, 'Hoja de Remisión', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (13, null, 'Informe', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (242, null, 'Informe Circular', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (280, null, 'Informe Comisión Inventario', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (221, null, 'Informe de Comité Especial', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (137, null, 'Informe de Control Patrimonial', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (250, null, 'Informe de Ensayo', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (260, null, 'Informe de Paleontología', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (249, null, 'Informe de Precalificación', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (265, null, 'Informe del Órgano Instructor Sancionador', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (240, null, 'Informe Múltiple', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (258, null, 'Informe Múltiple de Comité Especial', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (254, null, 'Informe por Evento de Difusión', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (216, null, 'Informe Técnico', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (62, null, 'Informe Técnico - Científico Post Campo', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (61, null, 'Informe Técnico - Científico Pre Campo', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (255, null, 'Informe Técnico de Análisis Granulométrico', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (253, null, 'Informe Técnico de Estudio', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (131, null, 'Liquidación de Fondos para Caja Chica', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1, null, 'Memorando', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (130, null, 'Memorando Cafae', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (3, null, 'Memorando Circular', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (275, null, 'Memorando Comisión Inventario', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (41, null, 'Memorando Comité Especial', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (219, null, 'Memorando de Acciones de Control', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (220, null, 'Memorando de Actividades de Control', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (95, null, 'Memorando Múltiple', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (277, null, 'Memorando POM', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (53, null, 'Muestras', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (18, null, 'Notificación', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (8, '01', 'Oficio', null, '1', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (105, null, 'Oficio Circular', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (106, null, 'Oficio Múltiple', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (108, null, 'Orden De Pago', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (215, null, 'Pedido del Consejo Directivo', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (36, null, 'Planilla', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (128, null, 'Reporte de Dosimetría de Radiaciones', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (58, null, 'Reporte de Producción', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (251, null, 'Reporte de Resultados', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (257, null, 'Reporte de Resultados de Preparación Mecánica ', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (6, null, 'Requerimiento de Compra', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (149, null, 'Requerimiento de Salida de Almacén', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (7, null, 'Requerimiento de Servicio', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (116, null, 'Resolucion Jefatural', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (121, null, 'Resolución de Gerencia General', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 100 records committed...
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (139, null, 'Resolución de Presidencia', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (63, null, 'Resolución Directoral', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (19, null, 'Revista', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_L_TIPO_DOCUMENTO (id_tipo_documento, id_tipo_documento_pide, desc_tipo_documento, sigla_tipo_documento, flg_mgd, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (14, null, 'Sesión de Consejo Directivo', null, '0', '1', null, to_date('12-04-2021 19:58:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 104 records loaded
--prompt Loading TRAMITE.TRA_M_CORRELATIVO...
insert into TRAMITE.TRA_M_CORRELATIVO (id_correlativo, id_tipo_documento, id_oficina, id_perfil, n_correlativo, n_anio)
values (4, 1, 2, 1, 2, 2021);
commit;
--prompt 1 records loaded
--prompt Loading TRAMITE.TRA_M_CUT...
insert into TRAMITE.TRA_M_CUT (id_cut, nro_cut, id_anio, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (3, 27, 2021, '1', null, to_date('26-04-2021 16:50:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
commit;
--prompt 1 records loaded
--prompt Loading TRAMITE.TRA_M_PLANTILLA...
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (882, 62, 'Informe Técnico Post Campo', '9104540442080427802230220210855236171528911523A', 'Post Campo.docx', '.docx', '1', 'WCANCHO', to_date('23-02-2021 08:55:29', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254', null, null, null);
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (0, 8, 'Plantilla Default 1', 'EXTERNO', 'Documento Defualt', '.docx', '0', null, to_date('23-06-2020 08:29:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (0, 1, 'Plantilla Default 2', 'INTERNO', 'Documento Defualt', '.docx', '0', null, to_date('23-06-2020 08:29:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null);
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (803, 1, 'Memorando', '910454044208042780222022021123242822765736557A', 'Memorando.docx', '.docx', '1', 'WCANCHO', to_date('19-01-2021 11:29:00', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254', 'WCANCHO', to_date('22-02-2021 12:32:46', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254');
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (561, 641, 'Acta de Conformidad', '910454044080220211540268191422208361A', 'Acta de Conformidad.docx', '.docx', '1', 'WCANCHO', to_date('25-08-2020 13:15:39', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254', 'WCANCHO', to_date('08-02-2021 15:40:33', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254');
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (562, 13, 'Informe', '910454044080120211658181931636401682A', 'Informe.docx', '.docx', '1', 'WCANCHO', to_date('26-08-2020 15:24:22', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254', 'WCANCHO', to_date('08-01-2021 16:58:22', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254');
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (641, 95, 'Memorando Múltiple', '91045404406012021081747785783739299A', 'Memorando Múltiple.docx', '.docx', '1', 'WCANCHO', to_date('07-09-2020 10:07:14', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254', 'WCANCHO', to_date('06-01-2021 08:17:53', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254');
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (681, 9, 'Carta', '910454044208042780224022021182745668175854223A', 'Carta.docx', '.docx', '1', 'WCANCHO', to_date('25-09-2020 13:49:55', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254', 'WCANCHO', to_date('24-02-2021 18:27:49', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254');
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (682, 8, 'Oficio', '910454044208042780222022021160028130431871173A', 'Oficio.docx', '.docx', '1', 'WCANCHO', to_date('25-09-2020 14:03:46', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254', 'WCANCHO', to_date('22-02-2021 16:00:35', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254');
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (962, 116, 'Resolución Jefatural', '910454044208042780222032021154122225918055664A', 'Resolución Jefatural.docx', '.docx', '1', 'WCANCHO', to_date('22-03-2021 15:41:28', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254', null, null, null);
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (521, 5, 'Convenio', '91045404421082020152935581499846539A', 'ACTA - copia.docx', '.docx', '1', 'WCANCHO', to_date('21-08-2020 14:43:52', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254', 'WCANCHO', to_date('21-08-2020 15:29:40', 'dd-mm-yyyy hh24:mi:ss'), '10.212.134.1');
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (722, 121, 'Resolución de Gerencia General', '91045404409022021111740116361598222A', 'Resolución de Gerencia.docx', '.docx', '1', 'WCANCHO', to_date('13-11-2020 08:11:09', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254', 'WCANCHO', to_date('09-02-2021 11:17:46', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254');
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (922, 64, 'Acta', '9104540442080427802260220211107048821646649724A', 'Acta.docx', '.docx', '1', 'WCANCHO', to_date('26-02-2021 11:01:27', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254', 'WCANCHO', to_date('26-02-2021 11:07:08', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254');
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (842, 61, 'Informe Técnico Pre Campo', '9104540440102202116091349296586442A', 'Pre Campo.docx', '.docx', '1', 'WCANCHO', to_date('01-02-2021 16:09:26', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254', null, null, null);
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (1002, 256, 'Ficha de Procedimiento de Preparación de Secciones ', '9104540442080427802120420211041015251292433999A', 'Ficha Procedimiento Preparacion Secciones.docx', '.docx', '1', 'WCANCHO', to_date('12-04-2021 10:41:08', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254', null, null, null);
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (721, 139, 'Resolucion de Presidencia', '9104540442080427802240220211716486071383820515A', 'Resolución de Presidencia.docx', '.docx', '1', 'WCANCHO', to_date('12-11-2020 12:58:23', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254', 'WCANCHO', to_date('24-02-2021 17:16:52', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254');
insert into TRAMITE.TRA_M_PLANTILLA (id_plantilla, id_tipo_documento, desc_plantilla, codigo_documento, nombre_documento, extension_documento, flg_estado, usu_creacion, fec_creacion, ip_creacion, usu_modificacion, fec_modificacion, ip_modificacion)
values (723, 63, 'Resolución Directoral', '91045404409022021111817558439954099A', 'Resolución Directoral.docx', '.docx', '1', 'WCANCHO', to_date('13-11-2020 08:15:00', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254', 'WCANCHO', to_date('09-02-2021 11:18:21', 'dd-mm-yyyy hh24:mi:ss'), '10.102.11.254');
commit;
--prompt 17 records loaded
--prompt Enabling triggers for TRAMITE.SEG_D_USUARIO_CARGO...
alter table TRAMITE.SEG_D_USUARIO_CARGO enable all triggers;
--prompt Enabling triggers for TRAMITE.SEG_M_CARGO...
alter table TRAMITE.SEG_M_CARGO enable all triggers;
--prompt Enabling triggers for TRAMITE.SEG_M_ENTIDAD...
alter table TRAMITE.SEG_M_ENTIDAD enable all triggers;
--prompt Enabling triggers for TRAMITE.SEG_M_OFICINA...
alter table TRAMITE.SEG_M_OFICINA enable all triggers;
--prompt Enabling triggers for TRAMITE.SEG_M_PERFIL...
alter table TRAMITE.SEG_M_PERFIL enable all triggers;
--prompt Enabling triggers for TRAMITE.SEG_M_SISTEMA...
alter table TRAMITE.SEG_M_SISTEMA enable all triggers;
--prompt Enabling triggers for TRAMITE.SEG_M_USUARIO...
alter table TRAMITE.SEG_M_USUARIO enable all triggers;
--prompt Enabling triggers for TRAMITE.SEG_R_USUARIO_PERFIL...
alter table TRAMITE.SEG_R_USUARIO_PERFIL enable all triggers;
--prompt Enabling triggers for TRAMITE.TRA_D_PLANTILLA_CAMPO...
alter table TRAMITE.TRA_D_PLANTILLA_CAMPO enable all triggers;
--prompt Enabling triggers for TRAMITE.TRA_L_CABECERA...
alter table TRAMITE.TRA_L_CABECERA enable all triggers;
--prompt Enabling triggers for TRAMITE.TRA_L_CAMPO...
alter table TRAMITE.TRA_L_CAMPO enable all triggers;
--prompt Enabling triggers for TRAMITE.TRA_L_ENTIDADES...
alter table TRAMITE.TRA_L_ENTIDADES enable all triggers;
--prompt Enabling triggers for TRAMITE.TRA_L_ESTADO_DOCUMENTO...
alter table TRAMITE.TRA_L_ESTADO_DOCUMENTO enable all triggers;
--prompt Enabling triggers for TRAMITE.TRA_L_TAREA...
alter table TRAMITE.TRA_L_TAREA enable all triggers;
--prompt Enabling triggers for TRAMITE.TRA_L_TIPO_DOCUMENTO...
alter table TRAMITE.TRA_L_TIPO_DOCUMENTO enable all triggers;
--prompt Enabling triggers for TRAMITE.TRA_M_CORRELATIVO...
alter table TRAMITE.TRA_M_CORRELATIVO enable all triggers;
--prompt Enabling triggers for TRAMITE.TRA_M_CUT...
alter table TRAMITE.TRA_M_CUT enable all triggers;
--prompt Enabling triggers for TRAMITE.TRA_M_PLANTILLA...
alter table TRAMITE.TRA_M_PLANTILLA enable all triggers;
