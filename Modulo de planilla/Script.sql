--CREATE DATABASE Proyecto_V1
--GO

USE PROYECTO_V1
GO

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
