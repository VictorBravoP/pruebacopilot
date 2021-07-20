----------------------------------------------
-- Export file for user TRAMITE             --
-- Created by ivans on 01/05/2021, 5:13:19  --
----------------------------------------------

--spool 4.paquetes.log

--prompt
--prompt Creating package PCK_ADMIN_CONSULTA
--prompt ===================================
--prompt
create or replace package tramite.PCK_ADMIN_CONSULTA AS

/*=====================================================================================
   Objetivo            : Mostrar Informacion del perfil
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/
TYPE CURSOR_TYPE IS REF CURSOR;

PROCEDURE USP_PERFIL_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_PERFIL IN TRAMITE.SEG_M_PERFIL.DESC_PERFIL %TYPE,
  PI_FLG_ESTADO IN TRAMITE.SEG_M_PERFIL.FLG_ESTADO %TYPE,
    PI_ID_SISTEMA IN TRAMITE.SEG_M_PERFIL.ID_SISTEMA %TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del entidad
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_ENTIDAD_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_ENTIDAD IN TRAMITE.SEG_M_ENTIDAD.DESC_ENTIDAD %TYPE,
  PI_FLG_ESTADO IN TRAMITE.SEG_M_ENTIDAD.FLG_ESTADO %TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del CARGO
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_CARGO_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_CARGO IN TRAMITE.SEG_M_CARGO.DESC_CARGO %TYPE,
  PI_FLG_ESTADO IN TRAMITE.SEG_M_CARGO.FLG_ESTADO %TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del oficina
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_OFICINA_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_OFICINA IN TRAMITE.SEG_M_OFICINA.DESC_OFICINA %TYPE,
  PI_FLG_ESTADO IN TRAMITE.SEG_M_OFICINA.FLG_ESTADO %TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del usuario
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_USUARIO_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_NOMBRE_USUARIO IN TRAMITE.SEG_M_USUARIO.NOMBRE_USUARIO %TYPE,
  PI_FLG_ESTADO IN TRAMITE.SEG_M_USUARIO.FLG_ESTADO %TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del CARGO  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_CARGO_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_CARGO IN TRAMITE.SEG_M_CARGO.ID_CARGO %TYPE
); 
/*=====================================================================================
   Objetivo            : Mostrar Informacion del ENTIDAD  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_ENTIDAD_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_ENTIDAD IN TRAMITE.SEG_M_ENTIDAD.ID_ENTIDAD %TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del SISTEMA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_SISTEMA_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_SISTEMA IN TRAMITE.SEG_M_SISTEMA.DESC_SISTEMA %TYPE,
  PI_FLG_ESTADO IN TRAMITE.SEG_M_SISTEMA.FLG_ESTADO %TYPE
); 
/*=====================================================================================
   Objetivo            : Mostrar Informacion del PERFIL UNO
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_PERFIL_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_PERFIL IN TRAMITE.SEG_M_PERFIL.ID_PERFIL %TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del OFICINA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_OFICINA_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_OFICINA IN TRAMITE.SEG_M_OFICINA.ID_OFICINA %TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion de usuarios paginado
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_USUARIO_PAGINACION
  (
    PO_RESULTADO            OUT SYS_REFCURSOR,
    PI_PAGINA               IN INTEGER,
    PI_NROREGISTROS         IN INTEGER,
    PI_ORDEN_COLUMNA        IN VARCHAR2,
    PI_ORDEN                IN VARCHAR2,
    PI_WHERE                VARCHAR2 DEFAULT NULL,
    PI_TABLA                IN VARCHAR2,
    PO_CUENTA               OUT INT
  ); 
  
  /*=====================================================================================
   Objetivo            : Mostrar Informacion del USUARIO  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_USUARIO_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_USUARIO IN TRAMITE.SEG_M_USUARIO.ID_USUARIO %TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del USUARIO su cargo  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_USUARIOCARGO_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_USUARIO IN TRAMITE.SEG_M_USUARIO.ID_USUARIO %TYPE
); 
/*=====================================================================================
   Objetivo            : Mostrar Informacion del SISTEMA uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_SISTEMA_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_SISTEMA IN TRAMITE.SEG_M_SISTEMA.ID_SISTEMA %TYPE
);
/*=====================================================================================
   Objetivo            : Mostrar Informacion del MODULOS DEL SISTEMA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_SISTEMAS_MODULO_LISTAR
(
   PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_SISTEMA TRAMITE.SEG_D_SISTEMAS_MODULO.ID_SISTEMA %TYPE,
  PI_FLG_ESTADO TRAMITE.SEG_D_SISTEMAS_MODULO.FLG_ESTADO %TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del MODULOS POR PERFIL
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/


PROCEDURE USP_SISTEMAS_PERF_MODU_LISTAR
(
   PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_SISTEMA TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.ID_SISTEMA %TYPE,
  PI_ID_SISTEMA_PERFIL TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.ID_PERFIL %TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del oficina del personal para sus sistema
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_SISTEMAS_OFIUSU_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_USUARIO IN TRAMITE.SEG_D_USUARIO_CARGO.ID_USUARIO %TYPE

); 
/*=====================================================================================
   Objetivo            : Mostrar Informacion del cargo del personal para sus sistema
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_SISTEMAS_CARGOUSU_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_USUARIO IN TRAMITE.SEG_D_USUARIO_CARGO.ID_USUARIO %TYPE,
  PI_ID_OFICINA IN TRAMITE.SEG_D_USUARIO_CARGO.ID_OFICINA %TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del usuarios del sistema y perfiles
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_SISTEMAS_USUARIO_LISTAR
(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_SISTEMA TRAMITE.SEG_R_USUARIO_PERFIL.ID_SISTEMA %TYPE,
  PI_FLG_ESTADO TRAMITE.SEG_R_USUARIO_PERFIL.FLG_ESTADO %TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del ENTIDAD
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_TAREA_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_TAREA IN TRAMITE.TRA_L_TAREA.DESC_TAREA %TYPE,
  PI_FLG_ESTADO IN TRAMITE.TRA_L_TAREA.FLG_ESTADO %TYPE
); 
/*=====================================================================================
   Objetivo            : Mostrar Informacion del SEDE
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_SEDE_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_SEDE IN TRAMITE.SEG_M_SEDE.DESC_SEDE %TYPE,
  PI_FLG_ESTADO IN TRAMITE.SEG_M_SEDE.FLG_ESTADO %TYPE
);

/*=====================================================================================
   Objetivo            : Mostrar Informacion del SEDE  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_SEDE_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_SEDE IN TRAMITE.SEG_M_SEDE.ID_SEDE %TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del ENTIDAD EXTERNA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_ENTIDADEXTERNA_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_ENTIDAD IN TRAMITE.TRA_L_ENTIDADES.DESC_ENTIDAD %TYPE,
  PI_FLG_ESTADO IN TRAMITE.TRA_L_ENTIDADES.FLG_ESTADO %TYPE
); 
/*=====================================================================================
   Objetivo            : Mostrar Informacion del NTIDAD EXTERNA  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_ENTIDADEXTERNA_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_ENTIDAD IN TRAMITE.TRA_L_ENTIDADES.ID_ENTIDAD %TYPE
); 



/*=====================================================================================
   Objetivo            : Mostrar Informacion del CAMPO
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_CAMPO_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del PLANTILLA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_PLANTILLA_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_TIPO_DOCUMENTO IN TRAMITE.TRA_M_PLANTILLA.ID_TIPO_DOCUMENTO %TYPE,
  PI_FLG_ESTADO IN TRAMITE.TRA_M_PLANTILLA.FLG_ESTADO %TYPE
);

/*=====================================================================================
   Objetivo            : Mostrar Informacion del PLANTILLA  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_PLANTILLA_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_PLANTILLA IN TRAMITE.TRA_M_PLANTILLA.ID_PLANTILLA %TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del PLANTILLA  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_PLANTILLA_CAMPO_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_PLANTILLA IN TRAMITE.TRA_M_PLANTILLA.ID_PLANTILLA %TYPE
); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del oficina permisos
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_OFICINAPERMISO_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_OFICINA IN TRAMITE.SEG_M_OFICINA.DESC_OFICINA %TYPE,
  PI_FLG_ESTADO IN TRAMITE.SEG_M_OFICINA.FLG_ESTADO %TYPE
); 


/*=====================================================================================
   Objetivo            : Mostrar Informacion del de los destinos por ofician
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_OFICINADESTINOS_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_OFICINA_ORIGEN IN TRAMITE.SEG_M_OFICINA_PERMISO.ID_OFICINA_ORIGEN %TYPE

); 

/*=====================================================================================
   Objetivo            : Mostrar Informacion del de los filtros de la oficina
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_OFICINAFILTROS_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_OFICINA_PERMISO IN TRAMITE.SEG_D_OFICINA_FILTROS.ID_OFICINA_PERMISO %TYPE

); 



end PCK_ADMIN_CONSULTA;
/

--prompt
--prompt Creating package PCK_ADMIN_MANTENIMIENTO
--prompt ========================================
--prompt
create or replace package tramite.PCK_ADMIN_MANTENIMIENTO AS

/*=====================================================================================
   Objetivo            : Insertar datos de cargo
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_CARGO_INSERTAR(
  PI_DESC_CARGO    TRAMITE.SEG_M_CARGO.DESC_CARGO %TYPE,
  PI_IP_CREACION       TRAMITE.SEG_M_CARGO.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_M_CARGO.USU_CREACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
); 
/*=====================================================================================
   Objetivo            : Actualiza datos cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_CARGO_ACTUALIZAR(
  PI_ID_CARGO          TRAMITE.SEG_M_CARGO.ID_CARGO %TYPE,
  PI_DESC_CARGO        TRAMITE.SEG_M_CARGO.DESC_CARGO %TYPE,
  PI_IP_MODIFICACION       TRAMITE.SEG_M_CARGO.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_CARGO.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
); 

/*=====================================================================================
   Objetivo            : Elimina cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_CARGO_ELIMINAR(
  PI_ID_CARGO          TRAMITE.SEG_M_CARGO.ID_CARGO %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 
/*=====================================================================================
   Objetivo            : Cambia estado cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_CARGO_ESTADO(
  PI_ID_CARGO          TRAMITE.SEG_M_CARGO.ID_CARGO %TYPE,
  PI_FLG_ESTADO         TRAMITE.SEG_M_CARGO.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.SEG_M_CARGO.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_CARGO.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 

/*=====================================================================================
   Objetivo            : Insertar datos de ENTIDAD
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_ENTIDAD_INSERTAR(
  PI_DESC_ENTIDAD   TRAMITE.SEG_M_ENTIDAD.DESC_ENTIDAD %TYPE,
  PI_IP_CREACION       TRAMITE.SEG_M_ENTIDAD.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_M_ENTIDAD.USU_CREACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
); 

/*=====================================================================================
   Objetivo            : Actualiza datos entidad
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_ENTIDAD_ACTUALIZAR(
  PI_ID_ENTIDAD           TRAMITE.SEG_M_ENTIDAD.ID_ENTIDAD %TYPE,
  PI_DESC_ENTIDAD         TRAMITE.SEG_M_ENTIDAD.DESC_ENTIDAD %TYPE,
  PI_IP_MODIFICACION       TRAMITE.SEG_M_ENTIDAD.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_ENTIDAD.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
); 
/*=====================================================================================
   Objetivo            : Elimina entidad
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_ENTIDAD_ELIMINAR(
  PI_ID_ENTIDAD          TRAMITE.SEG_M_ENTIDAD.ID_ENTIDAD %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
);


/*=====================================================================================
   Objetivo            : Cambia estado entidad                                         
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_ENTIDAD_ESTADO(
  PI_ID_ENTIDAD          TRAMITE.SEG_M_ENTIDAD.ID_ENTIDAD %TYPE,
  PI_FLG_ESTADO         TRAMITE.SEG_M_ENTIDAD.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.SEG_M_ENTIDAD.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_ENTIDAD.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 


/*=====================================================================================
   Objetivo            : Insertar datos de PERFIL
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_PERFIL_INSERTAR(
  PI_ID_SISTEMA        TRAMITE.SEG_M_PERFIL.ID_SISTEMA %TYPE,
  PI_DESC_PERFIL       TRAMITE.SEG_M_PERFIL.DESC_PERFIL %TYPE,
  PI_IP_CREACION       TRAMITE.SEG_M_PERFIL.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_M_PERFIL.USU_CREACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
); 

/*=====================================================================================
   Objetivo            : Actualiza datos PERFIL
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_PERFIL_ACTUALIZAR(
   PI_ID_PERFIL            TRAMITE.SEG_M_PERFIL.ID_PERFIL %TYPE,
  PI_ID_SISTEMA        TRAMITE.SEG_M_PERFIL.ID_SISTEMA %TYPE,
  PI_DESC_PERFIL         TRAMITE.SEG_M_PERFIL.DESC_PERFIL %TYPE,
  PI_IP_MODIFICACION       TRAMITE.SEG_M_PERFIL.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_PERFIL.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
); 

/*=====================================================================================
   Objetivo            : Elimina PERFIL
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_PERFIL_ELIMINAR(
  PI_ID_PERFIL          TRAMITE.SEG_M_PERFIL.ID_PERFIL %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 

/*=====================================================================================
   Objetivo            : Cambia estado PERFIL                                         
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_PERFIL_ESTADO(
  PI_ID_PERFIL          TRAMITE.SEG_M_PERFIL.ID_PERFIL %TYPE,
  PI_FLG_ESTADO         TRAMITE.SEG_M_PERFIL.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.SEG_M_PERFIL.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_PERFIL.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 

/*=====================================================================================
   Objetivo            : Insertar datos de OFICINA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_OFICINA_INSERTAR(
  PI_ID_ENTIDAD       TRAMITE.SEG_M_OFICINA.ID_ENTIDAD %TYPE,
  PI_ID_OFICINA_PADRE      TRAMITE.SEG_M_OFICINA.ID_OFICINA_PADRE %TYPE,
  PI_DESC_CORTA_OFICINA       TRAMITE.SEG_M_OFICINA.DESC_CORTA_OFICINA %TYPE,
  PI_DESC_OFICINA       TRAMITE.SEG_M_OFICINA.DESC_OFICINA %TYPE,
  PI_SIGLA_OFICINA       TRAMITE.SEG_M_OFICINA.SIGLA_OFICINA %TYPE,
  PI_IP_CREACION       TRAMITE.SEG_M_OFICINA.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_M_OFICINA.USU_CREACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
); 

/*=====================================================================================
   Objetivo            : Actualiza datos OFICINA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_OFICINA_ACTUALIZAR(
  PI_ID_OFICINA            TRAMITE.SEG_M_OFICINA.ID_OFICINA %TYPE,
  PI_ID_ENTIDAD       TRAMITE.SEG_M_OFICINA.ID_ENTIDAD %TYPE,
  PI_ID_OFICINA_PADRE      TRAMITE.SEG_M_OFICINA.ID_OFICINA_PADRE %TYPE,
  PI_DESC_CORTA_OFICINA       TRAMITE.SEG_M_OFICINA.DESC_CORTA_OFICINA %TYPE,
  PI_DESC_OFICINA       TRAMITE.SEG_M_OFICINA.DESC_OFICINA %TYPE,
  PI_SIGLA_OFICINA       TRAMITE.SEG_M_OFICINA.SIGLA_OFICINA %TYPE,
  PI_IP_MODIFICACION       TRAMITE.SEG_M_OFICINA.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_OFICINA.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
); 

/*=====================================================================================
   Objetivo            : Elimina OFICINA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_OFICINA_ELIMINAR(
  PI_ID_OFICINA          TRAMITE.SEG_M_OFICINA.ID_OFICINA %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 

/*=====================================================================================
   Objetivo            : Cambia estado OFICINA                                         
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_OFICINA_ESTADO(
  PI_ID_OFICINA          TRAMITE.SEG_M_OFICINA.ID_OFICINA %TYPE,
  PI_FLG_ESTADO         TRAMITE.SEG_M_OFICINA.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.SEG_M_OFICINA.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_OFICINA.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 
/*=====================================================================================
   Objetivo            : Insertar datos de USUARIO
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_USUARIO_INSERTAR(
  PI_COD_USUARIO       TRAMITE.SEG_M_USUARIO.COD_USUARIO %TYPE,
  PI_CLAVE_USUARIO     TRAMITE.SEG_M_USUARIO.CLAVE_USUARIO %TYPE,
  PI_NOMBRE_USUARIO    TRAMITE.SEG_M_USUARIO.NOMBRE_USUARIO %TYPE,
  PI_APE_PATERNO   TRAMITE.SEG_M_USUARIO.APE_PATERNO %TYPE,
  PI_APE_MATERNO  TRAMITE.SEG_M_USUARIO.APE_MATERNO %TYPE,
  PI_DNI          TRAMITE.SEG_M_USUARIO.DNI %TYPE,
  PI_TELEFONO  TRAMITE.SEG_M_USUARIO.TELEFONO %TYPE,
  PI_CELULAR   TRAMITE.SEG_M_USUARIO.CELULAR %TYPE,
  PI_CORREO    TRAMITE.SEG_M_USUARIO.CORREO %TYPE,
  PI_IP_CREACION       TRAMITE.SEG_M_USUARIO.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_M_USUARIO.USU_CREACION %TYPE,
  PO_ID_USUARIO         OUT INTEGER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
); 

/*=====================================================================================
   Objetivo            : Actualiza datos USUARIO
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_USUARIO_ACTUALIZAR(
  PI_ID_USUARIO        TRAMITE.SEG_M_USUARIO.ID_USUARIO %TYPE,
  PI_COD_USUARIO       TRAMITE.SEG_M_USUARIO.COD_USUARIO %TYPE,
  PI_CLAVE_USUARIO     TRAMITE.SEG_M_USUARIO.CLAVE_USUARIO %TYPE,
  PI_NOMBRE_USUARIO    TRAMITE.SEG_M_USUARIO.NOMBRE_USUARIO %TYPE,
  PI_APE_PATERNO   TRAMITE.SEG_M_USUARIO.APE_PATERNO %TYPE,
  PI_APE_MATERNO  TRAMITE.SEG_M_USUARIO.APE_MATERNO %TYPE,
  PI_DNI          TRAMITE.SEG_M_USUARIO.DNI %TYPE,
  PI_TELEFONO  TRAMITE.SEG_M_USUARIO.TELEFONO %TYPE,
  PI_CELULAR   TRAMITE.SEG_M_USUARIO.CELULAR %TYPE,
  PI_CORREO    TRAMITE.SEG_M_USUARIO.CORREO %TYPE,
  PI_IP_MODIFICACION       TRAMITE.SEG_M_USUARIO.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_USUARIO.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
); 
/*=====================================================================================
   Objetivo            : Elimina USUARIO
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_USUARIO_ELIMINAR(
  PI_ID_USUARIO          TRAMITE.SEG_M_USUARIO.ID_USUARIO %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 

/*=====================================================================================
   Objetivo            : Cambia estado USUARIO                                         
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_USUARIO_ESTADO(
  PI_ID_USUARIO          TRAMITE.SEG_M_USUARIO.ID_USUARIO %TYPE,
  PI_FLG_ESTADO         TRAMITE.SEG_M_USUARIO.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.SEG_M_USUARIO.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_USUARIO.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 


/*=====================================================================================
   Objetivo            : Insertar datos de USUARIO CARGO
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_USUARIOCARGO_INSERTAR(
  PI_ID_USUARIO      TRAMITE.SEG_D_USUARIO_CARGO.ID_USUARIO %TYPE,
  PI_ID_OFICINA    TRAMITE.SEG_D_USUARIO_CARGO.ID_OFICINA %TYPE,
  PI_ID_CARGO    TRAMITE.SEG_D_USUARIO_CARGO.ID_CARGO %TYPE,
  PI_FLG_JEFE    TRAMITE.SEG_D_USUARIO_CARGO.FLG_JEFE %TYPE,
  PI_IP_CREACION       TRAMITE.SEG_D_USUARIO_CARGO.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_D_USUARIO_CARGO.USU_CREACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 
/*=====================================================================================
   Objetivo            : Elimina USUARIO CARGO
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_USUARIOCARGO_ELIMINAR(
  PI_ID_USUARIO_CARGO          TRAMITE.SEG_D_USUARIO_CARGO.ID_USUARIO_CARGO %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 

/*=====================================================================================
   Objetivo            : Actualiza sistemas 
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_SISTEMAS_ACTUALIZAR(
  PI_ID_SISTEMA       TRAMITE.SEG_M_SISTEMA.ID_SISTEMA %TYPE,
  PI_CODIGO_SISTEMA      TRAMITE.SEG_M_SISTEMA.CODIGO_SISTEMA %TYPE,
  PI_DESC_SISTEMA    TRAMITE.SEG_M_SISTEMA.DESC_SISTEMA %TYPE,
  PI_CODIGO_IMAGEN   TRAMITE.SEG_M_SISTEMA.CODIGO_IMAGEN %TYPE,
  PI_IP_MODIFICACION       TRAMITE.SEG_M_SISTEMA.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_SISTEMA.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
); 

/*=====================================================================================
   Objetivo            : Registra modulos por perfil de  sistema
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/


PROCEDURE USP_SISTEMAS_PER_MOD_REGISTRAR
(
  PI_ID_SISTEMA          TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.ID_SISTEMA %TYPE,
  PI_ID_PERFIL           TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.ID_PERFIL %TYPE,
  PI_ID_MODULO           TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.ID_MODULO %TYPE,
  PI_USU_CREACION        TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.USU_CREACION %TYPE,
  PI_IP_CREACION         TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.IP_CREACION %TYPE,
  PO_VALIDO              OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE             OUT VARCHAR2 -- MENSAJE DEL ERROR
); 

/*=====================================================================================
   Objetivo            : Eli,ima modulos por perfil de  sistema
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_SISTEMAS_PER_MOD_ELIMINAR
(
  PI_ID_SISTEMA          TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.ID_SISTEMA %TYPE,
  PI_ID_PERFIL           TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.ID_PERFIL %TYPE,
  PI_ID_MODULO           TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.ID_MODULO %TYPE,
  PO_VALIDO              OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE             OUT VARCHAR2 -- MENSAJE DEL ERROR
); 

/*=====================================================================================
   Objetivo            : Inserta  perfiles del usuario para el sistema
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/


PROCEDURE USP_SISTEMAS_PER_USU_REGISTRAR
(
  PI_ID_SISTEMA          TRAMITE.SEG_R_USUARIO_PERFIL.ID_SISTEMA %TYPE,
  PI_ID_PERFIL           TRAMITE.SEG_R_USUARIO_PERFIL.ID_PERFIL %TYPE,
  PI_ID_USUARIO          TRAMITE.SEG_R_USUARIO_PERFIL.ID_USUARIO %TYPE,
  PI_ID_OFICINA          TRAMITE.SEG_R_USUARIO_PERFIL.ID_OFICINA %TYPE,
  PI_ID_CARGO            TRAMITE.SEG_R_USUARIO_PERFIL.ID_CARGO %TYPE,
  PI_FEC_ACTIVACION      VARCHAR2,
  PI_FEC_DESACTIVACION   VARCHAR2,
  PI_USU_CREACION        TRAMITE.SEG_R_USUARIO_PERFIL.USU_CREACION %TYPE,
  PI_IP_CREACION         TRAMITE.SEG_R_USUARIO_PERFIL.IP_CREACION %TYPE,
  PO_VALIDO              OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE             OUT VARCHAR2 -- MENSAJE DEL ERROR
); 

/*=====================================================================================
   Objetivo            : Actualiza  perfiles del usuario para el sistema
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_SISTEMAS_PER_USU_ACTUALIZA
(
  PI_ID_SISTEMAS_PERFIL_USUARIO          TRAMITE.SEG_R_USUARIO_PERFIL.ID_USUARIO_PERFIL %TYPE,
  PI_ID_SISTEMA          TRAMITE.SEG_R_USUARIO_PERFIL.ID_SISTEMA %TYPE,
  PI_ID_PERFIL           TRAMITE.SEG_R_USUARIO_PERFIL.ID_PERFIL %TYPE,
  PI_ID_OFICINA          TRAMITE.SEG_R_USUARIO_PERFIL.ID_OFICINA %TYPE,
  PI_ID_CARGO            TRAMITE.SEG_R_USUARIO_PERFIL.ID_CARGO %TYPE,
  PI_FEC_ACTIVACION      VARCHAR2,
  PI_FEC_DESACTIVACION   VARCHAR2,
  PI_USU_MODIFICACION       TRAMITE.SEG_R_USUARIO_PERFIL.USU_MODIFICACION %TYPE,
  PI_IP_MODIFICACION         TRAMITE.SEG_R_USUARIO_PERFIL.IP_MODIFICACION %TYPE,
  PO_VALIDO              OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE             OUT VARCHAR2 -- MENSAJE DEL ERROR
); 


/*=====================================================================================
   Objetivo            : Cambia estado del usuario para el sistema                                         
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_SISTEMAS_PER_USU_ESTADO(
  PI_ID_SISTEMAS_PERFIL_USUARIO          TRAMITE.SEG_R_USUARIO_PERFIL.ID_USUARIO_PERFIL %TYPE,
  PI_FLG_ESTADO         TRAMITE.SEG_R_USUARIO_PERFIL.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.SEG_R_USUARIO_PERFIL.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_R_USUARIO_PERFIL.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 

/*=====================================================================================
   Objetivo            : Elimina  usuario para el sistema     
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_SISTEMAS_PER_USU_ELIMINAR(
 PI_ID_SISTEMAS_PERFIL_USUARIO          TRAMITE.SEG_R_USUARIO_PERFIL.ID_USUARIO_PERFIL %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 


/*=====================================================================================
   Objetivo            : Insertar datos de cargo
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_SEDE_INSERTAR(
  PI_DESC_SEDE      TRAMITE.SEG_M_SEDE.DESC_SEDE %TYPE,
  PI_DIRECCION      TRAMITE.SEG_M_SEDE.DIRECCION %TYPE,
  PI_TELEFONO      TRAMITE.SEG_M_SEDE.TELEFONO %TYPE,
  PI_CORREO               TRAMITE.SEG_M_SEDE.CORREO %TYPE,
  PI_PAGINAWEB_ENTIDAD    TRAMITE.SEG_M_SEDE.PAGINAWEB_ENTIDAD %TYPE,
  PI_PAGINAWEB_SECTOR     TRAMITE.SEG_M_SEDE.PAGINAWEB_SECTOR %TYPE,
  PI_IP_CREACION       TRAMITE.SEG_M_SEDE.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_M_SEDE.USU_CREACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
); 
/*=====================================================================================
   Objetivo            : Actualiza datos cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_SEDE_ACTUALIZAR(
  PI_ID_SEDE          TRAMITE.SEG_M_SEDE.ID_SEDE %TYPE,
  PI_DESC_SEDE        TRAMITE.SEG_M_SEDE.DESC_SEDE %TYPE,
  PI_DIRECCION      TRAMITE.SEG_M_SEDE.DIRECCION %TYPE,
  PI_TELEFONO      TRAMITE.SEG_M_SEDE.TELEFONO %TYPE,
  PI_CORREO               TRAMITE.SEG_M_SEDE.CORREO %TYPE,
  PI_PAGINAWEB_ENTIDAD    TRAMITE.SEG_M_SEDE.PAGINAWEB_ENTIDAD %TYPE,
  PI_PAGINAWEB_SECTOR     TRAMITE.SEG_M_SEDE.PAGINAWEB_SECTOR %TYPE,
  PI_IP_MODIFICACION       TRAMITE.SEG_M_SEDE.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_SEDE.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
); 
/*=====================================================================================
   Objetivo            : Elimina cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_SEDE_ELIMINAR(
  PI_ID_SEDE          TRAMITE.SEG_M_SEDE.ID_SEDE %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 
/*=====================================================================================
   Objetivo            : Cambia estado cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_SEDE_ESTADO(
  PI_ID_SEDE          TRAMITE.SEG_M_SEDE.ID_SEDE %TYPE,
  PI_FLG_ESTADO         TRAMITE.SEG_M_SEDE.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.SEG_M_SEDE.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_SEDE.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 


/*=====================================================================================
   Objetivo            : Insertar datos de ENTIDADEXTERNA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_ENTIDADEXTERNA_INSERTAR(
  PI_DESC_ENTIDAD      TRAMITE.TRA_L_ENTIDADES.DESC_ENTIDAD %TYPE,
  PI_RUC_ENTIDAD      TRAMITE.TRA_L_ENTIDADES.RUC_ENTIDAD %TYPE,
  PI_ABREVIACION_ENTIDAD      TRAMITE.TRA_L_ENTIDADES.ABREVIACION_ENTIDAD %TYPE,
  PI_DIRECCION_ENTIDAD               TRAMITE.TRA_L_ENTIDADES.DIRECCION_ENTIDAD %TYPE,
  PI_IP_CREACION       TRAMITE.TRA_L_ENTIDADES.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.TRA_L_ENTIDADES.USU_CREACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
); 

/*=====================================================================================
   Objetivo            : Actualiza datos ENTIDADEXTERNA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_ENTIDADEXTERNA_ACTUALIZAR(
  PI_ID_ENTIDAD          TRAMITE.TRA_L_ENTIDADES.ID_ENTIDAD %TYPE,
  PI_DESC_ENTIDAD      TRAMITE.TRA_L_ENTIDADES.DESC_ENTIDAD %TYPE,
  PI_RUC_ENTIDAD      TRAMITE.TRA_L_ENTIDADES.RUC_ENTIDAD %TYPE,
  PI_ABREVIACION_ENTIDAD      TRAMITE.TRA_L_ENTIDADES.ABREVIACION_ENTIDAD %TYPE,
  PI_DIRECCION_ENTIDAD               TRAMITE.TRA_L_ENTIDADES.DIRECCION_ENTIDAD %TYPE,
  PI_IP_MODIFICACION       TRAMITE.TRA_L_ENTIDADES.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.TRA_L_ENTIDADES.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
); 

/*=====================================================================================
   Objetivo            : Elimina ENTIDADEXTERNA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_ENTIDADEXTERNA_ELIMINAR(
  PI_ID_ENTIDAD          TRAMITE.TRA_L_ENTIDADES.ID_ENTIDAD %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 

/*=====================================================================================
   Objetivo            : Cambia estado ENTIDADEXTERNA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_ENTIDADEXTERNA_ESTADO(
  PI_ID_ENTIDAD          TRAMITE.TRA_L_ENTIDADES.ID_ENTIDAD %TYPE,
  PI_FLG_ESTADO         TRAMITE.TRA_L_ENTIDADES.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.TRA_L_ENTIDADES.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.TRA_L_ENTIDADES.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 


/*=====================================================================================
   Objetivo            : Insertar datos de PLANTILLA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_PLANTILLA_INSERTAR(
 -- PI_DESC_PLANTILLA    TRAMITE.TRA_M_PLANTILLA.DESC_PLANTILLA %TYPE,
  PI_ID_TIPO_DOCUMENTO   TRAMITE.TRA_M_PLANTILLA.ID_TIPO_DOCUMENTO %TYPE,
  PI_CODIGO_DOCUMENTO    TRAMITE.TRA_M_PLANTILLA.CODIGO_DOCUMENTO %TYPE,
  PI_NOMBRE_DOCUMENTO    TRAMITE.TRA_M_PLANTILLA.NOMBRE_DOCUMENTO %TYPE,
  PI_EXTENSION_DOCUMENTO   TRAMITE.TRA_M_PLANTILLA.EXTENSION_DOCUMENTO %TYPE  ,
  PI_IP_CREACION       TRAMITE.TRA_M_PLANTILLA.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.TRA_M_PLANTILLA.USU_CREACION %TYPE,
  PO_ID_PLANTILLA            OUT NUMBER,  -- 
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
);

/*=====================================================================================
   Objetivo            : Actualiza datos plantilla
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_PLANTILLA_ACTUALIZAR(
  PI_ID_PLANTILLA           TRAMITE.TRA_M_PLANTILLA.ID_PLANTILLA %TYPE,
 -- PI_DESC_PLANTILLA      TRAMITE.TRA_M_PLANTILLA.DESC_PLANTILLA %TYPE,
  PI_ID_TIPO_DOCUMENTO   TRAMITE.TRA_M_PLANTILLA.ID_TIPO_DOCUMENTO %TYPE,
  PI_CODIGO_DOCUMENTO    TRAMITE.TRA_M_PLANTILLA.CODIGO_DOCUMENTO %TYPE,
  PI_NOMBRE_DOCUMENTO    TRAMITE.TRA_M_PLANTILLA.NOMBRE_DOCUMENTO %TYPE,
  PI_EXTENSION_DOCUMENTO   TRAMITE.TRA_M_PLANTILLA.EXTENSION_DOCUMENTO %TYPE ,
  PI_IP_MODIFICACION       TRAMITE.TRA_M_PLANTILLA.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.TRA_M_PLANTILLA.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
);

/*=====================================================================================
   Objetivo            : Elimina plantilla
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_PLANTILLA_ELIMINAR(
  PI_ID_PLANTILLA          TRAMITE.TRA_M_PLANTILLA.ID_PLANTILLA %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 
/*=====================================================================================
   Objetivo            : Cambia estado plantilla
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_PLANTILLA_ESTADO(
  PI_ID_PLANTILLA          TRAMITE.TRA_M_PLANTILLA.ID_PLANTILLA %TYPE,
  PI_FLG_ESTADO         TRAMITE.TRA_M_PLANTILLA.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.TRA_M_PLANTILLA.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.TRA_M_PLANTILLA.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 

/*=====================================================================================
   Objetivo            : Insertar datos de PLANTILLA CAMPO 
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_PLANTILLA_CAMPO_INSERTAR(
  PI_ID_PLANTILLA    TRAMITE.TRA_D_PLANTILLA_CAMPO.ID_PLANTILLA %TYPE,
  PI_ID_CAMPO  TRAMITE.TRA_D_PLANTILLA_CAMPO.ID_CAMPO %TYPE,
  PI_ORDEN    TRAMITE.TRA_D_PLANTILLA_CAMPO.ORDEN %TYPE,
  PI_FLG_ESTADO   TRAMITE.TRA_D_PLANTILLA_CAMPO.FLG_ESTADO %TYPE,
  PI_IP_CREACION   TRAMITE.TRA_D_PLANTILLA_CAMPO.IP_CREACION %TYPE,
  PI_USU_CREACION    TRAMITE.TRA_D_PLANTILLA_CAMPO.USU_CREACION %TYPE
); 

/*=====================================================================================
   Objetivo            : Insertar datos de OFICINAS PERMISO
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_OFICINAPERMISO_INSERTAR(
  PI_ID_OFICINA_ORIGEN        TRAMITE.SEG_M_OFICINA_PERMISO.ID_OFICINA_ORIGEN %TYPE,
  PI_ID_OFICINA_DESTINO       TRAMITE.SEG_M_OFICINA_PERMISO.ID_OFICINA_DESTINO %TYPE,  
  PI_IP_CREACION       TRAMITE.SEG_M_OFICINA_PERMISO.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_M_OFICINA_PERMISO.USU_CREACION %TYPE,
  PO_IDRETORNO           OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 
/*=====================================================================================
   Objetivo            : Insertar datos de OFICINAS filtros
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_OFICINAFILTROS_INSERTAR(
  PI_ID_OFICINA_PERMISO        TRAMITE.SEG_D_OFICINA_FILTROS.ID_OFICINA_PERMISO %TYPE,
  PI_ID_OFICINA      TRAMITE.SEG_D_OFICINA_FILTROS.ID_OFICINA %TYPE,  
  PI_ID_TAREA       TRAMITE.SEG_D_OFICINA_FILTROS.ID_TAREA %TYPE,  
  PI_IP_CREACION       TRAMITE.SEG_D_OFICINA_FILTROS.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_D_OFICINA_FILTROS.USU_CREACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
);

/*=====================================================================================
   Objetivo            : valida datos de OFICINAS PERMISO
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_VALIDAROFIPERMISO_INSERTAR(
  PI_ID_OFICINA_ORIGEN        TRAMITE.SEG_M_OFICINA_PERMISO.ID_OFICINA_ORIGEN %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
); 



/*=====================================================================================
   Objetivo            : Elimina destinos de oficina
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_OFICINADESTINOS_ELIMINAR(
  PI_ID_OFICINA_PERMISO          TRAMITE.SEG_M_OFICINA_PERMISO.ID_OFICINA_PERMISO %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 
/*=====================================================================================
   Objetivo            : Elimina filtros de oficina
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_OFICINAFILTROS_ELIMINAR(
  PI_ID_OFICINA_FILTRO          TRAMITE.SEG_D_OFICINA_FILTROS.ID_OFICINA_FILTRO %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 

/*=====================================================================================
   Objetivo            : Elimina oficina permisos
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_OFICINAPERMISO_ELIMINAR(
  PI_ID_OFICINA_ORIGEN         TRAMITE.SEG_M_OFICINA_PERMISO.ID_OFICINA_ORIGEN %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
); 

/*=====================================================================================
   Objetivo            : Cambia estado oficina permiso
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_OFICINAPERMISO_ESTADO(
  PI_ID_OFICINA_ORIGEN          TRAMITE.SEG_M_OFICINA_PERMISO.ID_OFICINA_ORIGEN %TYPE,
  PI_FLG_ESTADO         TRAMITE.SEG_M_OFICINA_PERMISO.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.SEG_M_OFICINA_PERMISO.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_OFICINA_PERMISO.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
);
end PCK_ADMIN_MANTENIMIENTO;
/

--prompt
--prompt Creating package body PCK_ADMIN_CONSULTA
--prompt ========================================
--prompt
create or replace package body tramite.PCK_ADMIN_CONSULTA AS

/*=====================================================================================
   Objetivo            : Mostrar Informacion del perfil
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_PERFIL_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_PERFIL IN TRAMITE.SEG_M_PERFIL.DESC_PERFIL %TYPE,
  PI_FLG_ESTADO IN TRAMITE.SEG_M_PERFIL.FLG_ESTADO %TYPE,
  PI_ID_SISTEMA IN TRAMITE.SEG_M_PERFIL.ID_SISTEMA %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_PERFIL,
            V.ID_SISTEMA,
            S.DESC_SISTEMA, 
            V.DESC_PERFIL,
            V.FLG_ESTADO,
            V.USU_CREACION,
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.SEG_M_PERFIL V
            INNER JOIN TRAMITE.SEG_M_SISTEMA S ON S.ID_SISTEMA=V.ID_SISTEMA       
        WHERE
             UPPER(V.DESC_PERFIL)  LIKE '%' || UPPER(PI_DESC_PERFIL) || '%'
            AND UPPER(V.FLG_ESTADO)  LIKE '%' || PI_FLG_ESTADO || '%'
            AND V.ID_SISTEMA = NVL(PI_ID_SISTEMA,V.ID_SISTEMA)
            
        ORDER BY V.ID_PERFIL DESC;
END;



/*=====================================================================================
   Objetivo            : Mostrar Informacion del entidad
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_ENTIDAD_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_ENTIDAD IN TRAMITE.SEG_M_ENTIDAD.DESC_ENTIDAD %TYPE,
  PI_FLG_ESTADO IN TRAMITE.SEG_M_ENTIDAD.FLG_ESTADO %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_ENTIDAD,
            V.DESC_ENTIDAD,  
            V.SIGLA_ENTIDAD,
            V.FLG_ESTADO,
            V.USU_CREACION,
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.SEG_M_ENTIDAD V
             
        WHERE
             UPPER(V.DESC_ENTIDAD)  LIKE '%' || PI_DESC_ENTIDAD || '%'
            AND UPPER(V.FLG_ESTADO)  LIKE '%' || PI_FLG_ESTADO || '%'
        ORDER BY V.ID_ENTIDAD DESC;
END;

/*=====================================================================================
   Objetivo            : Mostrar Informacion del CARGO
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_CARGO_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_CARGO IN TRAMITE.SEG_M_CARGO.DESC_CARGO %TYPE,
  PI_FLG_ESTADO IN TRAMITE.SEG_M_CARGO.FLG_ESTADO %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_CARGO,
            V.DESC_CARGO,  
            V.FLG_ESTADO,
            V.USU_CREACION,
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.SEG_M_CARGO V
             
        WHERE
             UPPER(V.DESC_CARGO)  LIKE '%' || UPPER(PI_DESC_CARGO) || '%'
            AND UPPER(V.FLG_ESTADO)  LIKE '%' || PI_FLG_ESTADO || '%'
        ORDER BY V.ID_CARGO DESC;
END;


/*=====================================================================================
   Objetivo            : Mostrar Informacion del oficina
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_OFICINA_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_OFICINA IN TRAMITE.SEG_M_OFICINA.DESC_OFICINA %TYPE,
  PI_FLG_ESTADO IN TRAMITE.SEG_M_OFICINA.FLG_ESTADO %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
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
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.SEG_M_OFICINA V
            INNER JOIN TRAMITE.SEG_M_ENTIDAD E ON E.ID_ENTIDAD =V.ID_ENTIDAD
            LEFT JOIN TRAMITE.SEG_M_OFICINA  OFP ON OFP.ID_OFICINA = V.ID_OFICINA_PADRE
             
        WHERE
             UPPER(V.DESC_OFICINA)  LIKE '%' || PI_DESC_OFICINA || '%'
            AND UPPER(V.FLG_ESTADO)  LIKE '%' || PI_FLG_ESTADO || '%'
        ORDER BY V.ID_OFICINA DESC;
END;

/*=====================================================================================
   Objetivo            : Mostrar Informacion del usuario
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_USUARIO_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_NOMBRE_USUARIO IN TRAMITE.SEG_M_USUARIO.NOMBRE_USUARIO %TYPE,
  PI_FLG_ESTADO IN TRAMITE.SEG_M_USUARIO.FLG_ESTADO %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_USUARIO,
            V.COD_USUARIO,
            v.CLAVE_USUARIO, 
            V.NOMBRE_USUARIO, 
            V.FLG_ESTADO,
            V.USU_CREACION,
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.SEG_M_USUARIO V
       
             
        WHERE
             UPPER(V.NOMBRE_USUARIO)  LIKE '%' || PI_NOMBRE_USUARIO || '%'
            AND UPPER(V.FLG_ESTADO)  LIKE '%' || PI_FLG_ESTADO || '%'
        ORDER BY V.ID_USUARIO DESC;
END;




/*=====================================================================================
   Objetivo            : Mostrar Informacion del CARGO  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_CARGO_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_CARGO IN TRAMITE.SEG_M_CARGO.ID_CARGO %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_CARGO,
            V.DESC_CARGO,  
            V.FLG_ESTADO,
            V.USU_CREACION,
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.SEG_M_CARGO V
             
        WHERE
            V.ID_CARGO=PI_ID_CARGO; 
        
END;



/*=====================================================================================
   Objetivo            : Mostrar Informacion del ENTIDAD  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_ENTIDAD_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_ENTIDAD IN TRAMITE.SEG_M_ENTIDAD.ID_ENTIDAD %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_ENTIDAD,
            V.DESC_ENTIDAD,  
            V.FLG_ESTADO,
            V.USU_CREACION,
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.SEG_M_ENTIDAD V
             
        WHERE
            V.ID_ENTIDAD=PI_ID_ENTIDAD; 
        
END;



/*=====================================================================================
   Objetivo            : Mostrar Informacion del SISTEMA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_SISTEMA_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_SISTEMA IN TRAMITE.SEG_M_SISTEMA.DESC_SISTEMA %TYPE,
  PI_FLG_ESTADO IN TRAMITE.SEG_M_SISTEMA.FLG_ESTADO %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_SISTEMA,
            V.DESC_SISTEMA,  
            V.CODIGO_IMAGEN,
            V.CODIGO_SISTEMA,
            V.FLG_ESTADO,
            V.USU_CREACION,
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.SEG_M_SISTEMA V
             
        WHERE
             UPPER(V.DESC_SISTEMA)  LIKE '%' || UPPER(PI_DESC_SISTEMA) || '%'
            AND UPPER(V.FLG_ESTADO)  LIKE '%' || PI_FLG_ESTADO || '%'
        ORDER BY V.ID_SISTEMA DESC;
END;


/*=====================================================================================
   Objetivo            : Mostrar Informacion del PERFIL
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_PERFIL_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_PERFIL IN TRAMITE.SEG_M_PERFIL.ID_PERFIL %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_PERFIL,
            V.ID_SISTEMA,
            V.DESC_PERFIL,  
            V.FLG_ESTADO,
            V.USU_CREACION,
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.SEG_M_PERFIL V
             
        WHERE
           ID_PERFIL= PI_ID_PERFIL; 
     
END;


/*=====================================================================================
   Objetivo            : Mostrar Informacion del OFICINA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_OFICINA_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_OFICINA IN TRAMITE.SEG_M_OFICINA.ID_OFICINA %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_OFICINA,
            V.ID_ENTIDAD,
            V.ID_OFICINA_PADRE,
            V.DESC_CORTA_OFICINA,
            V.SIGLA_OFICINA,       
            V.DESC_OFICINA,  
            V.FLG_ESTADO,
            V.USU_CREACION,
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.SEG_M_OFICINA V
             
        WHERE
           ID_OFICINA= PI_ID_OFICINA; 
     
END;




PROCEDURE USP_USUARIO_PAGINACION
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
          P_ORDEN_COLUMNA_AUX := 'ID_USUARIO';
      END IF;
      P_SQLDR := 'SELECT
                      COUNT(*)
                  FROM
                      ' || PI_TABLA || ' V WHERE ' || PI_WHERE;
      --INSERT INTO LOGG VALUES('P_PAGINA_AUX:'||P_SQLDR);
      commit;
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
  
  
/*=====================================================================================
   Objetivo            : Mostrar Informacion del USUARIO  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_USUARIO_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_USUARIO IN TRAMITE.SEG_M_USUARIO.ID_USUARIO %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_USUARIO,
            V.COD_USUARIO,  
            V.CLAVE_USUARIO,  
            V.NOMBRE_USUARIO,  
            V.APE_PATERNO,
            V.APE_MATERNO, 
            V.DNI, 
            V.CELULAR,
            V.TELEFONO,
            V.CORREO, 
            V.FLG_ESTADO,
            V.USU_CREACION,
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.SEG_M_USUARIO V
             
        WHERE
            V.ID_USUARIO=PI_ID_USUARIO; 
        
END;



/*=====================================================================================
   Objetivo            : Mostrar Informacion del USUARIO su cargo  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_USUARIOCARGO_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_USUARIO IN TRAMITE.SEG_M_USUARIO.ID_USUARIO %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_USUARIO_CARGO,
            V.ID_USUARIO,
            V.ID_OFICINA,  
            V.ID_CARGO,  
            V.FLG_JEFE, 
            O.DESC_OFICINA, 
            C.DESC_CARGO
        FROM
            TRAMITE.SEG_D_USUARIO_CARGO V
            INNER JOIN  SEG_M_OFICINA O ON O.ID_OFICINA = V.ID_OFICINA 
            INNER JOIN  SEG_M_CARGO C ON C.ID_CARGO = V.ID_CARGO 
             
        WHERE
            V.ID_USUARIO=PI_ID_USUARIO; 
        
END;




/*=====================================================================================
   Objetivo            : Mostrar Informacion del SISTEMA uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_SISTEMA_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_SISTEMA IN TRAMITE.SEG_M_SISTEMA.ID_SISTEMA %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_SISTEMA,
            V.DESC_SISTEMA,  
            V.CODIGO_IMAGEN,
            V.CODIGO_SISTEMA,
            V.FLG_ESTADO,
            V.USU_CREACION,
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.SEG_M_SISTEMA V
             
        WHERE
           V.ID_SISTEMA= PI_ID_SISTEMA; 
 
END;



/*=====================================================================================
   Objetivo            : Mostrar Informacion del MODULOS DEL SISTEMA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_SISTEMAS_MODULO_LISTAR
(
   PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_SISTEMA TRAMITE.SEG_D_SISTEMAS_MODULO.ID_SISTEMA %TYPE,
  PI_FLG_ESTADO TRAMITE.SEG_D_SISTEMAS_MODULO.FLG_ESTADO %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            NVL(SM.ID_SISTEMA_MODULO, 0) ID_SISTEMA_MODULO,
            NVL(SM.ID_SISTEMA, 0) ID_SISTEMA,
            NVL(SM.ID_TIPO_MODULO, 0) ID_TIPO_MODULO,
            TM.DESC_TIPORECURSO DESC_TIPO_MODULO,
            NVL(SM.ID_SISTEMA_MODULO_PADRE, 0) ID_SISTEMA_MODULO_PADRE,
            NVL(SM.ID_A, '-') ID_A ,
            NVL(SM.ID_LI, '-') ID_LI ,
            NVL(SM.IMAGEN, '-') IMAGEN ,
            NVL(SM.URL_MODULO, '-') URL_MODULO,
            NVL(SM.DESC_MODULO, '-') DESC_MODULO,
            NVL(SM.ORDEN, 0) ORDEN,
            NVL(SM.NIVEL, 1) NIVEL,
            SM.FLG_ESTADO,
            NVL(SM.USU_CREACION, '-')USU_CREACION,
            TO_CHAR(SM.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FEC_CREACION,
            NVL(SM.IP_CREACION, '-')IP_CREACION,
            NVL(SM.USU_MODIFICACION, '-')USU_MODIFICACION,
            NVL(TO_CHAR(SM.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.'), '-') FEC_MODIFICACION,
            NVL(SM.IP_MODIFICACION, '-')IP_MODIFICACION
        FROM
            SEG_D_SISTEMAS_MODULO SM
            INNER JOIN TRAMITE.SEG_M_TIPO_RECURSO TM ON TM.ID_TIPORECURSO = SM.ID_TIPO_MODULO
        WHERE
            SM.ID_SISTEMA = PI_ID_SISTEMA
            AND SM.FLG_ESTADO = NVL(PI_FLG_ESTADO,SM.FLG_ESTADO)
        ORDER BY SM.ORDEN ASC;
END;



/*=====================================================================================
   Objetivo            : Mostrar Informacion del MODULOS POR PERFIL
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/


PROCEDURE USP_SISTEMAS_PERF_MODU_LISTAR
(
    PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_SISTEMA TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.ID_SISTEMA %TYPE,
  PI_ID_SISTEMA_PERFIL TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.ID_PERFIL %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
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
            TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO SPM
            INNER JOIN TRAMITE.SEG_D_SISTEMAS_MODULO SM ON SM.ID_SISTEMA_MODULO = SPM.ID_MODULO
                                                              --AND SM.FLG_ESTADO = 1
       WHERE
            SPM.ID_SISTEMA = PI_ID_SISTEMA
            AND SPM.ID_PERFIL = PI_ID_SISTEMA_PERFIL
            AND SPM.FLG_ESTADO = 1;
END;



/*=====================================================================================
   Objetivo            : Mostrar Informacion del oficina del personal para sus sistema
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_SISTEMAS_OFIUSU_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_USUARIO IN TRAMITE.SEG_D_USUARIO_CARGO.ID_USUARIO %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_USUARIO_CARGO,
            V.ID_OFICINA,
            O.DESC_OFICINA
            
        FROM
            TRAMITE.SEG_D_USUARIO_CARGO V
            INNER JOIN TRAMITE.SEG_M_OFICINA O ON O.ID_OFICINA =V.ID_OFICINA
             
        WHERE
             V.ID_USUARIO = PI_ID_USUARIO; 
END;



/*=====================================================================================
   Objetivo            : Mostrar Informacion del cargo del personal para sus sistema
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_SISTEMAS_CARGOUSU_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_USUARIO IN TRAMITE.SEG_D_USUARIO_CARGO.ID_USUARIO %TYPE,
  PI_ID_OFICINA IN TRAMITE.SEG_D_USUARIO_CARGO.ID_OFICINA %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_USUARIO_CARGO,
            V.ID_CARGO,
            O.DESC_CARGO
            
        FROM
            TRAMITE.SEG_D_USUARIO_CARGO V
            INNER JOIN TRAMITE.SEG_M_CARGO O ON O.ID_CARGO =V.ID_CARGO
             
        WHERE
             V.ID_USUARIO = PI_ID_USUARIO 
             AND V.ID_OFICINA = PI_ID_OFICINA; 
END;



/*=====================================================================================
   Objetivo            : Mostrar Informacion del usuarios del sistema y perfiles
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_SISTEMAS_USUARIO_LISTAR
(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_SISTEMA TRAMITE.SEG_R_USUARIO_PERFIL.ID_SISTEMA %TYPE,
  PI_FLG_ESTADO TRAMITE.SEG_R_USUARIO_PERFIL.FLG_ESTADO %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
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
            NVL(TO_CHAR(SPU.FEC_ACTIVACION, 'DD/MM/YYYY'),'-') FEC_ACTIVACION,
            NVL(TO_CHAR(SPU.FEC_DESACTIVACION, 'DD/MM/YYYY'),'-') FEC_DESACTIVACION,
            SPU.FLG_ESTADO,
            NVL(SPU.USU_CREACION,'-')USU_CREACION,
            TO_CHAR(SPU.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FEC_CREACION,
            NVL(SPU.IP_CREACION,'-')IP_CREACION,
            NVL(SPU.USU_MODIFICACION,'-')USU_MODIFICACION,
            NVL(TO_CHAR(SPU.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.'),'-') FEC_MODIFICACION,
            NVL(SPU.IP_MODIFICACION,'-')IP_MODIFICACION
        FROM
            TRAMITE.SEG_R_USUARIO_PERFIL SPU
            INNER JOIN TRAMITE.SEG_M_PERFIL SP ON SP.ID_PERFIL = SPU.ID_PERFIL
                                                               AND SP.ID_SISTEMA = SPU.ID_SISTEMA
            INNER JOIN TRAMITE.SEG_M_USUARIO U ON U.ID_USUARIO = SPU.ID_USUARIO
            INNER JOIN TRAMITE.SEG_M_OFICINA OFI ON OFI.ID_OFICINA = SPU.ID_OFICINA
            INNER JOIN TRAMITE.SEG_M_CARGO C ON C.ID_CARGO = SPU.ID_CARGO
            
       WHERE
            SPU.ID_SISTEMA = PI_ID_SISTEMA
            AND SPU.FLG_ESTADO = NVL(PI_FLG_ESTADO, SPU.FLG_ESTADO);
END;




/*=====================================================================================
   Objetivo            : Mostrar Informacion del TAREA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_TAREA_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_TAREA IN TRAMITE.TRA_L_TAREA.DESC_TAREA %TYPE,
  PI_FLG_ESTADO IN TRAMITE.TRA_L_TAREA.FLG_ESTADO %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_TAREA,
            V.DESC_TAREA,  
            V.FLG_ESTADO,
            V.USU_CREACION,
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.TRA_L_TAREA V
             
        WHERE
             UPPER(V.DESC_TAREA)  LIKE '%' || UPPER(PI_DESC_TAREA) || '%'
            AND UPPER(V.FLG_ESTADO)  LIKE '%' || PI_FLG_ESTADO || '%'
        ORDER BY V.ID_TAREA DESC;
END;

/*=====================================================================================
   Objetivo            : Mostrar Informacion del SEDE
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_SEDE_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_SEDE IN TRAMITE.SEG_M_SEDE.DESC_SEDE %TYPE,
  PI_FLG_ESTADO IN TRAMITE.SEG_M_SEDE.FLG_ESTADO %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
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
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.SEG_M_SEDE V
             
        WHERE
             UPPER(V.DESC_SEDE)  LIKE '%' || UPPER(PI_DESC_SEDE) || '%'
            AND UPPER(V.FLG_ESTADO)  LIKE '%' || PI_FLG_ESTADO || '%'
        ORDER BY V.ID_SEDE DESC;
END;


/*=====================================================================================
   Objetivo            : Mostrar Informacion del SEDE  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_SEDE_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_SEDE IN TRAMITE.SEG_M_SEDE.ID_SEDE %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
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
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.SEG_M_SEDE V
             
        WHERE
            V.ID_SEDE=PI_ID_SEDE; 
        
END;




/*=====================================================================================
   Objetivo            : Mostrar Informacion del ENTIDAD EXTERNA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_ENTIDADEXTERNA_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_ENTIDAD IN TRAMITE.TRA_L_ENTIDADES.DESC_ENTIDAD %TYPE,
  PI_FLG_ESTADO IN TRAMITE.TRA_L_ENTIDADES.FLG_ESTADO %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_ENTIDAD,
            V.DESC_ENTIDAD, 
            V.RUC_ENTIDAD, 
            V.ABREVIACION_ENTIDAD, 
            V.DIRECCION_ENTIDAD,         
            V.FLG_ESTADO,
            V.USU_CREACION,
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.TRA_L_ENTIDADES V
             
        WHERE
             UPPER(V.DESC_ENTIDAD)  LIKE '%' || UPPER(PI_DESC_ENTIDAD) || '%'
            AND UPPER(V.FLG_ESTADO)  LIKE '%' || PI_FLG_ESTADO || '%'
        ORDER BY V.ID_ENTIDAD DESC;
END;


/*=====================================================================================
   Objetivo            : Mostrar Informacion del NTIDAD EXTERNA  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_ENTIDADEXTERNA_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_ENTIDAD IN TRAMITE.TRA_L_ENTIDADES.ID_ENTIDAD %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_ENTIDAD,
            V.DESC_ENTIDAD, 
            V.RUC_ENTIDAD, 
            V.ABREVIACION_ENTIDAD, 
            V.DIRECCION_ENTIDAD,         
            V.FLG_ESTADO,
            V.USU_CREACION,
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.TRA_L_ENTIDADES V
             
        WHERE
            V.ID_ENTIDAD=PI_ID_ENTIDAD; 
        
END;



/*=====================================================================================
   Objetivo            : Mostrar Informacion del CAMPO
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_CAMPO_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_CAMPO,
            v.ID_CAMPO_PADRE,       
            V.DESC_CAMPO,  
            V.CODIGO_CAMPO, 
            V.FLG_ESTADO,
            V.USU_CREACION,
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.TRA_L_CAMPO V
             
        ORDER BY V.ID_CAMPO ASC;
END;



/*=====================================================================================
   Objetivo            : Mostrar Informacion del PLANTILLA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_PLANTILLA_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_TIPO_DOCUMENTO IN TRAMITE.TRA_M_PLANTILLA.ID_TIPO_DOCUMENTO %TYPE,
  PI_FLG_ESTADO IN TRAMITE.TRA_M_PLANTILLA.FLG_ESTADO %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_PLANTILLA,
            V.DESC_PLANTILLA,
            V.ID_TIPO_DOCUMENTO, 
            TA.DESC_TIPO_DOCUMENTO,           
            V.FLG_ESTADO,
            V.USU_CREACION,
            TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
            V.IP_CREACION,
            V.USU_MODIFICACION,
            TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
            V.IP_MODIFICACION
        FROM
            TRAMITE.TRA_M_PLANTILLA V 
            INNER JOIN  TRA_L_TIPO_DOCUMENTO TA ON TA.ID_TIPO_DOCUMENTO = V.ID_TIPO_DOCUMENTO
             
        WHERE
             V.ID_TIPO_DOCUMENTO = NVL(PI_ID_TIPO_DOCUMENTO ,V.ID_TIPO_DOCUMENTO )
            AND UPPER(V.FLG_ESTADO)  LIKE '%' || PI_FLG_ESTADO || '%'
        ORDER BY V.ID_PLANTILLA DESC;
END;





/*=====================================================================================
   Objetivo            : Mostrar Informacion del PLANTILLA  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_PLANTILLA_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_PLANTILLA IN TRAMITE.TRA_M_PLANTILLA.ID_PLANTILLA %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT
            V.ID_PLANTILLA,
            V.DESC_PLANTILLA,  
            V.ID_TIPO_DOCUMENTO,
            V.NOMBRE_DOCUMENTO,
            V.EXTENSION_DOCUMENTO,
            V.CODIGO_DOCUMENTO
            
            
        FROM
            TRAMITE.TRA_M_PLANTILLA V
             
        WHERE
            V.ID_PLANTILLA=PI_ID_PLANTILLA; 
        
END;


/*=====================================================================================
   Objetivo            : Mostrar Informacion del PLANTILLA  uno
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_PLANTILLA_CAMPO_LISTAR_UNO(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_PLANTILLA IN TRAMITE.TRA_M_PLANTILLA.ID_PLANTILLA %TYPE
)
AS
BEGIN
      OPEN PO_CURSOR FOR
          SELECT
              CP.ID_PLANTILLA_CAMPO,
              C.ID_CAMPO_PADRE,
              CP.ID_PLANTILLA,
              CP.ID_CAMPO,
              CP.ORDEN,
              CP.FLG_ESTADO,
              C.DESC_CAMPO,
              C.CODIGO_CAMPO
          FROM
               TRA_D_PLANTILLA_CAMPO CP
              INNER JOIN  TRA_L_CAMPO C ON C.ID_CAMPO=CP.ID_CAMPO
          WHERE CP.ID_PLANTILLA = PI_ID_PLANTILLA
          UNION ALL
          SELECT
              0 ID_PLANTILLA_CAMPO,
              c.ID_CAMPO_PADRE,
              PI_ID_PLANTILLA ID_PLANTILLA,
              c.ID_CAMPO,
              0 ORDEN,
              c.FLG_ESTADO,
              c.DESC_CAMPO,
              C.CODIGO_CAMPO
          FROM
               TRA_L_CAMPO C
          WHERE
              C.ID_CAMPO_PADRE = 0
          ORDER BY ORDEN ASC;
        
END;



/*=====================================================================================
   Objetivo            : Mostrar Informacion del oficina permisos
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_OFICINAPERMISO_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_DESC_OFICINA IN TRAMITE.SEG_M_OFICINA.DESC_OFICINA %TYPE,
  PI_FLG_ESTADO IN TRAMITE.SEG_M_OFICINA.FLG_ESTADO %TYPE
)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT       
         distinct(V.ID_OFICINA_ORIGEN), 
          --  V.ID_OFICINA_PERMISO,
          O.DESC_OFICINA, 
             (SELECT
           LISTAGG( OD.DESC_OFICINA || CHR(13)) WITHIN GROUP (ORDER BY OP.ID_OFICINA_DESTINO)  --  ,  LISTAGG(S.DNOMBRE, ', ')   WITHIN GROUP (ORDER BY S.DDOCUMENTO)
       FROM
           SEG_M_OFICINA_PERMISO OP
           INNER JOIN SEG_M_OFICINA OD ON OD.ID_OFICINA = OP.ID_OFICINA_DESTINO

       WHERE
           OP.ID_OFICINA_ORIGEN = V.ID_OFICINA_ORIGEN) AS OFICINA_DESTINO,
            V.FLG_ESTADO,
            V.USU_CREACION,
         --   TO_CHAR(V.FEC_CREACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_CREACION,
         --   V.IP_CREACION,
          --  V.USU_MODIFICACION,
          --  TO_CHAR(V.FEC_MODIFICACION, 'DD/MM/YYYY hh:mi:ss a.m.') FECHA_MODIFICACION,
           -- V.IP_MODIFICACION
           '' FECHA_CREACION,
           ''IP_CREACION, 
           '' USU_MODIFICACION,
           '' FECHA_MODIFICACION,
           '' IP_MODIFICACION
           
           
        FROM
            TRAMITE.SEG_M_OFICINA_PERMISO V
           INNER JOIN TRAMITE.SEG_M_OFICINA O ON O.ID_OFICINA =V.ID_OFICINA_ORIGEN
             
        WHERE
             UPPER(O.DESC_OFICINA)  LIKE '%' || PI_DESC_OFICINA || '%'
            AND UPPER(V.FLG_ESTADO)  LIKE '%' || PI_FLG_ESTADO || '%'
        ORDER BY V.ID_OFICINA_ORIGEN DESC; 
     --  GROUP BY ID_OFICINA_ORIGEN; 
        
END;



/*=====================================================================================
   Objetivo            : Mostrar Informacion del de los destinos por ofician
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_OFICINADESTINOS_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_OFICINA_ORIGEN IN TRAMITE.SEG_M_OFICINA_PERMISO.ID_OFICINA_ORIGEN %TYPE

)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT  
         V.ID_OFICINA_PERMISO,     
         V.ID_OFICINA_ORIGEN, 
         V.ID_OFICINA_DESTINO,
         O.DESC_OFICINA
         
        FROM
            TRAMITE.SEG_M_OFICINA_PERMISO V
           INNER JOIN TRAMITE.SEG_M_OFICINA O ON O.ID_OFICINA =V.ID_OFICINA_DESTINO
             
        WHERE
           V.ID_OFICINA_ORIGEN = PI_ID_OFICINA_ORIGEN;

END;


/*=====================================================================================
   Objetivo            : Mostrar Informacion del de los filtros de la oficina
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 23/04/2021
  =====================================================================================*/

PROCEDURE USP_OFICINAFILTROS_LISTAR(
  PO_CURSOR  OUT CURSOR_TYPE,
  PI_ID_OFICINA_PERMISO IN TRAMITE.SEG_D_OFICINA_FILTROS.ID_OFICINA_PERMISO %TYPE

)
AS
BEGIN
    OPEN PO_CURSOR FOR
        SELECT  
         V.ID_OFICINA_FILTRO,     
         V.ID_OFICINA_PERMISO, 
         V.ID_OFICINA,
         V.ID_TAREA,
         O.DESC_OFICINA,
         T.DESC_TAREA
         
        FROM
            TRAMITE.SEG_D_OFICINA_FILTROS V
            INNER JOIN TRAMITE.SEG_M_OFICINA O ON O.ID_OFICINA =V.ID_OFICINA
            INNER JOIN TRAMITE.TRA_L_TAREA T ON T.ID_TAREA = V.ID_TAREA
             
        WHERE
           V.ID_OFICINA_PERMISO = PI_ID_OFICINA_PERMISO;

END;






end PCK_ADMIN_CONSULTA;
/

--prompt
--prompt Creating package body PCK_ADMIN_MANTENIMIENTO
--prompt =============================================
--prompt
create or replace package body tramite.PCK_ADMIN_MANTENIMIENTO AS


/*=====================================================================================
   Objetivo            : Insertar datos de cargo
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_CARGO_INSERTAR(
  PI_DESC_CARGO    TRAMITE.SEG_M_CARGO.DESC_CARGO %TYPE,
  PI_IP_CREACION       TRAMITE.SEG_M_CARGO.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_M_CARGO.USU_CREACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
P_MENSAJE   VARCHAR2(200):= '';
BEGIN
    P_MENSAJE := '';

        SELECT
            NVL((
            SELECT
                CASE
                  WHEN UPPER(U.DESC_CARGO) = UPPER(RTRIM(PI_DESC_CARGO)) THEN
                      'La descripción ya existe'
                END
            FROM
                TRAMITE.SEG_M_CARGO U
            WHERE
                (
                 UPPER(U.DESC_CARGO) = UPPER(RTRIM(PI_DESC_CARGO))
                )
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN

            INSERT INTO
                TRAMITE.SEG_M_CARGO
                (
                  ID_CARGO,
                  DESC_CARGO,
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  SEQ_CARGO.NEXTVAL,
                  PI_DESC_CARGO,
                  '1',
                  PI_USUARIO_CREACION,
                  SYSDATE,
                  PI_IP_CREACION
                );

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;

END;



/*=====================================================================================
   Objetivo            : Actualiza datos cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_CARGO_ACTUALIZAR(
  PI_ID_CARGO          TRAMITE.SEG_M_CARGO.ID_CARGO %TYPE,
  PI_DESC_CARGO        TRAMITE.SEG_M_CARGO.DESC_CARGO %TYPE,
  PI_IP_MODIFICACION       TRAMITE.SEG_M_CARGO.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_CARGO.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
P_MENSAJE VARCHAR2(200):= '';
BEGIN
      SELECT
            NVL((
            SELECT
                CASE
                  WHEN UPPER(U.DESC_CARGO) = UPPER(RTRIM(PI_DESC_CARGO)) THEN
                      'La descripción ya existe'
                END
            FROM
               TRAMITE.SEG_M_CARGO U
            WHERE
                (
                 UPPER(U.DESC_CARGO) = UPPER(RTRIM(PI_DESC_CARGO))
                )
                AND U.ID_CARGO != PI_ID_CARGO
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN
            UPDATE
                TRAMITE.SEG_M_CARGO
            SET
                DESC_CARGO = RTRIM(PI_DESC_CARGO),
                USU_MODIFICACION = PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = SYSDATE,
                IP_MODIFICACION = PI_IP_MODIFICACION
            WHERE
                ID_CARGO = PI_ID_CARGO;

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;
END;

/*=====================================================================================
   Objetivo            : Elimina cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_CARGO_ELIMINAR(
  PI_ID_CARGO          TRAMITE.SEG_M_CARGO.ID_CARGO %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM  TRAMITE.SEG_M_CARGO
    WHERE ID_CARGO = PI_ID_CARGO;
    PO_VALIDO :=1;
END;




/*=====================================================================================
   Objetivo            : Cambia estado cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_CARGO_ESTADO(
  PI_ID_CARGO          TRAMITE.SEG_M_CARGO.ID_CARGO %TYPE,
  PI_FLG_ESTADO         TRAMITE.SEG_M_CARGO.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.SEG_M_CARGO.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_CARGO.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE TRAMITE.SEG_M_CARGO SET
           FLG_ESTADO = PI_FLG_ESTADO,
           USU_MODIFICACION= PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=PI_IP_MODIFICACION,
           FEC_MODIFICACION=SYSDATE
    WHERE ID_CARGO = PI_ID_CARGO;
    PO_VALIDO :=1;
END;






/*=====================================================================================
   Objetivo            : Insertar datos de ENTIDAD
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_ENTIDAD_INSERTAR(
  PI_DESC_ENTIDAD   TRAMITE.SEG_M_ENTIDAD.DESC_ENTIDAD %TYPE,
  PI_IP_CREACION       TRAMITE.SEG_M_ENTIDAD.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_M_ENTIDAD.USU_CREACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
P_MENSAJE   VARCHAR2(200):= '';
BEGIN
    P_MENSAJE := '';

        SELECT
            NVL((
            SELECT
                CASE
                  WHEN UPPER(U.DESC_ENTIDAD) = UPPER(RTRIM(PI_DESC_ENTIDAD)) THEN
                      'La descripción ya existe'
                END
            FROM
                TRAMITE.SEG_M_ENTIDAD U
            WHERE
                (
                 UPPER(U.DESC_ENTIDAD) = UPPER(RTRIM(PI_DESC_ENTIDAD))
                )
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN

            INSERT INTO
                TRAMITE.SEG_M_ENTIDAD
                (
                  ID_ENTIDAD,
                  DESC_ENTIDAD,
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  SEQ_ENTIDAD.NEXTVAL,
                  PI_DESC_ENTIDAD,
                  '1',
                  PI_USUARIO_CREACION,
                  SYSDATE,
                  PI_IP_CREACION
                );

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;

END;


/*=====================================================================================
   Objetivo            : Actualiza datos entidad
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_ENTIDAD_ACTUALIZAR(
  PI_ID_ENTIDAD            TRAMITE.SEG_M_ENTIDAD.ID_ENTIDAD %TYPE,
  PI_DESC_ENTIDAD         TRAMITE.SEG_M_ENTIDAD.DESC_ENTIDAD %TYPE,
  PI_IP_MODIFICACION       TRAMITE.SEG_M_ENTIDAD.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_ENTIDAD.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
P_MENSAJE VARCHAR2(200):= '';
BEGIN
      SELECT
            NVL((
            SELECT
                CASE
                  WHEN UPPER(U.DESC_ENTIDAD) = UPPER(RTRIM(PI_DESC_ENTIDAD)) THEN
                      'La descripción ya existe'
                END
            FROM
               TRAMITE.SEG_M_ENTIDAD U
            WHERE
                (
                 UPPER(U.DESC_ENTIDAD) = UPPER(RTRIM(PI_DESC_ENTIDAD))
                )
                AND U.ID_ENTIDAD != PI_ID_ENTIDAD
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN
            UPDATE
                TRAMITE.SEG_M_ENTIDAD
            SET
                DESC_ENTIDAD = RTRIM(PI_DESC_ENTIDAD),
                USU_MODIFICACION = PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = SYSDATE,
                IP_MODIFICACION = PI_IP_MODIFICACION
            WHERE
                ID_ENTIDAD = PI_ID_ENTIDAD;

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;
END;

/*=====================================================================================
   Objetivo            : Elimina entidad
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_ENTIDAD_ELIMINAR(
  PI_ID_ENTIDAD          TRAMITE.SEG_M_ENTIDAD.ID_ENTIDAD %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM  TRAMITE.SEG_M_ENTIDAD
    WHERE ID_ENTIDAD = PI_ID_ENTIDAD;
    PO_VALIDO :=1;
END;




/*=====================================================================================
   Objetivo            : Cambia estado entidad                                         
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_ENTIDAD_ESTADO(
  PI_ID_ENTIDAD          TRAMITE.SEG_M_ENTIDAD.ID_ENTIDAD %TYPE,
  PI_FLG_ESTADO         TRAMITE.SEG_M_ENTIDAD.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.SEG_M_ENTIDAD.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_ENTIDAD.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE TRAMITE.SEG_M_ENTIDAD SET
           FLG_ESTADO = PI_FLG_ESTADO,
           USU_MODIFICACION= PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=PI_IP_MODIFICACION,
           FEC_MODIFICACION=SYSDATE
    WHERE ID_ENTIDAD = PI_ID_ENTIDAD;
    PO_VALIDO :=1;
END;




/*=====================================================================================
   Objetivo            : Insertar datos de PERFIL
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_PERFIL_INSERTAR(
  PI_ID_SISTEMA        TRAMITE.SEG_M_PERFIL.ID_SISTEMA %TYPE,
  PI_DESC_PERFIL       TRAMITE.SEG_M_PERFIL.DESC_PERFIL %TYPE,
  PI_IP_CREACION       TRAMITE.SEG_M_PERFIL.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_M_PERFIL.USU_CREACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
P_MENSAJE   VARCHAR2(200):= '';
BEGIN
    P_MENSAJE := '';

        SELECT
            NVL((
            SELECT
                CASE
                  WHEN UPPER(U.DESC_PERFIL) = UPPER(RTRIM(PI_DESC_PERFIL)) THEN
                      'La descripción ya existe'
                END
            FROM
                TRAMITE.SEG_M_PERFIL U
            WHERE
                (
                 UPPER(U.DESC_PERFIL) = UPPER(RTRIM(PI_DESC_PERFIL))
                )
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN

            INSERT INTO
                TRAMITE.SEG_M_PERFIL
                (
                  ID_PERFIL,
                  ID_SISTEMA, 
                  DESC_PERFIL,
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  SEQ_PERFIL.NEXTVAL,
                  PI_ID_SISTEMA,
                  PI_DESC_PERFIL,
                  '1',
                  PI_USUARIO_CREACION,
                  SYSDATE,
                  PI_IP_CREACION
                );

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;

END;


/*=====================================================================================
   Objetivo            : Actualiza datos PERFIL
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_PERFIL_ACTUALIZAR(
   PI_ID_PERFIL            TRAMITE.SEG_M_PERFIL.ID_PERFIL %TYPE,
  PI_ID_SISTEMA        TRAMITE.SEG_M_PERFIL.ID_SISTEMA %TYPE,
  PI_DESC_PERFIL         TRAMITE.SEG_M_PERFIL.DESC_PERFIL %TYPE,
  PI_IP_MODIFICACION       TRAMITE.SEG_M_PERFIL.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_PERFIL.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
P_MENSAJE VARCHAR2(200):= '';
BEGIN
      SELECT
            NVL((
            SELECT
                CASE
                  WHEN UPPER(U.DESC_PERFIL) = UPPER(RTRIM(PI_DESC_PERFIL)) THEN
                      'La descripción ya existe'
                END
            FROM
               TRAMITE.SEG_M_PERFIL U
            WHERE
                (
                 UPPER(U.DESC_PERFIL) = UPPER(RTRIM(PI_DESC_PERFIL))
                )
                AND U.ID_PERFIL != PI_ID_PERFIL
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN
            UPDATE
                TRAMITE.SEG_M_PERFIL
            SET
                DESC_PERFIL = RTRIM(PI_DESC_PERFIL),
                ID_SISTEMA = PI_ID_SISTEMA,
                USU_MODIFICACION = PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = SYSDATE,
                IP_MODIFICACION = PI_IP_MODIFICACION
            WHERE
                ID_PERFIL = PI_ID_PERFIL;

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;
END;

/*=====================================================================================
   Objetivo            : Elimina PERFIL
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_PERFIL_ELIMINAR(
  PI_ID_PERFIL          TRAMITE.SEG_M_PERFIL.ID_PERFIL %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM  TRAMITE.SEG_M_PERFIL
    WHERE ID_PERFIL = PI_ID_PERFIL;
    PO_VALIDO :=1;
END;




/*=====================================================================================
   Objetivo            : Cambia estado PERFIL                                         
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_PERFIL_ESTADO(
  PI_ID_PERFIL          TRAMITE.SEG_M_PERFIL.ID_PERFIL %TYPE,
  PI_FLG_ESTADO         TRAMITE.SEG_M_PERFIL.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.SEG_M_PERFIL.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_PERFIL.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE TRAMITE.SEG_M_PERFIL SET
           FLG_ESTADO = PI_FLG_ESTADO,
           USU_MODIFICACION= PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=PI_IP_MODIFICACION,
           FEC_MODIFICACION=SYSDATE
    WHERE ID_PERFIL = PI_ID_PERFIL;
    PO_VALIDO :=1;
END;




/*=====================================================================================
   Objetivo            : Insertar datos de OFICINA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_OFICINA_INSERTAR(
  PI_ID_ENTIDAD       TRAMITE.SEG_M_OFICINA.ID_ENTIDAD %TYPE,
  PI_ID_OFICINA_PADRE      TRAMITE.SEG_M_OFICINA.ID_OFICINA_PADRE %TYPE,
  PI_DESC_CORTA_OFICINA       TRAMITE.SEG_M_OFICINA.DESC_CORTA_OFICINA %TYPE,
  PI_DESC_OFICINA       TRAMITE.SEG_M_OFICINA.DESC_OFICINA %TYPE,
  PI_SIGLA_OFICINA       TRAMITE.SEG_M_OFICINA.SIGLA_OFICINA %TYPE,
  PI_IP_CREACION       TRAMITE.SEG_M_OFICINA.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_M_OFICINA.USU_CREACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
P_MENSAJE   VARCHAR2(200):= '';
BEGIN
    P_MENSAJE := '';

        SELECT
            NVL((
            SELECT
                CASE
                  WHEN UPPER(U.DESC_OFICINA) = UPPER(RTRIM(PI_DESC_OFICINA)) THEN
                      'La descripción ya existe'
                  WHEN UPPER(U.SIGLA_OFICINA) = UPPER(RTRIM(PI_SIGLA_OFICINA)) THEN
                      'La sigla  ya existe'
                END
            FROM
                TRAMITE.SEG_M_OFICINA U
            WHERE
                (
                 UPPER(U.DESC_OFICINA) = UPPER(RTRIM(PI_DESC_OFICINA))
                 and  UPPER(U.SIGLA_OFICINA) = UPPER(RTRIM(PI_SIGLA_OFICINA))
                )
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN

            INSERT INTO
                TRAMITE.SEG_M_OFICINA
                (
                  ID_OFICINA,
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
                  SEQ_OFICINA.NEXTVAL,
                  PI_ID_ENTIDAD,
                  PI_ID_OFICINA_PADRE,
                  PI_DESC_CORTA_OFICINA,
                  PI_DESC_OFICINA,
                  PI_SIGLA_OFICINA,
                  '1',
                  PI_USUARIO_CREACION,
                  SYSDATE,
                  PI_IP_CREACION
                );

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;

END;


/*=====================================================================================
   Objetivo            : Actualiza datos OFICINA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_OFICINA_ACTUALIZAR(
  PI_ID_OFICINA            TRAMITE.SEG_M_OFICINA.ID_OFICINA %TYPE,
  PI_ID_ENTIDAD       TRAMITE.SEG_M_OFICINA.ID_ENTIDAD %TYPE,
  PI_ID_OFICINA_PADRE      TRAMITE.SEG_M_OFICINA.ID_OFICINA_PADRE %TYPE,
  PI_DESC_CORTA_OFICINA       TRAMITE.SEG_M_OFICINA.DESC_CORTA_OFICINA %TYPE,
  PI_DESC_OFICINA       TRAMITE.SEG_M_OFICINA.DESC_OFICINA %TYPE,
  PI_SIGLA_OFICINA       TRAMITE.SEG_M_OFICINA.SIGLA_OFICINA %TYPE,
  PI_IP_MODIFICACION       TRAMITE.SEG_M_OFICINA.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_OFICINA.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
P_MENSAJE VARCHAR2(200):= '';
BEGIN
      SELECT
            NVL((
            SELECT
                CASE
                  WHEN UPPER(U.DESC_OFICINA) = UPPER(RTRIM(PI_DESC_OFICINA)) THEN
                      'La descripción ya existe'
                  WHEN UPPER(U.SIGLA_OFICINA) = UPPER(RTRIM(PI_SIGLA_OFICINA)) THEN
                      'La sigla  ya existe'                     
                END
            FROM
               TRAMITE.SEG_M_OFICINA U
            WHERE
                (
                 UPPER(U.DESC_OFICINA) = UPPER(RTRIM(PI_DESC_OFICINA))
                 and  UPPER(U.SIGLA_OFICINA) = UPPER(RTRIM(PI_SIGLA_OFICINA))
                )
                AND U.ID_OFICINA != PI_ID_OFICINA
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN
            UPDATE
                TRAMITE.SEG_M_OFICINA
            SET
                ID_ENTIDAD = PI_ID_ENTIDAD, 
                ID_OFICINA_PADRE = PI_ID_OFICINA_PADRE, 
                DESC_CORTA_OFICINA = PI_DESC_CORTA_OFICINA, 
                DESC_OFICINA = RTRIM(PI_DESC_OFICINA),
                SIGLA_OFICINA = PI_SIGLA_OFICINA,
                USU_MODIFICACION = PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = SYSDATE,
                IP_MODIFICACION = PI_IP_MODIFICACION
            WHERE
                ID_OFICINA = PI_ID_OFICINA;

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;
END;

/*=====================================================================================
   Objetivo            : Elimina OFICINA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_OFICINA_ELIMINAR(
  PI_ID_OFICINA          TRAMITE.SEG_M_OFICINA.ID_OFICINA %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM  TRAMITE.SEG_M_OFICINA
    WHERE ID_OFICINA = PI_ID_OFICINA;
    PO_VALIDO :=1;
END;




/*=====================================================================================
   Objetivo            : Cambia estado OFICINA                                         
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_OFICINA_ESTADO(
  PI_ID_OFICINA          TRAMITE.SEG_M_OFICINA.ID_OFICINA %TYPE,
  PI_FLG_ESTADO         TRAMITE.SEG_M_OFICINA.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.SEG_M_OFICINA.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_OFICINA.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE TRAMITE.SEG_M_OFICINA SET
           FLG_ESTADO = PI_FLG_ESTADO,
           USU_MODIFICACION= PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=PI_IP_MODIFICACION,
           FEC_MODIFICACION=SYSDATE
    WHERE ID_OFICINA = PI_ID_OFICINA;
    PO_VALIDO :=1;
END;





/*=====================================================================================
   Objetivo            : Insertar datos de USUARIO
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_USUARIO_INSERTAR(
  PI_COD_USUARIO       TRAMITE.SEG_M_USUARIO.COD_USUARIO %TYPE,
  PI_CLAVE_USUARIO     TRAMITE.SEG_M_USUARIO.CLAVE_USUARIO %TYPE,
  PI_NOMBRE_USUARIO    TRAMITE.SEG_M_USUARIO.NOMBRE_USUARIO %TYPE,
  PI_APE_PATERNO   TRAMITE.SEG_M_USUARIO.APE_PATERNO %TYPE,
  PI_APE_MATERNO  TRAMITE.SEG_M_USUARIO.APE_MATERNO %TYPE,
  PI_DNI          TRAMITE.SEG_M_USUARIO.DNI %TYPE,
  PI_TELEFONO  TRAMITE.SEG_M_USUARIO.TELEFONO %TYPE,
  PI_CELULAR   TRAMITE.SEG_M_USUARIO.CELULAR %TYPE,
  PI_CORREO    TRAMITE.SEG_M_USUARIO.CORREO %TYPE,
  PI_IP_CREACION       TRAMITE.SEG_M_USUARIO.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_M_USUARIO.USU_CREACION %TYPE,
  PO_ID_USUARIO         OUT INTEGER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
P_MENSAJE   VARCHAR2(200):= '';
BEGIN
    P_MENSAJE := '';
        SELECT
            NVL((
            SELECT
                CASE
                  WHEN UPPER(RTRIM(U.DNI)) = UPPER(RTRIM(PI_DNI)) THEN
                      'El dni de usuario ya existe'
                  WHEN UPPER(RTRIM(U.COD_USUARIO)) = UPPER(RTRIM(PI_COD_USUARIO)) THEN
                       'El codigo de usuario ya existe'  
                END
            FROM
                TRAMITE.SEG_M_USUARIO U
            WHERE
                (
                 UPPER(U.DNI) = UPPER(RTRIM(PI_DNI))
                 OR  UPPER(U.COD_USUARIO) = UPPER(RTRIM(PI_COD_USUARIO))
                )
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN

           PO_ID_USUARIO :=   SEQ_USUARIO.NEXTVAL; 
            INSERT INTO
                TRAMITE.SEG_M_USUARIO
                (
                  ID_USUARIO,
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
                  PO_ID_USUARIO,
                  PI_COD_USUARIO,
                  PI_CLAVE_USUARIO,
                  PI_NOMBRE_USUARIO,
                  PI_APE_PATERNO,
                  PI_APE_MATERNO,
                  PI_DNI,
                  PI_TELEFONO,
                  PI_CELULAR,
                  PI_CORREO,
                  '1',
                  PI_USUARIO_CREACION,
                  SYSDATE,
                  PI_IP_CREACION
                );

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;

END;


/*=====================================================================================
   Objetivo            : Actualiza datos USUARIO
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_USUARIO_ACTUALIZAR(
  PI_ID_USUARIO        TRAMITE.SEG_M_USUARIO.ID_USUARIO %TYPE,
  PI_COD_USUARIO       TRAMITE.SEG_M_USUARIO.COD_USUARIO %TYPE,
  PI_CLAVE_USUARIO     TRAMITE.SEG_M_USUARIO.CLAVE_USUARIO %TYPE,
  PI_NOMBRE_USUARIO    TRAMITE.SEG_M_USUARIO.NOMBRE_USUARIO %TYPE,
  PI_APE_PATERNO   TRAMITE.SEG_M_USUARIO.APE_PATERNO %TYPE,
  PI_APE_MATERNO  TRAMITE.SEG_M_USUARIO.APE_MATERNO %TYPE,
  PI_DNI          TRAMITE.SEG_M_USUARIO.DNI %TYPE,
  PI_TELEFONO  TRAMITE.SEG_M_USUARIO.TELEFONO %TYPE,
  PI_CELULAR   TRAMITE.SEG_M_USUARIO.CELULAR %TYPE,
  PI_CORREO    TRAMITE.SEG_M_USUARIO.CORREO %TYPE,
  PI_IP_MODIFICACION       TRAMITE.SEG_M_USUARIO.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_USUARIO.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
P_MENSAJE VARCHAR2(200):= '';
BEGIN
      SELECT
            NVL((
            SELECT
                CASE
                   WHEN UPPER(U.COD_USUARIO) = UPPER(RTRIM(PI_COD_USUARIO)) THEN
                      'El codigo de usuario ya existe'
                  WHEN UPPER(U.DNI) = UPPER(RTRIM(PI_DNI)) THEN
                      'El dni de usuario ya existe'
                            
                END
            FROM
               TRAMITE.SEG_M_USUARIO U
            WHERE
                (
                 UPPER(U.COD_USUARIO) = UPPER(RTRIM(PI_COD_USUARIO))
                  AND  UPPER(U.DNI) = UPPER(RTRIM(PI_DNI))
                )
                AND U.ID_USUARIO != PI_ID_USUARIO
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN
            UPDATE
                TRAMITE.SEG_M_USUARIO
            SET
                COD_USUARIO = PI_COD_USUARIO, 
                CLAVE_USUARIO = PI_CLAVE_USUARIO, 
                NOMBRE_USUARIO = RTRIM(PI_NOMBRE_USUARIO),
                APE_PATERNO = PI_APE_PATERNO,
                APE_MATERNO= PI_APE_MATERNO, 
                DNI = PI_DNI ,
                TELEFONO=  PI_TELEFONO, 
                CELULAR =  PI_CELULAR, 
                CORREO  =PI_CORREO,
                USU_MODIFICACION = PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = SYSDATE,
                IP_MODIFICACION = PI_IP_MODIFICACION
            WHERE
                ID_USUARIO = PI_ID_USUARIO;

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;
END;



/*=====================================================================================
   Objetivo            : Elimina USUARIO
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_USUARIO_ELIMINAR(
  PI_ID_USUARIO          TRAMITE.SEG_M_USUARIO.ID_USUARIO %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM  TRAMITE.SEG_M_USUARIO
    WHERE ID_USUARIO = PI_ID_USUARIO;
    PO_VALIDO :=1;
END;




/*=====================================================================================
   Objetivo            : Cambia estado USUARIO                                         
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_USUARIO_ESTADO(
  PI_ID_USUARIO          TRAMITE.SEG_M_USUARIO.ID_USUARIO %TYPE,
  PI_FLG_ESTADO         TRAMITE.SEG_M_USUARIO.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.SEG_M_USUARIO.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_USUARIO.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE TRAMITE.SEG_M_USUARIO SET
           FLG_ESTADO = PI_FLG_ESTADO,
           USU_MODIFICACION= PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=PI_IP_MODIFICACION,
           FEC_MODIFICACION=SYSDATE
    WHERE ID_USUARIO = PI_ID_USUARIO;
    PO_VALIDO :=1;
END;


/*=====================================================================================
   Objetivo            : Insertar datos de USUARIO CARGO
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_USUARIOCARGO_INSERTAR(
  PI_ID_USUARIO      TRAMITE.SEG_D_USUARIO_CARGO.ID_USUARIO %TYPE,
  PI_ID_OFICINA    TRAMITE.SEG_D_USUARIO_CARGO.ID_OFICINA %TYPE,
  PI_ID_CARGO    TRAMITE.SEG_D_USUARIO_CARGO.ID_CARGO %TYPE,
  PI_FLG_JEFE    TRAMITE.SEG_D_USUARIO_CARGO.FLG_JEFE %TYPE,
  PI_IP_CREACION       TRAMITE.SEG_D_USUARIO_CARGO.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_D_USUARIO_CARGO.USU_CREACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN 
            INSERT INTO
                TRAMITE.SEG_D_USUARIO_CARGO
                (
                  ID_USUARIO_CARGO,
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
                  SEQ_USUARIO_CARGO.NEXTVAL,
                  PI_ID_USUARIO,
                  PI_ID_OFICINA,
                  PI_ID_CARGO,
                  PI_FLG_JEFE,
                  '1',
                  PI_USUARIO_CREACION,
                  SYSDATE,
                  PI_IP_CREACION
                );

            PO_VALIDO  := 1;
   
END;



/*=====================================================================================
   Objetivo            : Elimina USUARIO CARGO
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_USUARIOCARGO_ELIMINAR(
  PI_ID_USUARIO_CARGO          TRAMITE.SEG_D_USUARIO_CARGO.ID_USUARIO_CARGO %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM  TRAMITE.SEG_D_USUARIO_CARGO
    WHERE ID_USUARIO_CARGO = PI_ID_USUARIO_CARGO;
    PO_VALIDO :=1;
END;




/*=====================================================================================
   Objetivo            : Actualiza sistemas 
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_SISTEMAS_ACTUALIZAR(
  PI_ID_SISTEMA       TRAMITE.SEG_M_SISTEMA.ID_SISTEMA %TYPE,
  PI_CODIGO_SISTEMA      TRAMITE.SEG_M_SISTEMA.CODIGO_SISTEMA %TYPE,
  PI_DESC_SISTEMA    TRAMITE.SEG_M_SISTEMA.DESC_SISTEMA %TYPE,
  PI_CODIGO_IMAGEN   TRAMITE.SEG_M_SISTEMA.CODIGO_IMAGEN %TYPE,
  PI_IP_MODIFICACION       TRAMITE.SEG_M_SISTEMA.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_SISTEMA.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
P_MENSAJE VARCHAR2(200):= '';
BEGIN
      SELECT
            NVL((
            SELECT
                CASE
                   WHEN UPPER(U.CODIGO_SISTEMA) = UPPER(RTRIM(PI_CODIGO_SISTEMA)) THEN
                      'El codigo de sistema ya existe'
                            
                END
            FROM
               TRAMITE.SEG_M_SISTEMA U
            WHERE
                (
                 UPPER(U.CODIGO_SISTEMA) = UPPER(RTRIM(PI_CODIGO_SISTEMA))
              
                )
                AND U.ID_SISTEMA != PI_ID_SISTEMA
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN
            UPDATE
                TRAMITE.SEG_M_SISTEMA
            SET

                CODIGO_SISTEMA = PI_CODIGO_SISTEMA, 
                DESC_SISTEMA = PI_DESC_SISTEMA, 
                CODIGO_IMAGEN = PI_CODIGO_IMAGEN,
                USU_MODIFICACION = PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = SYSDATE,
                IP_MODIFICACION = PI_IP_MODIFICACION
            WHERE
                ID_SISTEMA = PI_ID_SISTEMA;

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;
END;



/*=====================================================================================
   Objetivo            : Registra modulos por perfil de  sistema
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/


PROCEDURE USP_SISTEMAS_PER_MOD_REGISTRAR
(
  PI_ID_SISTEMA          TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.ID_SISTEMA %TYPE,
  PI_ID_PERFIL           TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.ID_PERFIL %TYPE,
  PI_ID_MODULO           TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.ID_MODULO %TYPE,
  PI_USU_CREACION        TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.USU_CREACION %TYPE,
  PI_IP_CREACION         TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.IP_CREACION %TYPE,
  PO_VALIDO              OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE             OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
  P_MENSAJE             VARCHAR2(200) := '';
  P_CUENTA              INT := 0;
BEGIN
    PO_VALIDO := 0;
    SELECT
        COUNT(*) INTO P_CUENTA
    FROM
        TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO
    WHERE
        ID_PERFIL = PI_ID_PERFIL
        AND ID_SISTEMA = PI_ID_SISTEMA
        AND ID_MODULO = PI_ID_MODULO;
    IF P_CUENTA = 0 THEN
        INSERT INTO
          TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO
          (
             ID_SISTEMAS_PERFIL_MODULO,
             ID_SISTEMA,
             ID_PERFIL,
             ID_MODULO,
             USU_CREACION,
             IP_CREACION
          )
          SELECT
              TRAMITE.SEQ_ID_SISTEMAS_PERFIL_MODULO.NEXTVAL,
              PI_ID_SISTEMA,
              PI_ID_PERFIL,
              M.ID_SISTEMA_MODULO,
              PI_USU_CREACION,
              PI_IP_CREACION
          FROM
              TRAMITE.SEG_D_SISTEMAS_MODULO M
          WHERE
              M.ID_SISTEMA = PI_ID_SISTEMA
              AND (M.ID_SISTEMA_MODULO = PI_ID_MODULO OR M.ID_SISTEMA_MODULO_PADRE = PI_ID_MODULO)
              AND M.ID_SISTEMA_MODULO NOT IN
              (SELECT ID_MODULO FROM TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO WHERE ID_SISTEMA = PI_ID_SISTEMA  AND ID_PERFIL = PI_ID_PERFIL  );
        PO_VALIDO := 1;
    ELSE
        P_MENSAJE := 'El perfil seleccionado ya no existe';
    END IF;
    PO_MENSAJE := P_MENSAJE;
END;


/*=====================================================================================
   Objetivo            : Eli,ima modulos por perfil de  sistema
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_SISTEMAS_PER_MOD_ELIMINAR
(
  PI_ID_SISTEMA          TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.ID_SISTEMA %TYPE,
  PI_ID_PERFIL           TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.ID_PERFIL %TYPE,
  PI_ID_MODULO           TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO.ID_MODULO %TYPE,
  PO_VALIDO              OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE             OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
  P_MENSAJE             VARCHAR2(200) := '';
  P_CUENTA              INT := 0;
BEGIN
    PO_VALIDO := 0;
    SELECT
        COUNT(*)
        INTO P_CUENTA
    FROM
        TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO
    WHERE
        ID_PERFIL = PI_ID_PERFIL
        AND ID_SISTEMA = PI_ID_SISTEMA
        AND ID_MODULO = PI_ID_MODULO;
    IF P_CUENTA != 0 THEN
        DELETE FROM
             TRAMITE.SEG_D_SISTEMAS_PERFIL_MODULO
        WHERE
             ID_SISTEMA = PI_ID_SISTEMA
             AND ID_PERFIL = PI_ID_PERFIL
             AND ID_MODULO IN (SELECT
                                   M.ID_SISTEMA_MODULO
                               FROM
                                   TRAMITE.SEG_D_SISTEMAS_MODULO M
                               WHERE
                                   M.ID_SISTEMA = PI_ID_SISTEMA
                                   AND (M.ID_SISTEMA_MODULO = PI_ID_MODULO OR M.ID_SISTEMA_MODULO_PADRE = PI_ID_MODULO));
        PO_VALIDO := 1;
    ELSE
        P_MENSAJE := 'El modulo seleccionado ya no existe';
    END IF;
    PO_MENSAJE := P_MENSAJE;
END;



/*=====================================================================================
   Objetivo            : Inserta  perfiles del usuario para el sistema
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/


PROCEDURE USP_SISTEMAS_PER_USU_REGISTRAR
(
  PI_ID_SISTEMA          TRAMITE.SEG_R_USUARIO_PERFIL.ID_SISTEMA %TYPE,
  PI_ID_PERFIL           TRAMITE.SEG_R_USUARIO_PERFIL.ID_PERFIL %TYPE,
  PI_ID_USUARIO          TRAMITE.SEG_R_USUARIO_PERFIL.ID_USUARIO %TYPE,
  PI_ID_OFICINA          TRAMITE.SEG_R_USUARIO_PERFIL.ID_OFICINA %TYPE,
  PI_ID_CARGO            TRAMITE.SEG_R_USUARIO_PERFIL.ID_CARGO %TYPE,
  PI_FEC_ACTIVACION      VARCHAR2,
  PI_FEC_DESACTIVACION   VARCHAR2,
  PI_USU_CREACION        TRAMITE.SEG_R_USUARIO_PERFIL.USU_CREACION %TYPE,
  PI_IP_CREACION         TRAMITE.SEG_R_USUARIO_PERFIL.IP_CREACION %TYPE,
  PO_VALIDO              OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE             OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
  P_MENSAJE                    VARCHAR2(200) := '';
  P_CUENTA                     INT := 0;
  P_ID_SISTEMAS_PERFIL_USUARIO INT := 1;
BEGIN
    PO_VALIDO := 0;
    SELECT
        COUNT(*)
        INTO
        P_CUENTA
    FROM
        TRAMITE.SEG_R_USUARIO_PERFIL SPU
    WHERE
        SPU.ID_SISTEMA = PI_ID_SISTEMA
        AND SPU.ID_PERFIL = PI_ID_PERFIL
        AND SPU.ID_OFICINA = PI_ID_OFICINA
        AND SPU.ID_USUARIO = PI_ID_USUARIO;
    IF P_CUENTA = 0 THEN
        SELECT
            TRAMITE.SEQ_ID_SISTEMAS_PERFIL_USUARIO.NEXTVAL
            INTO
            P_ID_SISTEMAS_PERFIL_USUARIO
        FROM
            DUAL;
        INSERT INTO
          TRAMITE.SEG_R_USUARIO_PERFIL
          (
             ID_USUARIO_PERFIL,
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
             P_ID_SISTEMAS_PERFIL_USUARIO,
             PI_ID_SISTEMA,
             PI_ID_PERFIL,
             PI_ID_OFICINA,
             PI_ID_CARGO,
             TO_DATE(PI_FEC_ACTIVACION, 'DD/MM/YYYY') + 1/24,
             TO_DATE(PI_FEC_DESACTIVACION, 'DD/MM/YYYY') + 1/24,
             PI_ID_USUARIO,
             PI_USU_CREACION,
             PI_IP_CREACION
          );
        P_MENSAJE := P_ID_SISTEMAS_PERFIL_USUARIO;
        PO_VALIDO := 1;
    ELSE
        P_MENSAJE := 'El usuario, oficina y perfil ya existe';
    END IF;
    PO_MENSAJE := P_MENSAJE;
END;





/*=====================================================================================
   Objetivo            : Actualiza  perfiles del usuario para el sistema
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_SISTEMAS_PER_USU_ACTUALIZA
(
  PI_ID_SISTEMAS_PERFIL_USUARIO          TRAMITE.SEG_R_USUARIO_PERFIL.ID_USUARIO_PERFIL %TYPE,
  PI_ID_SISTEMA          TRAMITE.SEG_R_USUARIO_PERFIL.ID_SISTEMA %TYPE,
  PI_ID_PERFIL           TRAMITE.SEG_R_USUARIO_PERFIL.ID_PERFIL %TYPE,
  PI_ID_OFICINA          TRAMITE.SEG_R_USUARIO_PERFIL.ID_OFICINA %TYPE,
  PI_ID_CARGO            TRAMITE.SEG_R_USUARIO_PERFIL.ID_CARGO %TYPE,
  PI_FEC_ACTIVACION      VARCHAR2,
  PI_FEC_DESACTIVACION   VARCHAR2,
  PI_USU_MODIFICACION       TRAMITE.SEG_R_USUARIO_PERFIL.USU_MODIFICACION %TYPE,
  PI_IP_MODIFICACION         TRAMITE.SEG_R_USUARIO_PERFIL.IP_MODIFICACION %TYPE,
  PO_VALIDO              OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE             OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
  P_MENSAJE                    VARCHAR2(200) := '';
  P_CUENTA                     INT := 0;
  P_ID_USUARIO                 TRAMITE.SEG_R_USUARIO_PERFIL.ID_USUARIO %TYPE;
BEGIN
    PO_VALIDO := 0;
    SELECT
        SPU.ID_USUARIO
        INTO
        P_ID_USUARIO
    FROM
        TRAMITE.SEG_R_USUARIO_PERFIL SPU
    WHERE
        SPU.ID_USUARIO_PERFIL = PI_ID_SISTEMAS_PERFIL_USUARIO;


    SELECT
        COUNT(*)
        INTO
        P_CUENTA
    FROM
        TRAMITE.SEG_R_USUARIO_PERFIL SPU
    WHERE
        SPU.ID_SISTEMA = PI_ID_SISTEMA
        AND SPU.ID_PERFIL = PI_ID_PERFIL
        AND SPU.ID_OFICINA = PI_ID_OFICINA
        AND SPU.ID_CARGO = PI_ID_CARGO
        AND SPU.ID_USUARIO = P_ID_USUARIO
        AND SPU.ID_USUARIO_PERFIL != PI_ID_SISTEMAS_PERFIL_USUARIO;
    IF P_CUENTA = 0 THEN
        UPDATE
            TRAMITE.SEG_R_USUARIO_PERFIL
        SET
            ID_PERFIL = PI_ID_PERFIL,
            USU_MODIFICACION = PI_USU_MODIFICACION,
            FEC_MODIFICACION = SYSDATE,
            ID_OFICINA = PI_ID_OFICINA,
            ID_CARGO = PI_ID_CARGO,
            FEC_ACTIVACION = TO_DATE(PI_FEC_ACTIVACION,'DD/MM/YYYY') + 1/24,
            FEC_DESACTIVACION = TO_DATE(PI_FEC_DESACTIVACION,'DD/MM/YYYY') + 1/24,
            IP_MODIFICACION = PI_IP_MODIFICACION
        WHERE
            ID_SISTEMA = PI_ID_SISTEMA
            AND ID_USUARIO_PERFIL = PI_ID_SISTEMAS_PERFIL_USUARIO;
        PO_VALIDO := 1;
    ELSE
        P_MENSAJE := 'El usuario, oficina y perfil ya existe';
    END IF;
    PO_MENSAJE := P_MENSAJE;
END;



/*=====================================================================================
   Objetivo            : Cambia estado del usuario para el sistema                                         
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_SISTEMAS_PER_USU_ESTADO(
  PI_ID_SISTEMAS_PERFIL_USUARIO          TRAMITE.SEG_R_USUARIO_PERFIL.ID_USUARIO_PERFIL %TYPE,
  PI_FLG_ESTADO         TRAMITE.SEG_R_USUARIO_PERFIL.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.SEG_R_USUARIO_PERFIL.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_R_USUARIO_PERFIL.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE TRAMITE.SEG_R_USUARIO_PERFIL SET
           FLG_ESTADO = PI_FLG_ESTADO,
           USU_MODIFICACION= PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=PI_IP_MODIFICACION,
           FEC_MODIFICACION=SYSDATE
    WHERE ID_USUARIO_PERFIL = PI_ID_SISTEMAS_PERFIL_USUARIO;
    PO_VALIDO :=1;
END;

/*=====================================================================================
   Objetivo            : Elimina  usuario para el sistema     
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_SISTEMAS_PER_USU_ELIMINAR(
 PI_ID_SISTEMAS_PERFIL_USUARIO          TRAMITE.SEG_R_USUARIO_PERFIL.ID_USUARIO_PERFIL %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM  TRAMITE.SEG_R_USUARIO_PERFIL
    WHERE ID_USUARIO_PERFIL = PI_ID_SISTEMAS_PERFIL_USUARIO;
    PO_VALIDO :=1;
END;







/*=====================================================================================
   Objetivo            : Insertar datos de cargo
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_SEDE_INSERTAR(
  PI_DESC_SEDE      TRAMITE.SEG_M_SEDE.DESC_SEDE %TYPE,
  PI_DIRECCION      TRAMITE.SEG_M_SEDE.DIRECCION %TYPE,
  PI_TELEFONO      TRAMITE.SEG_M_SEDE.TELEFONO %TYPE,
  PI_CORREO               TRAMITE.SEG_M_SEDE.CORREO %TYPE,
  PI_PAGINAWEB_ENTIDAD    TRAMITE.SEG_M_SEDE.PAGINAWEB_ENTIDAD %TYPE,
  PI_PAGINAWEB_SECTOR     TRAMITE.SEG_M_SEDE.PAGINAWEB_SECTOR %TYPE,
  PI_IP_CREACION       TRAMITE.SEG_M_SEDE.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_M_SEDE.USU_CREACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
P_MENSAJE   VARCHAR2(200):= '';
BEGIN
    P_MENSAJE := '';

        SELECT
            NVL((
            SELECT
                CASE
                  WHEN UPPER(U.DESC_SEDE) = UPPER(RTRIM(PI_DESC_SEDE)) THEN
                      'La descripción ya existe'
                END
            FROM
                TRAMITE.SEG_M_SEDE U
            WHERE
                (
                 UPPER(U.DESC_SEDE) = UPPER(RTRIM(PI_DESC_SEDE))
                )
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN

            INSERT INTO
                TRAMITE.SEG_M_SEDE
                (
                  ID_SEDE,
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
                  SEQ_SEDE.NEXTVAL,
                  PI_DESC_SEDE,
                  PI_DIRECCION,
                  PI_TELEFONO, 
                  PI_CORREO, 
                  PI_PAGINAWEB_ENTIDAD, 
                  PI_PAGINAWEB_SECTOR,
                  '1',
                  PI_USUARIO_CREACION,
                  SYSDATE,
                  PI_IP_CREACION
                );

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;

END;



/*=====================================================================================
   Objetivo            : Actualiza datos cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_SEDE_ACTUALIZAR(
  PI_ID_SEDE          TRAMITE.SEG_M_SEDE.ID_SEDE %TYPE,
  PI_DESC_SEDE        TRAMITE.SEG_M_SEDE.DESC_SEDE %TYPE,
  PI_DIRECCION      TRAMITE.SEG_M_SEDE.DIRECCION %TYPE,
  PI_TELEFONO      TRAMITE.SEG_M_SEDE.TELEFONO %TYPE,
  PI_CORREO               TRAMITE.SEG_M_SEDE.CORREO %TYPE,
  PI_PAGINAWEB_ENTIDAD    TRAMITE.SEG_M_SEDE.PAGINAWEB_ENTIDAD %TYPE,
  PI_PAGINAWEB_SECTOR     TRAMITE.SEG_M_SEDE.PAGINAWEB_SECTOR %TYPE,
  PI_IP_MODIFICACION       TRAMITE.SEG_M_SEDE.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_SEDE.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
P_MENSAJE VARCHAR2(200):= '';
BEGIN
      SELECT
            NVL((
            SELECT
                CASE
                  WHEN UPPER(U.DESC_SEDE) = UPPER(RTRIM(PI_DESC_SEDE)) THEN
                      'La descripción ya existe'
                END
            FROM
               TRAMITE.SEG_M_SEDE U
            WHERE
                (
                 UPPER(U.DESC_SEDE) = UPPER(RTRIM(PI_DESC_SEDE))
                )
                AND U.ID_SEDE != PI_ID_SEDE
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN
            UPDATE
                TRAMITE.SEG_M_SEDE
            SET
                DESC_SEDE = RTRIM(PI_DESC_SEDE),
                DIRECCION = PI_DIRECCION, 
                TELEFONO = PI_TELEFONO, 
                CORREO = PI_CORREO, 
                PAGINAWEB_ENTIDAD = PI_PAGINAWEB_ENTIDAD,
                PAGINAWEB_SECTOR = PI_PAGINAWEB_SECTOR , 
                USU_MODIFICACION = PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = SYSDATE,
                IP_MODIFICACION = PI_IP_MODIFICACION
            WHERE
                ID_SEDE = PI_ID_SEDE;

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;
END;

/*=====================================================================================
   Objetivo            : Elimina cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_SEDE_ELIMINAR(
  PI_ID_SEDE          TRAMITE.SEG_M_SEDE.ID_SEDE %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM  TRAMITE.SEG_M_SEDE
    WHERE ID_SEDE = PI_ID_SEDE;
    PO_VALIDO :=1;
END;




/*=====================================================================================
   Objetivo            : Cambia estado cargo
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_SEDE_ESTADO(
  PI_ID_SEDE          TRAMITE.SEG_M_SEDE.ID_SEDE %TYPE,
  PI_FLG_ESTADO         TRAMITE.SEG_M_SEDE.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.SEG_M_SEDE.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_SEDE.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE TRAMITE.SEG_M_SEDE SET
           FLG_ESTADO = PI_FLG_ESTADO,
           USU_MODIFICACION= PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=PI_IP_MODIFICACION,
           FEC_MODIFICACION=SYSDATE
    WHERE ID_SEDE = PI_ID_SEDE;
    PO_VALIDO :=1;
END;



/*=====================================================================================
   Objetivo            : Insertar datos de ENTIDADEXTERNA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_ENTIDADEXTERNA_INSERTAR(
  PI_DESC_ENTIDAD      TRAMITE.TRA_L_ENTIDADES.DESC_ENTIDAD %TYPE,
  PI_RUC_ENTIDAD      TRAMITE.TRA_L_ENTIDADES.RUC_ENTIDAD %TYPE,
  PI_ABREVIACION_ENTIDAD      TRAMITE.TRA_L_ENTIDADES.ABREVIACION_ENTIDAD %TYPE,
  PI_DIRECCION_ENTIDAD               TRAMITE.TRA_L_ENTIDADES.DIRECCION_ENTIDAD %TYPE,
  PI_IP_CREACION       TRAMITE.TRA_L_ENTIDADES.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.TRA_L_ENTIDADES.USU_CREACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
P_MENSAJE   VARCHAR2(200):= '';
BEGIN
    P_MENSAJE := '';

        SELECT
            NVL((
            SELECT
                CASE
                  WHEN UPPER(U.DESC_ENTIDAD) = UPPER(RTRIM(PI_DESC_ENTIDAD)) THEN
                      'La descripción ya existe'
                END
            FROM
                TRAMITE.TRA_L_ENTIDADES U
            WHERE
                (
                 UPPER(U.DESC_ENTIDAD) = UPPER(RTRIM(PI_DESC_ENTIDAD))
                )
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN

            INSERT INTO
                TRAMITE.TRA_L_ENTIDADES
                (
                  ID_ENTIDAD,
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
                  SEQ_ENTIDADEXTERNA.NEXTVAL,
                  PI_DESC_ENTIDAD,
                  PI_RUC_ENTIDAD,
                  PI_ABREVIACION_ENTIDAD, 
                  PI_DIRECCION_ENTIDAD, 
                  '1',
                  PI_USUARIO_CREACION,
                  SYSDATE,
                  PI_IP_CREACION
                );

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;

END;



/*=====================================================================================
   Objetivo            : Actualiza datos ENTIDADEXTERNA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_ENTIDADEXTERNA_ACTUALIZAR(
  PI_ID_ENTIDAD          TRAMITE.TRA_L_ENTIDADES.ID_ENTIDAD %TYPE,
  PI_DESC_ENTIDAD      TRAMITE.TRA_L_ENTIDADES.DESC_ENTIDAD %TYPE,
  PI_RUC_ENTIDAD      TRAMITE.TRA_L_ENTIDADES.RUC_ENTIDAD %TYPE,
  PI_ABREVIACION_ENTIDAD      TRAMITE.TRA_L_ENTIDADES.ABREVIACION_ENTIDAD %TYPE,
  PI_DIRECCION_ENTIDAD               TRAMITE.TRA_L_ENTIDADES.DIRECCION_ENTIDAD %TYPE,
  PI_IP_MODIFICACION       TRAMITE.TRA_L_ENTIDADES.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.TRA_L_ENTIDADES.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
P_MENSAJE VARCHAR2(200):= '';
BEGIN
      SELECT
            NVL((
            SELECT
                CASE
                  WHEN UPPER(U.DESC_ENTIDAD) = UPPER(RTRIM(PI_DESC_ENTIDAD)) THEN
                      'La descripción ya existe'
                END
            FROM
               TRAMITE.TRA_L_ENTIDADES U
            WHERE
                (
                 UPPER(U.DESC_ENTIDAD) = UPPER(RTRIM(PI_DESC_ENTIDAD))
                )
                AND U.ID_ENTIDAD != PI_ID_ENTIDAD
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN
            UPDATE
                TRAMITE.TRA_L_ENTIDADES
            SET
                DESC_ENTIDAD = RTRIM(PI_DESC_ENTIDAD),
                RUC_ENTIDAD = PI_RUC_ENTIDAD, 
                ABREVIACION_ENTIDAD = PI_ABREVIACION_ENTIDAD, 
                DIRECCION_ENTIDAD = PI_DIRECCION_ENTIDAD,  
                USU_MODIFICACION = PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = SYSDATE,
                IP_MODIFICACION = PI_IP_MODIFICACION
            WHERE
                ID_ENTIDAD = PI_ID_ENTIDAD;

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;
END;

/*=====================================================================================
   Objetivo            : Elimina ENTIDADEXTERNA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_ENTIDADEXTERNA_ELIMINAR(
  PI_ID_ENTIDAD          TRAMITE.TRA_L_ENTIDADES.ID_ENTIDAD %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM  TRAMITE.TRA_L_ENTIDADES
    WHERE ID_ENTIDAD = PI_ID_ENTIDAD;
    PO_VALIDO :=1;
END;




/*=====================================================================================
   Objetivo            : Cambia estado ENTIDADEXTERNA
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_ENTIDADEXTERNA_ESTADO(
  PI_ID_ENTIDAD          TRAMITE.TRA_L_ENTIDADES.ID_ENTIDAD %TYPE,
  PI_FLG_ESTADO         TRAMITE.TRA_L_ENTIDADES.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.TRA_L_ENTIDADES.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.TRA_L_ENTIDADES.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE TRAMITE.TRA_L_ENTIDADES SET
           FLG_ESTADO = PI_FLG_ESTADO,
           USU_MODIFICACION= PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=PI_IP_MODIFICACION,
           FEC_MODIFICACION=SYSDATE
    WHERE ID_ENTIDAD = PI_ID_ENTIDAD;
    PO_VALIDO :=1;
END;



/*=====================================================================================
   Objetivo            : Insertar datos de PLANTILLA
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_PLANTILLA_INSERTAR(
  --PI_DESC_PLANTILLA    TRAMITE.TRA_M_PLANTILLA.DESC_PLANTILLA %TYPE,
  PI_ID_TIPO_DOCUMENTO   TRAMITE.TRA_M_PLANTILLA.ID_TIPO_DOCUMENTO %TYPE,
  PI_CODIGO_DOCUMENTO    TRAMITE.TRA_M_PLANTILLA.CODIGO_DOCUMENTO %TYPE,
  PI_NOMBRE_DOCUMENTO    TRAMITE.TRA_M_PLANTILLA.NOMBRE_DOCUMENTO %TYPE,
  PI_EXTENSION_DOCUMENTO   TRAMITE.TRA_M_PLANTILLA.EXTENSION_DOCUMENTO %TYPE ,
  PI_IP_CREACION       TRAMITE.TRA_M_PLANTILLA.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.TRA_M_PLANTILLA.USU_CREACION %TYPE,
  PO_ID_PLANTILLA            OUT NUMBER,  -- 
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
P_MENSAJE   VARCHAR2(200):= '';
BEGIN
    P_MENSAJE := '';

        SELECT
            NVL((
            SELECT
                CASE
                --  WHEN UPPER(U.DESC_PLANTILLA) = UPPER(RTRIM(PI_DESC_PLANTILLA)) THEN
                --      'La descripción ya existe'
                  WHEN UPPER(U.ID_TIPO_DOCUMENTO) = UPPER(RTRIM(PI_ID_TIPO_DOCUMENTO)) THEN
                      'ya existe una configuración para este tipo de  documento'  
                END
            FROM
                TRAMITE.TRA_M_PLANTILLA U
            WHERE
                (
               --  UPPER(U.DESC_PLANTILLA) = UPPER(RTRIM(PI_DESC_PLANTILLA))            
                  UPPER(U.ID_TIPO_DOCUMENTO) = UPPER(RTRIM(PI_ID_TIPO_DOCUMENTO))
                )
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN
            PO_ID_PLANTILLA := SEQ_PLANTILLA.NEXTVAL; 
            INSERT INTO
                TRAMITE.TRA_M_PLANTILLA
                (
                  ID_PLANTILLA,
              --    DESC_PLANTILLA,
                  ID_TIPO_DOCUMENTO,
                  CODIGO_DOCUMENTO,
                  NOMBRE_DOCUMENTO,
                  EXTENSION_DOCUMENTO,                 
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  PO_ID_PLANTILLA,
              --    PI_DESC_PLANTILLA,
                  PI_ID_TIPO_DOCUMENTO,
                  PI_CODIGO_DOCUMENTO,
                  PI_NOMBRE_DOCUMENTO, 
                  PI_EXTENSION_DOCUMENTO, 
                  '1',
                  PI_USUARIO_CREACION,
                  SYSDATE,
                  PI_IP_CREACION
                );

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;

END;





/*=====================================================================================
   Objetivo            : Actualiza datos plantilla
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_PLANTILLA_ACTUALIZAR(
  PI_ID_PLANTILLA           TRAMITE.TRA_M_PLANTILLA.ID_PLANTILLA %TYPE,
 -- PI_DESC_PLANTILLA      TRAMITE.TRA_M_PLANTILLA.DESC_PLANTILLA %TYPE,
  PI_ID_TIPO_DOCUMENTO   TRAMITE.TRA_M_PLANTILLA.ID_TIPO_DOCUMENTO %TYPE,
  PI_CODIGO_DOCUMENTO    TRAMITE.TRA_M_PLANTILLA.CODIGO_DOCUMENTO %TYPE,
  PI_NOMBRE_DOCUMENTO    TRAMITE.TRA_M_PLANTILLA.NOMBRE_DOCUMENTO %TYPE,
  PI_EXTENSION_DOCUMENTO   TRAMITE.TRA_M_PLANTILLA.EXTENSION_DOCUMENTO %TYPE ,
  PI_IP_MODIFICACION       TRAMITE.TRA_M_PLANTILLA.IP_MODIFICACION  %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.TRA_M_PLANTILLA.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
--P_CUENTA  INT:= 0;
P_MENSAJE VARCHAR2(200):= '';
BEGIN
      SELECT
            NVL((
            SELECT
                CASE
               --   WHEN UPPER(U.DESC_PLANTILLA) = UPPER(RTRIM(PI_DESC_PLANTILLA)) THEN
              --        'La descripción ya existe'
                  WHEN UPPER(U.ID_TIPO_DOCUMENTO) = UPPER(RTRIM(PI_ID_TIPO_DOCUMENTO)) THEN
                      'ya existe una configuración para este tipo de  documento'  
                END
            FROM
               TRAMITE.TRA_M_PLANTILLA U
            WHERE
                (
                -- UPPER(U.DESC_PLANTILLA) = UPPER(RTRIM(PI_DESC_PLANTILLA))
                   UPPER(U.ID_TIPO_DOCUMENTO) = UPPER(RTRIM(PI_ID_TIPO_DOCUMENTO))
                )
                AND U.ID_PLANTILLA != PI_ID_PLANTILLA
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN
            UPDATE
                TRAMITE.TRA_M_PLANTILLA
            SET
              --  DESC_PLANTILLA = PI_DESC_PLANTILLA,
                ID_TIPO_DOCUMENTO = ID_TIPO_DOCUMENTO,
                CODIGO_DOCUMENTO = PI_CODIGO_DOCUMENTO,
                NOMBRE_DOCUMENTO = PI_NOMBRE_DOCUMENTO,
                EXTENSION_DOCUMENTO = PI_EXTENSION_DOCUMENTO,
                USU_MODIFICACION = PI_USUARIO_MODIFICACION,
                FEC_MODIFICACION = SYSDATE,
                IP_MODIFICACION = PI_IP_MODIFICACION
            WHERE
                ID_PLANTILLA = PI_ID_PLANTILLA;
                
        DELETE FROM
               TRA_D_PLANTILLA_CAMPO
          WHERE
              ID_PLANTILLA = PI_ID_PLANTILLA;

            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;
END;



/*=====================================================================================
   Objetivo            : Elimina plantilla
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_PLANTILLA_ELIMINAR(
  PI_ID_PLANTILLA          TRAMITE.TRA_M_PLANTILLA.ID_PLANTILLA %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM  TRAMITE.TRA_M_PLANTILLA
    WHERE ID_PLANTILLA = PI_ID_PLANTILLA;
    
    DELETE FROM  TRAMITE.TRA_D_PLANTILLA_CAMPO
    WHERE ID_PLANTILLA = PI_ID_PLANTILLA;
    
    PO_VALIDO :=1;
END;




/*=====================================================================================
   Objetivo            : Cambia estado plantilla
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_PLANTILLA_ESTADO(
  PI_ID_PLANTILLA          TRAMITE.TRA_M_PLANTILLA.ID_PLANTILLA %TYPE,
  PI_FLG_ESTADO         TRAMITE.TRA_M_PLANTILLA.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.TRA_M_PLANTILLA.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.TRA_M_PLANTILLA.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE TRAMITE.TRA_M_PLANTILLA SET
           FLG_ESTADO = PI_FLG_ESTADO,
           USU_MODIFICACION= PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=PI_IP_MODIFICACION,
           FEC_MODIFICACION=SYSDATE
    WHERE ID_PLANTILLA = PI_ID_PLANTILLA;
    PO_VALIDO :=1;
END;



/*=====================================================================================
   Objetivo            : Insertar datos de PLANTILLA CAMPO 
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_PLANTILLA_CAMPO_INSERTAR(
  PI_ID_PLANTILLA    TRAMITE.TRA_D_PLANTILLA_CAMPO.ID_PLANTILLA %TYPE,
  PI_ID_CAMPO  TRAMITE.TRA_D_PLANTILLA_CAMPO.ID_CAMPO %TYPE,
  PI_ORDEN    TRAMITE.TRA_D_PLANTILLA_CAMPO.ORDEN %TYPE,
  PI_FLG_ESTADO   TRAMITE.TRA_D_PLANTILLA_CAMPO.FLG_ESTADO %TYPE,
  PI_IP_CREACION   TRAMITE.TRA_D_PLANTILLA_CAMPO.IP_CREACION %TYPE,
  PI_USU_CREACION    TRAMITE.TRA_D_PLANTILLA_CAMPO.USU_CREACION %TYPE
)
AS
BEGIN
            INSERT INTO
                TRAMITE.TRA_D_PLANTILLA_CAMPO
                 (
                  ID_PLANTILLA_CAMPO,
                  ID_PLANTILLA,
                  ID_CAMPO,
                  ORDEN,        
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  SEQ_PLANTILLA_CAMPO.NEXTVAL,
                  PI_ID_PLANTILLA,
                  PI_ID_CAMPO,
                  PI_ORDEN,
                   PI_FLG_ESTADO,
                  PI_USU_CREACION,
                  SYSDATE,
                  PI_IP_CREACION
                );

END;





/*=====================================================================================
   Objetivo            : Insertar datos de OFICINAS PERMISO
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_OFICINAPERMISO_INSERTAR(
  PI_ID_OFICINA_ORIGEN        TRAMITE.SEG_M_OFICINA_PERMISO.ID_OFICINA_ORIGEN %TYPE,
  PI_ID_OFICINA_DESTINO       TRAMITE.SEG_M_OFICINA_PERMISO.ID_OFICINA_DESTINO %TYPE,  
  PI_IP_CREACION       TRAMITE.SEG_M_OFICINA_PERMISO.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_M_OFICINA_PERMISO.USU_CREACION %TYPE,
  PO_IDRETORNO           OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_VALIDO            OUT NUMBER -- 0 : HAY ERROR , 1 : NO HAY ERROR
 
)
AS
BEGIN
           PO_IDRETORNO := SEQ_OFICINAPERMISO.NEXTVAL; 
            INSERT INTO
                TRAMITE.SEG_M_OFICINA_PERMISO
                (
                  ID_OFICINA_PERMISO,
                  ID_OFICINA_ORIGEN,
                  ID_OFICINA_DESTINO,
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  PO_IDRETORNO,
                  PI_ID_OFICINA_ORIGEN,
                  PI_ID_OFICINA_DESTINO,
                  '1',
                  PI_USUARIO_CREACION,
                  SYSDATE,
                  PI_IP_CREACION
                );
            PO_VALIDO  := 1;
END;


/*=====================================================================================
   Objetivo            : Insertar datos de OFICINAS filtros
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_OFICINAFILTROS_INSERTAR(
  PI_ID_OFICINA_PERMISO        TRAMITE.SEG_D_OFICINA_FILTROS.ID_OFICINA_PERMISO %TYPE,
  PI_ID_OFICINA      TRAMITE.SEG_D_OFICINA_FILTROS.ID_OFICINA %TYPE,  
  PI_ID_TAREA       TRAMITE.SEG_D_OFICINA_FILTROS.ID_TAREA %TYPE,  
  PI_IP_CREACION       TRAMITE.SEG_D_OFICINA_FILTROS.IP_CREACION %TYPE,
  PI_USUARIO_CREACION  TRAMITE.SEG_D_OFICINA_FILTROS.USU_CREACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
            INSERT INTO
                TRAMITE.SEG_D_OFICINA_FILTROS
                (
                  ID_OFICINA_FILTRO,
                  ID_OFICINA_PERMISO,
                  ID_OFICINA,
                  ID_TAREA,            
                  FLG_ESTADO,
                  USU_CREACION,
                  FEC_CREACION,
                  IP_CREACION
                )
                VALUES
                (
                  SEQ_OFICINAFILTRO.NEXTVAL,
                  PI_ID_OFICINA_PERMISO,
                  PI_ID_OFICINA,
                  PI_ID_TAREA,
                  '1',
                  PI_USUARIO_CREACION,
                  SYSDATE,
                  PI_IP_CREACION
                );
            PO_VALIDO  := 1;

END;




/*=====================================================================================
   Objetivo            : valida datos de OFICINAS PERMISO
   Autor               : RC : Ivan Perez Tintaya
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/

PROCEDURE USP_VALIDAROFIPERMISO_INSERTAR(
  PI_ID_OFICINA_ORIGEN        TRAMITE.SEG_M_OFICINA_PERMISO.ID_OFICINA_ORIGEN %TYPE,
  PO_VALIDO            OUT NUMBER,  -- 0 : HAY ERROR , 1 : NO HAY ERROR
  PO_MENSAJE           OUT VARCHAR2 -- MENSAJE DEL ERROR
)
AS
P_MENSAJE   VARCHAR2(200):= '';
BEGIN
    P_MENSAJE := '';

        SELECT
            NVL((
            SELECT
                CASE
                  WHEN UPPER(U.ID_OFICINA_ORIGEN) = UPPER(RTRIM(PI_ID_OFICINA_ORIGEN)) THEN
                      'Ya existe una configuración para la oficina de origen'
                      
                END
            FROM
                TRAMITE.SEG_M_OFICINA_PERMISO U
            WHERE
                (
                 UPPER(U.ID_OFICINA_ORIGEN) = UPPER(RTRIM(PI_ID_OFICINA_ORIGEN))
                )
                AND ROWNUM = 1
            ),'-')
            INTO
            P_MENSAJE
        FROM DUAL;

        IF P_MENSAJE = '-' THEN 
            PO_VALIDO  := 1;
        ELSE
            PO_VALIDO  := 0;
        END IF;
    PO_MENSAJE := P_MENSAJE;

END;



/*=====================================================================================
   Objetivo            : Elimina destinos de oficina
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_OFICINADESTINOS_ELIMINAR(
  PI_ID_OFICINA_PERMISO          TRAMITE.SEG_M_OFICINA_PERMISO.ID_OFICINA_PERMISO %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM  TRAMITE.SEG_M_OFICINA_PERMISO
    WHERE ID_OFICINA_PERMISO = PI_ID_OFICINA_PERMISO;
    
     DELETE FROM  TRAMITE.SEG_D_OFICINA_FILTROS
    WHERE ID_OFICINA_PERMISO = PI_ID_OFICINA_PERMISO;
    
    PO_VALIDO :=1;
END;



/*=====================================================================================
   Objetivo            : Elimina filtros de oficina
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_OFICINAFILTROS_ELIMINAR(
  PI_ID_OFICINA_FILTRO          TRAMITE.SEG_D_OFICINA_FILTROS.ID_OFICINA_FILTRO %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    DELETE FROM  TRAMITE.SEG_D_OFICINA_FILTROS
    WHERE ID_OFICINA_FILTRO = PI_ID_OFICINA_FILTRO;    
    PO_VALIDO :=1;
END;




/*=====================================================================================
   Objetivo            : Elimina oficina permisos
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_OFICINAPERMISO_ELIMINAR(
  PI_ID_OFICINA_ORIGEN         TRAMITE.SEG_M_OFICINA_PERMISO.ID_OFICINA_ORIGEN %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN

   DELETE FROM  TRAMITE.SEG_D_OFICINA_FILTROS F
   WHERE F.ID_OFICINA_PERMISO IN ( SELECT ID_OFICINA_PERMISO FROM  SEG_M_OFICINA_PERMISO WHERE ID_OFICINA_ORIGEN = PI_ID_OFICINA_ORIGEN) ;
   DELETE FROM  TRAMITE.SEG_M_OFICINA_PERMISO
    
    WHERE ID_OFICINA_ORIGEN = PI_ID_OFICINA_ORIGEN;    
 

   PO_VALIDO :=1;
    
END;





/*=====================================================================================
   Objetivo            : Cambia estado oficina permiso
   Autor               : RC : Richard Carbajal Garcia
   Fecha Creacion      : 11/07/2019
  =====================================================================================*/
PROCEDURE USP_OFICINAPERMISO_ESTADO(
  PI_ID_OFICINA_ORIGEN          TRAMITE.SEG_M_OFICINA_PERMISO.ID_OFICINA_ORIGEN %TYPE,
  PI_FLG_ESTADO         TRAMITE.SEG_M_OFICINA_PERMISO.FLG_ESTADO %TYPE,
  PI_IP_MODIFICACION    TRAMITE.SEG_M_OFICINA_PERMISO.IP_MODIFICACION %TYPE,
  PI_USUARIO_MODIFICACION  TRAMITE.SEG_M_OFICINA_PERMISO.USU_MODIFICACION %TYPE,
  PO_VALIDO            OUT NUMBER  -- 0 : HAY ERROR , 1 : NO HAY ERROR
)
AS
BEGIN
    UPDATE TRAMITE.SEG_M_OFICINA_PERMISO SET
           FLG_ESTADO = PI_FLG_ESTADO,
           USU_MODIFICACION= PI_USUARIO_MODIFICACION,
           IP_MODIFICACION=PI_IP_MODIFICACION,
           FEC_MODIFICACION=SYSDATE
    WHERE ID_OFICINA_ORIGEN = PI_ID_OFICINA_ORIGEN;
    PO_VALIDO :=1;
END;



end PCK_ADMIN_MANTENIMIENTO;
/


--spool off
