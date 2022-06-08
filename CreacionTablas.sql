/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL 
(
   SUC_ID               INTEGER              not null,
   SUC_NUMERO_CONTACTO VARCHAR2(13)         not null,
   SUC_DIRECCION        VARCHAR2(30)         not null,
   constraint PK_SUCURSAL primary key (SUC_ID)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE 
(
   CLI_ID               INTEGER              not null,
   SUC_ID               INTEGER,
   CLI_DNI              VARCHAR2(10)         not null,
   CLI_NOMBRE           VARCHAR2(20)         not null,
   CLI_APELLIDO         VARCHAR2(20)         not null,
   CLI_TELEFONO         VARCHAR2(13),
   CLI_EMAIL            VARCHAR2(50),
   constraint PK_CLIENTE primary key (CLI_ID),
   constraint FK_SUC_CLI foreign key (suc_id) REFERENCES sucursal(suc_id)
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO 
(
   EMP_ID               INTEGER              not null,
   SUC_ID               INTEGER,
   EMP_DNI              VARCHAR2(10)         not null,
   EMP_NOMBRE           VARCHAR2(20)         not null,
   EMP_APELLIDO         VARCHAR2(20)         not null,
   EMP_FECHA_NACIMIENTO DATE                 not null,
   EMP_FECHA_INGRESO    DATE                 not null,
   EMP_SALARIO_POR_HORA NUMBER(6,2)          not null,
   EMP_HORAS_TRABAJADAS NUMBER(6,2),
   EMP_HORAS_EXTRAS     NUMBER(6,2),
   EMP_DIRECCION        VARCHAR2(50)         not null,
   constraint PK_EMPLEADO primary key (EMP_ID),
   constraint FK_SUC_EMP foreign key (suc_id) references sucursal(suc_id)
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA 
(
   FAC_ID               INTEGER              not null,
   CLI_ID               INTEGER,
   EMP_ID               INTEGER,
   FAC_FECHA            DATE                 not null,
   FAC_DESCRIPCION      VARCHAR2(50)         not null,
   FAC_SUBTOTAL         NUMBER(6,2)         DEFAULT 0,
   FAC_IVA              NUMBER(6,2)         DEFAULT 0,
   FAC_TOTAL            NUMBER(6,2)         DEFAULT 0,
   constraint PK_FACTURA primary key (FAC_ID),
   constraint FK_CLI_FAC foreign key (cli_id) references cliente(cli_id),
   constraint FK_EMP_FAC foreign key (emp_id) references empleado(emp_id)
);

/*==============================================================*/
/* Table: TIPO_PRODUCTO                                         */
/*==============================================================*/
create table TIPO_PRODUCTO 
(
   TIP_PRO_ID           INTEGER              not null,
   TIP_PRO_NOMBRE       VARCHAR2(30)         not null,
   TIP_PRO_DESCRIPCION  VARCHAR2(50),
   constraint PK_TIPO_PRODUCTO primary key (TIP_PRO_ID)
);

/*==============================================================*/
/* Table: LABORATORIO                                           */
/*==============================================================*/
create table LABORATORIO 
(
   LAB_ID               INTEGER              not null,
   LAB_NOMBRE           VARCHAR2(20)         not null,
   LAB_SITIOWEB         VARCHAR2(20),
   LAB_REPRESENTANTE    VARCHAR2(20),
   LAB_TELEFONO         VARCHAR2(15)         not null,
   LAB_DIRECCION        CLOB,
   constraint PK_LABORATORIO primary key (LAB_ID)
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO 
(
   PRO_ID               INTEGER              not null,
   LAB_ID               INTEGER,
   TIP_PRO_ID           INTEGER,
   PRO_NOMBRE           VARCHAR2(30)         not null,
   PRO_PRECIO           NUMBER(6,2)          not null,
   PRO_VENCEFECHA       DATE                 not null,
   PRO_STOCK            INTEGER,
   constraint PK_PRODUCTO primary key (PRO_ID),
   constraint FK_LAB_PRO foreign key (lab_id) references laboratorio(lab_id)
);

/*==============================================================*/
/* Table: DETALLES                                              */
/*==============================================================*/
create table DETALLES 
(
   DET_ID               INTEGER              not null,
   PRO_ID               INTEGER,
   FAC_ID               INTEGER              not null,
   DET_PRODUCTO_CANTIDAD INTEGER              not null,
   DET_MONTO            NUMBER(6,2)          DEFAULT 0,
   constraint PK_DETALLES primary key (DET_ID),
   constraint FK_PRO_DET foreign key (pro_id) references producto(pro_id)
);

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR 
(
   PROV_ID              INTEGER              not null,
   SUC_ID               INTEGER,
   PROV_IDENTIFICACION  VARCHAR2(20),
   PROV_TELEFONO        VARCHAR2(13),
   PROV_DIRECCION       VARCHAR2(30),
   constraint PK_PROVEEDOR primary key (PROV_ID),
   constraint FK_SUC_PROV foreign key (suc_id) references sucursal(suc_id)
);