if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AREA') and o.name = 'FK_AREA_REFERENCE_PUESTO')
alter table AREA
   drop constraint FK_AREA_REFERENCE_PUESTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CALCULOS_CN') and o.name = 'FK_CALCULOS_REFERENCE_MESES')
alter table CALCULOS_CN
   drop constraint FK_CALCULOS_REFERENCE_MESES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CALCULOS_CN') and o.name = 'FK_CALCULOS_REFERENCE_NOMINA')
alter table CALCULOS_CN
   drop constraint FK_CALCULOS_REFERENCE_NOMINA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CALCULOS_CN') and o.name = 'FK_CALCULOS_REFERENCE_CONCEPTO')
alter table CALCULOS_CN
   drop constraint FK_CALCULOS_REFERENCE_CONCEPTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONCEPTOS') and o.name = 'FK_CONCEPTO_REFERENCE_CONCEPTO')
alter table CONCEPTOS
   drop constraint FK_CONCEPTO_REFERENCE_CONCEPTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONCEPTOS') and o.name = 'FK_CONCEPTO_REFERENCE_CONCEPTO')
alter table CONCEPTOS
   drop constraint FK_CONCEPTO_REFERENCE_CONCEPTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONCEPTO_NOMINA') and o.name = 'FK_CONCEPTO_REFERENCE_EMPLEADO')
alter table CONCEPTO_NOMINA
   drop constraint FK_CONCEPTO_REFERENCE_EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONCEPTO_NOMINA') and o.name = 'FK_CONCEPTO_REFERENCE_NOMINA')
alter table CONCEPTO_NOMINA
   drop constraint FK_CONCEPTO_REFERENCE_NOMINA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADOS') and o.name = 'FK_EMPLEADO_REFERENCE_DEPARTAM')
alter table EMPLEADOS
   drop constraint FK_EMPLEADO_REFERENCE_DEPARTAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADOS') and o.name = 'FK_EMPLEADO_REFERENCE_MARCACIO')
alter table EMPLEADOS
   drop constraint FK_EMPLEADO_REFERENCE_MARCACIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADOS') and o.name = 'FK_EMPLEADO_REFERENCE_ESTADO_E')
alter table EMPLEADOS
   drop constraint FK_EMPLEADO_REFERENCE_ESTADO_E
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADOS') and o.name = 'FK_EMPLEADO_REFERENCE_AREA')
alter table EMPLEADOS
   drop constraint FK_EMPLEADO_REFERENCE_AREA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADOS') and o.name = 'FK_EMPLEADO_REFERENCE_PUESTO')
alter table EMPLEADOS
   drop constraint FK_EMPLEADO_REFERENCE_PUESTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADOS') and o.name = 'FK_EMPLEADO_REFERENCE_NOMINA')
alter table EMPLEADOS
   drop constraint FK_EMPLEADO_REFERENCE_NOMINA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADOS') and o.name = 'FK_EMPLEADO_REFERENCE_EMPLEADO')
alter table EMPLEADOS
   drop constraint FK_EMPLEADO_REFERENCE_EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NOMINA_BANCO') and o.name = 'FK_NOMINA_B_REFERENCE_NOMINA')
alter table NOMINA_BANCO
   drop constraint FK_NOMINA_B_REFERENCE_NOMINA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NOMINA_BANCO') and o.name = 'FK_NOMINA_B_REFERENCE_EMPLEADO')
alter table NOMINA_BANCO
   drop constraint FK_NOMINA_B_REFERENCE_EMPLEADO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AREA')
            and   type = 'U')
   drop table AREA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CALCULOS_CN')
            and   type = 'U')
   drop table CALCULOS_CN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CONCEPTOS')
            and   type = 'U')
   drop table CONCEPTOS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CONCEPTO_FORMULA')
            and   type = 'U')
   drop table CONCEPTO_FORMULA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CONCEPTO_NOMINA')
            and   type = 'U')
   drop table CONCEPTO_NOMINA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DEPARTAMENTO')
            and   type = 'U')
   drop table DEPARTAMENTO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPLEADOS')
            and   type = 'U')
   drop table EMPLEADOS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPLEADO_CONCEPTO')
            and   type = 'U')
   drop table EMPLEADO_CONCEPTO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ESTADO_EMPLEADO')
            and   type = 'U')
   drop table ESTADO_EMPLEADO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MARCACIONES')
            and   type = 'U')
   drop table MARCACIONES
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MESES')
            and   type = 'U')
   drop table MESES
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NOMINA')
            and   type = 'U')
   drop table NOMINA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NOMINA_BANCO')
            and   type = 'U')
   drop table NOMINA_BANCO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PUESTO')
            and   type = 'U')
   drop table PUESTO
go

/*==============================================================*/
/* Table: AREA                                                  */
/*==============================================================*/
create table AREA (
   AREA                 varchar(10)          not null,
   ID_PUESTO            int                  null,
   DESCRIPCION          varchar(35)          null,
   constraint PK_AREA primary key (AREA)
)
go

/*==============================================================*/
/* Table: CALCULOS_CN                                           */
/*==============================================================*/
create table CALCULOS_CN (
   ID_NOMINA            int                  not null,
   ID_EMPLEADO          varchar(10)          not null,
   CONCEPTO             varchar(25)          not null,
   MES                  int                  not null,
   constraint PK_CALCULOS_CN primary key (ID_NOMINA, ID_EMPLEADO, CONCEPTO, MES)
)
go

/*==============================================================*/
/* Table: CONCEPTOS                                             */
/*==============================================================*/
create table CONCEPTOS (
   CONCEPTO             varchar(25)          not null,
   ID_NOMINA            int                  null,
   CON_CONCEPTO         varchar(25)          null,
   SECUENCIA            numeric              null,
   DESCRIPCION          varchar(45)          null,
   constraint PK_CONCEPTOS primary key (CONCEPTO)
)
go

/*==============================================================*/
/* Table: CONCEPTO_FORMULA                                      */
/*==============================================================*/
create table CONCEPTO_FORMULA (
   CONCEPTO             varchar(25)          not null,
   SECUENCIA            numeric              not null,
   CANTIDAD             numeric              null,
   MONTO                numeric              null,
   FORMULA              text                 null,
   USA_CANTIDAD         char                 null,
   USA_MONTO            char                 null,
   constraint PK_CONCEPTO_FORMULA primary key (CONCEPTO, SECUENCIA)
)
go

/*==============================================================*/
/* Table: CONCEPTO_NOMINA                                       */
/*==============================================================*/
create table CONCEPTO_NOMINA (
   CONCEPTO             varchar(25)          not null,
   ID_NOMINA            int                  not null,
   ID_EMPLEADO          varchar(10)          null,
   constraint PK_CONCEPTO_NOMINA primary key (CONCEPTO, ID_NOMINA)
)
go

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO (
   ID_DEPART            int                  not null,
   DEPARTAMENTO         varchar(25)          not null,
   constraint PK_DEPARTAMENTO primary key (ID_DEPART)
)
go

/*==============================================================*/
/* Table: EMPLEADOS                                             */
/*==============================================================*/
create table EMPLEADOS (
   ID_EMPLEADO          varchar(10)          not null,
   CONCEPTO             varchar(25)          null,
   NOMBRE_1             varbinary(15)        not null,
   NOMBRE_2             varchar(15)          null,
   APELLIDO_1           varchar(15)          not null,
   APELLIDO_2           varchar(15)          null,
   APELLIDO_3           varchar(15)          null,
   DUI                  varchar(10)          null,
   SEXO                 char(1)              null,
   TELEFONO             varchar(9)           null,
   E_MAIL               varchar(25)          null,
   DIRECCION            varbinary(100)       null,
   FECHA_INGRESO        date                 not null,
   FECHA_SALIDA         date                 null,
   SALARIO_REFERENCIA   numeric              not null,
   CUENTA_BANCO         varchar(20)          null,
   AREA                 varchar(10)          not null,
   ID_DEPART            int                  not null,
   ID_ESTADO            varchar(10)          not null,
   ID_PUESTO            int                  null,
   ID_NOMINA            int                  null,
   ID_MARCACION         int                  null,
   constraint PK_EMPLEADOS primary key (ID_EMPLEADO)
)
go

/*==============================================================*/
/* Table: EMPLEADO_CONCEPTO                                     */
/*==============================================================*/
create table EMPLEADO_CONCEPTO (
   ID_EMPLEADO          varchar(10)          not null,
   CONCEPTO             varchar(25)          not null,
   ACUMULADO            numeric              null,
   CANTIDAD             numeric              null,
   MONTO                numeric              null,
   CUOTAS               numeric              null,
   CUOTAS_APLICADAS     numeric              null,
   constraint PK_EMPLEADO_CONCEPTO primary key (ID_EMPLEADO, CONCEPTO)
)
go

/*==============================================================*/
/* Table: ESTADO_EMPLEADO                                       */
/*==============================================================*/
create table ESTADO_EMPLEADO (
   ID_ESTADO            varchar(10)          not null,
   ESTADO               varchar(25)          not null,
   constraint PK_ESTADO_EMPLEADO primary key (ID_ESTADO)
)
go

/*==============================================================*/
/* Table: MARCACIONES                                           */
/*==============================================================*/
create table MARCACIONES (
   ID_MARCACION         int                  not null,
   ID_EMPLEADO          varchar(10)          null,
   FECHA_MARCACION      date                 null,
   HORA_ENTRADA         time                 null,
   HORA_SALIDA          time                 null,
   constraint PK_MARCACIONES primary key (ID_MARCACION)
)
go

/*==============================================================*/
/* Table: MESES                                                 */
/*==============================================================*/
create table MESES (
   MES                  int                  not null,
   NOMBRE               varchar(9)           null,
   constraint PK_MESES primary key (MES)
)
go

/*==============================================================*/
/* Table: NOMINA                                                */
/*==============================================================*/
create table NOMINA (
   ID_NOMINA            int                  not null,
   DESCRIPCION          varchar(35)          null,
   CUENTA_CONTABLE      varchar(35)          null,
   constraint PK_NOMINA primary key (ID_NOMINA)
)
go

/*==============================================================*/
/* Table: NOMINA_BANCO                                          */
/*==============================================================*/
create table NOMINA_BANCO (
   ID_NOMINA            int                  not null,
   CUENTA_BANCO         varchar(20)          not null,
   ID_EMPLEADO          varchar(10)          null,
   constraint PK_NOMINA_BANCO primary key (ID_NOMINA, CUENTA_BANCO)
)
go

/*==============================================================*/
/* Table: PUESTO                                                */
/*==============================================================*/
create table PUESTO (
   ID_PUESTO            int                  not null,
   PUESTO               varchar(35)          not null,
   AREA                 varchar(10)          null,
   constraint PK_PUESTO primary key (ID_PUESTO)
)
go

alter table AREA
   add constraint FK_AREA_REFERENCE_PUESTO foreign key (ID_PUESTO)
      references PUESTO (ID_PUESTO)
go

alter table CALCULOS_CN
   add constraint FK_CALCULOS_REFERENCE_MESES foreign key (MES)
      references MESES (MES)
go

alter table CALCULOS_CN
   add constraint FK_CALCULOS_REFERENCE_NOMINA foreign key (ID_NOMINA)
      references NOMINA (ID_NOMINA)
go

alter table CALCULOS_CN
   add constraint FK_CALCULOS_REFERENCE_CONCEPTO foreign key (CONCEPTO)
      references CONCEPTOS (CONCEPTO)
go

alter table CONCEPTOS
   add constraint FK_CONCEPTO_REFERENCE_CONCEPTO foreign key (CON_CONCEPTO, SECUENCIA)
      references CONCEPTO_FORMULA (CONCEPTO, SECUENCIA)
go

alter table CONCEPTOS
   add constraint FK_CONCEPTO_REFERENCE_CONCEPTO foreign key (CONCEPTO, ID_NOMINA)
      references CONCEPTO_NOMINA (CONCEPTO, ID_NOMINA)
go

alter table CONCEPTO_NOMINA
   add constraint FK_CONCEPTO_REFERENCE_EMPLEADO foreign key (ID_EMPLEADO, CONCEPTO)
      references EMPLEADO_CONCEPTO (ID_EMPLEADO, CONCEPTO)
go

alter table CONCEPTO_NOMINA
   add constraint FK_CONCEPTO_REFERENCE_NOMINA foreign key (ID_NOMINA)
      references NOMINA (ID_NOMINA)
go

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_DEPARTAM foreign key (ID_DEPART)
      references DEPARTAMENTO (ID_DEPART)
go

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_MARCACIO foreign key (ID_MARCACION)
      references MARCACIONES (ID_MARCACION)
go

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_ESTADO_E foreign key (ID_ESTADO)
      references ESTADO_EMPLEADO (ID_ESTADO)
go

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_AREA foreign key (AREA)
      references AREA (AREA)
go

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_PUESTO foreign key (ID_PUESTO)
      references PUESTO (ID_PUESTO)
go

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_NOMINA foreign key (ID_NOMINA)
      references NOMINA (ID_NOMINA)
go

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_EMPLEADO foreign key (ID_EMPLEADO, CONCEPTO)
      references EMPLEADO_CONCEPTO (ID_EMPLEADO, CONCEPTO)
go

alter table NOMINA_BANCO
   add constraint FK_NOMINA_B_REFERENCE_NOMINA foreign key (ID_NOMINA)
      references NOMINA (ID_NOMINA)
go

alter table NOMINA_BANCO
   add constraint FK_NOMINA_B_REFERENCE_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADOS (ID_EMPLEADO)
go
