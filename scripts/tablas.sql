--------------------------------------------------------
-- Archivo creado  - sábado-abril-22-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table GAM_ACTIONS
--------------------------------------------------------

  CREATE TABLE "HR"."GAM_ACTIONS" 
   (	"ID_STRATEGY" NUMBER(10,0), 
	"ID_ACTION" NUMBER(10,0), 
	"TABLE_NAME" VARCHAR2(50 CHAR), 
	"OPERATION" VARCHAR2(10 CHAR), 
	"COLUMN_NAME" VARCHAR2(50 CHAR), 
	"REPETITIONS" NUMBER(2,0), 
	"ID_REWARD" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GAM_CELL
--------------------------------------------------------

  CREATE TABLE "HR"."GAM_CELL" 
   (	"ROW_KEY" NUMBER(10,0), 
	"COLUMN_NAME" VARCHAR2(50 CHAR), 
	"CELL_VALUE" VARCHAR2(100 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GAM_COLUMNS
--------------------------------------------------------

  CREATE TABLE "HR"."GAM_COLUMNS" 
   (	"COLUMN_NAME" VARCHAR2(50 CHAR), 
	"TABLE_NAME" VARCHAR2(50 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GAM_HISTORY
--------------------------------------------------------

  CREATE TABLE "HR"."GAM_HISTORY" 
   (	"ID_HISTORY" NUMBER(10,0), 
	"USER_ID" VARCHAR2(20 CHAR), 
	"OPERATION" VARCHAR2(20 CHAR), 
	"HISTORY_TS" TIMESTAMP (6), 
	"TABLE_NAME" VARCHAR2(50 CHAR), 
	"COLUMN_NAME" VARCHAR2(50 CHAR), 
	"REWARDED" VARCHAR2(1 CHAR) DEFAULT 'N'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GAM_LOG
--------------------------------------------------------

  CREATE TABLE "HR"."GAM_LOG" 
   (	"MSG_TEXT" VARCHAR2(500 BYTE), 
	"LOG_TS" TIMESTAMP (6) DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GAM_REWARD
--------------------------------------------------------

  CREATE TABLE "HR"."GAM_REWARD" 
   (	"ID_REWARD" NUMBER(10,0), 
	"REWARD_NAME" VARCHAR2(100 CHAR), 
	"DESCRIPTION" VARCHAR2(300 CHAR), 
	"IMAGE" VARCHAR2(100 CHAR), 
	"QUANTIFIABLE" VARCHAR2(1 CHAR) DEFAULT 'N', 
	"WEIGHT" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GAM_REWARDS_STATS
--------------------------------------------------------

  CREATE TABLE "HR"."GAM_REWARDS_STATS" 
   (	"ID_REWARDS_STATS" NUMBER(10,0), 
	"USER_ID" VARCHAR2(50 CHAR), 
	"STATS_TS" TIMESTAMP (6), 
	"ID_STRATEGY" NUMBER(10,0), 
	"ID_ACTION" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GAM_ROLES
--------------------------------------------------------

  CREATE TABLE "HR"."GAM_ROLES" 
   (	"ROLE_NAME" VARCHAR2(20 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GAM_ROWS
--------------------------------------------------------

  CREATE TABLE "HR"."GAM_ROWS" 
   (	"ROW_KEY" NUMBER(10,0), 
	"TABLE_NAME" VARCHAR2(50 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GAM_SCHEMA_ROLE
--------------------------------------------------------

  CREATE TABLE "HR"."GAM_SCHEMA_ROLE" 
   (	"SCHEMA_NAME" VARCHAR2(50 CHAR), 
	"ROLE_NAME" VARCHAR2(20 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GAM_SCHEMAS
--------------------------------------------------------

  CREATE TABLE "HR"."GAM_SCHEMAS" 
   (	"SCHEMA_NAME" VARCHAR2(50 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GAM_STRATEGY
--------------------------------------------------------

  CREATE TABLE "HR"."GAM_STRATEGY" 
   (	"ID_STRATEGY" NUMBER(10,0), 
	"STRATEGY_NAME" VARCHAR2(100 CHAR), 
	"DESCRIPTION" VARCHAR2(300 CHAR), 
	"SCHEMA_NAME" VARCHAR2(50 CHAR), 
	"IS_ACTIVE" VARCHAR2(1 CHAR) DEFAULT 'Y'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GAM_TABLES
--------------------------------------------------------

  CREATE TABLE "HR"."GAM_TABLES" 
   (	"TABLE_NAME" VARCHAR2(50 CHAR), 
	"SCHEMA" VARCHAR2(50 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GAM_USER_ROLE
--------------------------------------------------------

  CREATE TABLE "HR"."GAM_USER_ROLE" 
   (	"USER_ID" VARCHAR2(20 CHAR), 
	"ROLE_NAME" VARCHAR2(20 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GAM_USERS
--------------------------------------------------------

  CREATE TABLE "HR"."GAM_USERS" 
   (	"USER_ID" VARCHAR2(20 CHAR), 
	"PASS" VARCHAR2(50 CHAR), 
	"NAME" VARCHAR2(50 CHAR), 
	"LASTNAME" VARCHAR2(50 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.GAM_ACTIONS
SET DEFINE OFF;
Insert into HR.GAM_ACTIONS (ID_STRATEGY,ID_ACTION,TABLE_NAME,OPERATION,COLUMN_NAME,REPETITIONS,ID_REWARD) values ('3','21','Festividades','INSERT',null,'1','6');
Insert into HR.GAM_ACTIONS (ID_STRATEGY,ID_ACTION,TABLE_NAME,OPERATION,COLUMN_NAME,REPETITIONS,ID_REWARD) values ('3','3','Festividades','INSERT',null,'5','8');
REM INSERTING into HR.GAM_CELL
SET DEFINE OFF;
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('7','APELLIDOS','Castro');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('7','DIRECCION','Calle');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('7','NOMBRE','David');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('7','SALARIO','2000');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('44','Fecha','3/3/17');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('44','Lugar','Plaza del pueblo');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('44','Nombre','Fiesta de la patrona');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('44','Objetivo','Divertirsesss');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('82','Lugar',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('82','Nombre',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('82','Objetivo',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('83','Fecha',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('81','Fecha',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('81','Lugar',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('81','Nombre',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('81','Objetivo',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('82','Fecha',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('83','Lugar',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('83','Nombre',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('83','Objetivo',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('84','Fecha',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('84','Lugar',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('84','Nombre',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('84','Objetivo',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('85','Fecha',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('85','Lugar',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('85','Nombre',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('85','Objetivo',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('86','Fecha',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('86','Lugar',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('86','Nombre',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('86','Objetivo',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('87','Fecha',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('87','Lugar',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('87','Nombre',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('87','Objetivo',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('88','Fecha',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('88','Lugar',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('88','Nombre',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('88','Objetivo',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('89','Fecha',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('89','Lugar',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('89','Nombre',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('89','Objetivo',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('90','Fecha',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('90','Lugar',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('90','Nombre',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('90','Objetivo',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('91','Fecha',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('91','Lugar',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('91','Nombre',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('91','Objetivo',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('92','Fecha',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('92','Lugar',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('92','Nombre',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('92','Objetivo',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('1','NOMBRE','PERICO');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('1','APELLIDOS','EL DE LOS PALOTES');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('1','SALARIO','1000');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('1','DIRECCION','CALLE CUALQUIERA');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('2','NOMBRE','PEPE');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('2','APELLIDOS','RODRIGUEZ GALLARDO');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('2','SALARIO','2000');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('2','DIRECCION','URBANIZACION BONITA');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('3','NOMBRE','JUAN');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('3','APELLIDOS','MISMO3');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('3','SALARIO','3000');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('3','DIRECCION','AVENIDA LARGA');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('61','Fecha','dfdfd');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('61','Lugar','dfdfdf');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('61','Nombre','dfdfdf');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('61','Objetivo','dfdfdf');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('62','Fecha','s');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('62','Lugar','k');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('62','Nombre','k');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('62','Objetivo','d');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('63','Fecha','a');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('63','Lugar','b');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('63','Nombre','c');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('63','Objetivo','d');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('64','Fecha','j');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('64','Lugar','j');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('64','Nombre','j');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('64','Objetivo','g');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('65','Fecha','dd');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('65','Lugar','k');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('65','Nombre','k');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('65','Objetivo','k');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('66','Fecha','k');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('66','Lugar','k');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('66','Nombre','k');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('66','Objetivo','k');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('67','Fecha','d');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('67','Lugar','d');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('67','Nombre','d');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('67','Objetivo','d');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('68','Fecha','s');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('68','Lugar','s');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('68','Nombre','s');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('68','Objetivo','s');
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('69','Fecha',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('69','Lugar',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('69','Nombre',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('69','Objetivo',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('70','Fecha',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('70','Lugar',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('70','Nombre',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('70','Objetivo',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('71','Fecha',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('71','Lugar',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('71','Nombre',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('71','Objetivo',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('73','Fecha',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('73','Lugar',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('73','Nombre',null);
Insert into HR.GAM_CELL (ROW_KEY,COLUMN_NAME,CELL_VALUE) values ('73','Objetivo',null);
REM INSERTING into HR.GAM_COLUMNS
SET DEFINE OFF;
Insert into HR.GAM_COLUMNS (COLUMN_NAME,TABLE_NAME) values ('APELLIDOS','EMPLEADO');
Insert into HR.GAM_COLUMNS (COLUMN_NAME,TABLE_NAME) values ('CANTIDAD','SUELDO');
Insert into HR.GAM_COLUMNS (COLUMN_NAME,TABLE_NAME) values ('DIRECCION','EMPLEADO');
Insert into HR.GAM_COLUMNS (COLUMN_NAME,TABLE_NAME) values ('Fecha','Festividades');
Insert into HR.GAM_COLUMNS (COLUMN_NAME,TABLE_NAME) values ('Lugar','Festividades');
Insert into HR.GAM_COLUMNS (COLUMN_NAME,TABLE_NAME) values ('NOMBRE','EMPLEADO');
Insert into HR.GAM_COLUMNS (COLUMN_NAME,TABLE_NAME) values ('Nombre','Festividades');
Insert into HR.GAM_COLUMNS (COLUMN_NAME,TABLE_NAME) values ('NombreProveedor','Proveedores');
Insert into HR.GAM_COLUMNS (COLUMN_NAME,TABLE_NAME) values ('Objetivo','Festividades');
Insert into HR.GAM_COLUMNS (COLUMN_NAME,TABLE_NAME) values ('SALARIO','EMPLEADO');
Insert into HR.GAM_COLUMNS (COLUMN_NAME,TABLE_NAME) values ('columna1','tabla1');
Insert into HR.GAM_COLUMNS (COLUMN_NAME,TABLE_NAME) values ('columna2','tabla1');
REM INSERTING into HR.GAM_HISTORY
SET DEFINE OFF;
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('1','admin','INSERT',to_timestamp('10/04/17 12:31:34,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'N');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('2','admin','INSERT',to_timestamp('10/04/17 12:31:34,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'N');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('3','admin','INSERT',to_timestamp('10/04/17 12:31:34,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'N');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('4','admin','INSERT',to_timestamp('10/04/17 12:31:34,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'N');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('5','admin','UPDATE',to_timestamp('10/04/17 12:33:36,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'N');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('6','admin','INSERT',to_timestamp('10/04/17 12:38:39,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'N');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('41','david_castro','INSERT',to_timestamp('22/04/17 11:24:01,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('42','david_castro','INSERT',to_timestamp('22/04/17 11:33:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('43','david_castro','INSERT',to_timestamp('22/04/17 11:46:58,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('44','david_castro','INSERT',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('45','david_castro','INSERT',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('46','david_castro','INSERT',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('47','david_castro','INSERT',to_timestamp('22/04/17 12:44:35,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('48','david_castro','INSERT',to_timestamp('22/04/17 12:48:19,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('49','david_castro','INSERT',to_timestamp('22/04/17 12:49:58,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('50','david_castro','INSERT',to_timestamp('22/04/17 12:57:56,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('51','david_castro','INSERT',to_timestamp('22/04/17 12:59:07,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('52','david_castro','INSERT',to_timestamp('22/04/17 12:59:32,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('22','admin','DELETE',to_timestamp('12/04/17 10:56:10,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'N');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('23','david_castro','INSERT',to_timestamp('12/04/17 11:22:11,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('24','david_castro','INSERT',to_timestamp('12/04/17 14:04:06,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('25','david_castro','INSERT',to_timestamp('12/04/17 14:05:27,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('27','david_castro','INSERT',to_timestamp('12/04/17 14:14:57,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('28','david_castro','INSERT',to_timestamp('12/04/17 14:15:58,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('29','david_castro','INSERT',to_timestamp('12/04/17 14:16:51,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('30','david_castro','INSERT',to_timestamp('12/04/17 14:19:08,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('31','david_castro','INSERT',to_timestamp('12/04/17 14:20:08,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('32','david_castro','INSERT',to_timestamp('12/04/17 14:21:49,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('33','david_castro','INSERT',to_timestamp('12/04/17 14:25:01,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('34','david_castro','INSERT',to_timestamp('12/04/17 14:25:56,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
Insert into HR.GAM_HISTORY (ID_HISTORY,USER_ID,OPERATION,HISTORY_TS,TABLE_NAME,COLUMN_NAME,REWARDED) values ('35','david_castro','INSERT',to_timestamp('12/04/17 14:30:15,000000000','DD/MM/RR HH24:MI:SSXFF'),'Festividades',null,'S');
REM INSERTING into HR.GAM_LOG
SET DEFINE OFF;
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('ENTERED TRIGGER,INSERT,Festividades,,david_castro',to_timestamp('22/04/17 11:24:01,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('1',to_timestamp('22/04/17 11:24:01,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('Error -4091-ORA-04091: table HR.GAM_HISTORY is mutating, trigger/function may not see it',to_timestamp('22/04/17 11:24:01,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('ENTERED TRIGGER,INSERT,Festividades,,david_castro',to_timestamp('22/04/17 11:33:00,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('1',to_timestamp('22/04/17 11:33:00,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('2',to_timestamp('22/04/17 11:33:00,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('3',to_timestamp('22/04/17 11:33:00,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('C_NOT_REWARDED: 0',to_timestamp('22/04/17 11:33:00,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('ENTERED TRIGGER,INSERT,Festividades,nula,david_castro',to_timestamp('22/04/17 11:46:58,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('1',to_timestamp('22/04/17 11:46:58,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('2',to_timestamp('22/04/17 11:46:58,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('3',to_timestamp('22/04/17 11:46:58,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('C_NOT_REWARDED: 0',to_timestamp('22/04/17 11:46:58,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('ENTERED TRIGGER,INSERT,Festividades,nula,david_castro',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('1',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('INSIDE IF: NOT_REWARDED: 15',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:09:43,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('ENTERED TRIGGER,INSERT,Festividades,nula,david_castro',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('INSIDE IF: NOT_REWARDED: 16',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('ENTERED TRIGGER',to_timestamp('12/04/17 14:19:08,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('ENTERED TRIGGER',to_timestamp('12/04/17 14:20:08,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('ENTERED TRIGGER,INSERT,Festividades,,david_castro',to_timestamp('12/04/17 14:21:49,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('ENTERED TRIGGER,INSERT,Festividades,,david_castro',to_timestamp('12/04/17 14:25:01,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('ENTERED TRIGGER,INSERT,Festividades,,david_castro',to_timestamp('12/04/17 14:25:56,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('1',to_timestamp('12/04/17 14:25:56,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('ENTERED TRIGGER,INSERT,Festividades,,david_castro',to_timestamp('12/04/17 14:30:15,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('1',to_timestamp('12/04/17 14:30:15,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('Error -4091-ORA-04091: table HR.GAM_HISTORY is mutating, trigger/function may not see it',to_timestamp('12/04/17 14:30:15,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 5',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 5',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 5',to_timestamp('22/04/17 12:13:28,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('ENTERED TRIGGER,INSERT,Festividades,nula,david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('INSIDE IF: NOT_REWARDED: 17',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 1',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 5',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 5',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
      SET GH.REWARDED = ''S''
      WHERE GH.OPERATION = INSERT
      AND GH.REWARDED = ''N''
      AND GH.TABLE_NAME = Festividades
      AND GH.USER_ID = david_castro
      AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
      AND ROWNUM <= 5',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('insert recompensa',to_timestamp('22/04/17 12:44:35,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('update recompensa',to_timestamp('22/04/17 12:44:35,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('UPDATE GAM_HISTORY GH
        SET GH.REWARDED = ''S''
        WHERE GH.OPERATION = INSERT
        AND GH.REWARDED = ''N''
        AND GH.TABLE_NAME = Festividades
        AND GH.USER_ID = david_castro
        AND NVL(GH.COLUMN_NAME,''#'') = NVL(,''#'')
        AND ROWNUM <= 1',to_timestamp('22/04/17 12:44:35,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('V_REWARDS_TO_INSERT2',to_timestamp('22/04/17 12:49:58,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('counter1',to_timestamp('22/04/17 12:49:58,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('counter2',to_timestamp('22/04/17 12:49:58,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('V_REWARDS_TO_INSERT2',to_timestamp('22/04/17 12:59:07,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('counter1',to_timestamp('22/04/17 12:59:07,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('counter2',to_timestamp('22/04/17 12:59:07,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('V_REWARDS_TO_INSERT1',to_timestamp('22/04/17 12:59:32,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into HR.GAM_LOG (MSG_TEXT,LOG_TS) values ('counter1',to_timestamp('22/04/17 12:59:32,000000000','DD/MM/RR HH24:MI:SSXFF'));
REM INSERTING into HR.GAM_REWARD
SET DEFINE OFF;
Insert into HR.GAM_REWARD (ID_REWARD,REWARD_NAME,DESCRIPTION,IMAGE,QUANTIFIABLE,WEIGHT) values ('6','Recompensa prueba David','Esta es la descripción de la recompensa de prueba','prueba','Y','7');
Insert into HR.GAM_REWARD (ID_REWARD,REWARD_NAME,DESCRIPTION,IMAGE,QUANTIFIABLE,WEIGHT) values ('8','recompensa 2',null,'2','N','2');
REM INSERTING into HR.GAM_REWARDS_STATS
SET DEFINE OFF;
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('1','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('2','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('3','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('4','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('5','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('6','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('7','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('8','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('9','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('10','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('11','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('12','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('13','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('14','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('15','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('16','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('17','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('18','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','3');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('19','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','3');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('20','david_castro',to_timestamp('22/04/17 12:19:44,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','3');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('21','david_castro',to_timestamp('22/04/17 12:44:35,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('22','david_castro',to_timestamp('22/04/17 12:49:58,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('23','david_castro',to_timestamp('22/04/17 12:49:58,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('24','david_castro',to_timestamp('22/04/17 12:59:07,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('25','david_castro',to_timestamp('22/04/17 12:59:07,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
Insert into HR.GAM_REWARDS_STATS (ID_REWARDS_STATS,USER_ID,STATS_TS,ID_STRATEGY,ID_ACTION) values ('26','david_castro',to_timestamp('22/04/17 12:59:32,000000000','DD/MM/RR HH24:MI:SSXFF'),'3','21');
REM INSERTING into HR.GAM_ROLES
SET DEFINE OFF;
Insert into HR.GAM_ROLES (ROLE_NAME) values ('ROL_ADMIN');
Insert into HR.GAM_ROLES (ROLE_NAME) values ('ROL_AYUNTAMIENTO');
Insert into HR.GAM_ROLES (ROLE_NAME) values ('ROL_HR');
Insert into HR.GAM_ROLES (ROLE_NAME) values ('ROL_PRUEBA1');
Insert into HR.GAM_ROLES (ROLE_NAME) values ('ROL_PRUEBA2');
REM INSERTING into HR.GAM_ROWS
SET DEFINE OFF;
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('7','EMPLEADO');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('44','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('83','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('81','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('82','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('84','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('85','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('86','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('87','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('88','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('89','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('90','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('91','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('92','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('1','EMPLEADO');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('2','EMPLEADO');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('3','EMPLEADO');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('61','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('62','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('63','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('64','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('65','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('66','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('67','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('68','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('69','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('70','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('71','Festividades');
Insert into HR.GAM_ROWS (ROW_KEY,TABLE_NAME) values ('73','Festividades');
REM INSERTING into HR.GAM_SCHEMA_ROLE
SET DEFINE OFF;
Insert into HR.GAM_SCHEMA_ROLE (SCHEMA_NAME,ROLE_NAME) values ('HR','ROL_HR');
Insert into HR.GAM_SCHEMA_ROLE (SCHEMA_NAME,ROLE_NAME) values ('Localidad','ROL_AYUNTAMIENTO');
Insert into HR.GAM_SCHEMA_ROLE (SCHEMA_NAME,ROLE_NAME) values ('Test demo','ROL_PRUEBA1');
Insert into HR.GAM_SCHEMA_ROLE (SCHEMA_NAME,ROLE_NAME) values ('Test demo','ROL_PRUEBA2');
REM INSERTING into HR.GAM_SCHEMAS
SET DEFINE OFF;
Insert into HR.GAM_SCHEMAS (SCHEMA_NAME) values ('HR');
Insert into HR.GAM_SCHEMAS (SCHEMA_NAME) values ('Localidad');
Insert into HR.GAM_SCHEMAS (SCHEMA_NAME) values ('Test demo');
REM INSERTING into HR.GAM_STRATEGY
SET DEFINE OFF;
Insert into HR.GAM_STRATEGY (ID_STRATEGY,STRATEGY_NAME,DESCRIPTION,SCHEMA_NAME,IS_ACTIVE) values ('2','Test strategy David','Estrategia de prueba','HR','Y');
Insert into HR.GAM_STRATEGY (ID_STRATEGY,STRATEGY_NAME,DESCRIPTION,SCHEMA_NAME,IS_ACTIVE) values ('3','test david','test localidad','Localidad','Y');
REM INSERTING into HR.GAM_TABLES
SET DEFINE OFF;
Insert into HR.GAM_TABLES (TABLE_NAME,SCHEMA) values ('Festividades','Localidad');
Insert into HR.GAM_TABLES (TABLE_NAME,SCHEMA) values ('Proveedores','Localidad');
Insert into HR.GAM_TABLES (TABLE_NAME,SCHEMA) values ('SUELDO','HR');
Insert into HR.GAM_TABLES (TABLE_NAME,SCHEMA) values ('tabla1','Test demo');
Insert into HR.GAM_TABLES (TABLE_NAME,SCHEMA) values ('EMPLEADO','HR');
REM INSERTING into HR.GAM_USER_ROLE
SET DEFINE OFF;
Insert into HR.GAM_USER_ROLE (USER_ID,ROLE_NAME) values ('admin','ROL_ADMIN');
Insert into HR.GAM_USER_ROLE (USER_ID,ROLE_NAME) values ('david_castro','ROL_AYUNTAMIENTO');
Insert into HR.GAM_USER_ROLE (USER_ID,ROLE_NAME) values ('test2','ROL_PRUEBA1');
Insert into HR.GAM_USER_ROLE (USER_ID,ROLE_NAME) values ('test3','ROL_HR');
REM INSERTING into HR.GAM_USERS
SET DEFINE OFF;
Insert into HR.GAM_USERS (USER_ID,PASS,NAME,LASTNAME) values ('test2','tests','test','test');
Insert into HR.GAM_USERS (USER_ID,PASS,NAME,LASTNAME) values ('test3','test4','test','test');
Insert into HR.GAM_USERS (USER_ID,PASS,NAME,LASTNAME) values ('admin','admin','Admin','admin');
Insert into HR.GAM_USERS (USER_ID,PASS,NAME,LASTNAME) values ('david_castro','pass','David','Castro');
--------------------------------------------------------
--  DDL for Index GAM_ACTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."GAM_ACTIONS_PK" ON "HR"."GAM_ACTIONS" ("ID_STRATEGY", "ID_ACTION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GAM_CELDA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."GAM_CELDA_PK" ON "HR"."GAM_CELL" ("ROW_KEY", "COLUMN_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GAM_COLUMNAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."GAM_COLUMNAS_PK" ON "HR"."GAM_COLUMNS" ("COLUMN_NAME", "TABLE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GAM_HISTORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."GAM_HISTORY_PK" ON "HR"."GAM_HISTORY" ("ID_HISTORY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GAM_REWARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."GAM_REWARD_PK" ON "HR"."GAM_REWARD" ("ID_REWARD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GAM_REWARDS_STATS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."GAM_REWARDS_STATS_PK" ON "HR"."GAM_REWARDS_STATS" ("ID_REWARDS_STATS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GAM_ROLES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."GAM_ROLES_PK" ON "HR"."GAM_ROLES" ("ROLE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GAM_FILAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."GAM_FILAS_PK" ON "HR"."GAM_ROWS" ("ROW_KEY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GAM_SCHEMA_ROLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."GAM_SCHEMA_ROLE_PK" ON "HR"."GAM_SCHEMA_ROLE" ("SCHEMA_NAME", "ROLE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GAM_ESQUEMAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."GAM_ESQUEMAS_PK" ON "HR"."GAM_SCHEMAS" ("SCHEMA_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GAM_STRATEGY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."GAM_STRATEGY_PK" ON "HR"."GAM_STRATEGY" ("ID_STRATEGY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GAM_TABLAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."GAM_TABLAS_PK" ON "HR"."GAM_TABLES" ("TABLE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GAM_USER_ROLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."GAM_USER_ROLE_PK" ON "HR"."GAM_USER_ROLE" ("USER_ID", "ROLE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GAM_USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."GAM_USERS_PK" ON "HR"."GAM_USERS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table GAM_ACTIONS
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_ACTIONS" ADD CONSTRAINT "GAM_ACTIONS_PK" PRIMARY KEY ("ID_STRATEGY", "ID_ACTION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."GAM_ACTIONS" MODIFY ("ID_REWARD" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_ACTIONS" MODIFY ("REPETITIONS" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_ACTIONS" MODIFY ("OPERATION" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_ACTIONS" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_ACTIONS" MODIFY ("ID_ACTION" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_ACTIONS" MODIFY ("ID_STRATEGY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GAM_CELL
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_CELL" ADD CONSTRAINT "GAM_CELDA_PK" PRIMARY KEY ("ROW_KEY", "COLUMN_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."GAM_CELL" MODIFY ("COLUMN_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_CELL" MODIFY ("ROW_KEY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GAM_COLUMNS
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_COLUMNS" ADD CONSTRAINT "GAM_COLUMNAS_PK" PRIMARY KEY ("COLUMN_NAME", "TABLE_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."GAM_COLUMNS" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_COLUMNS" MODIFY ("COLUMN_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GAM_HISTORY
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_HISTORY" MODIFY ("REWARDED" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_HISTORY" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_HISTORY" MODIFY ("HISTORY_TS" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_HISTORY" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_HISTORY" MODIFY ("OPERATION" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_HISTORY" ADD CONSTRAINT "GAM_HISTORY_PK" PRIMARY KEY ("ID_HISTORY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."GAM_HISTORY" MODIFY ("ID_HISTORY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GAM_LOG
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_LOG" MODIFY ("LOG_TS" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_LOG" MODIFY ("MSG_TEXT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GAM_REWARD
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_REWARD" ADD CONSTRAINT "GAM_REWARD_PK" PRIMARY KEY ("ID_REWARD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."GAM_REWARD" MODIFY ("WEIGHT" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_REWARD" MODIFY ("QUANTIFIABLE" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_REWARD" MODIFY ("IMAGE" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_REWARD" MODIFY ("REWARD_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_REWARD" MODIFY ("ID_REWARD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GAM_REWARDS_STATS
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_REWARDS_STATS" MODIFY ("ID_STRATEGY" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_REWARDS_STATS" MODIFY ("ID_ACTION" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_REWARDS_STATS" ADD CONSTRAINT "GAM_REWARDS_STATS_PK" PRIMARY KEY ("ID_REWARDS_STATS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."GAM_REWARDS_STATS" MODIFY ("STATS_TS" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_REWARDS_STATS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_REWARDS_STATS" MODIFY ("ID_REWARDS_STATS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GAM_ROLES
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_ROLES" ADD CONSTRAINT "GAM_ROLES_PK" PRIMARY KEY ("ROLE_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."GAM_ROLES" MODIFY ("ROLE_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GAM_ROWS
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_ROWS" ADD CONSTRAINT "GAM_FILAS_PK" PRIMARY KEY ("ROW_KEY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."GAM_ROWS" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_ROWS" MODIFY ("ROW_KEY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GAM_SCHEMA_ROLE
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_SCHEMA_ROLE" ADD CONSTRAINT "GAM_SCHEMA_ROLE_PK" PRIMARY KEY ("SCHEMA_NAME", "ROLE_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."GAM_SCHEMA_ROLE" MODIFY ("ROLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_SCHEMA_ROLE" MODIFY ("SCHEMA_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GAM_SCHEMAS
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_SCHEMAS" ADD CONSTRAINT "GAM_ESQUEMAS_PK" PRIMARY KEY ("SCHEMA_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."GAM_SCHEMAS" MODIFY ("SCHEMA_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GAM_STRATEGY
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_STRATEGY" ADD CONSTRAINT "GAM_STRATEGY_PK" PRIMARY KEY ("ID_STRATEGY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."GAM_STRATEGY" MODIFY ("IS_ACTIVE" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_STRATEGY" MODIFY ("SCHEMA_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_STRATEGY" MODIFY ("STRATEGY_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_STRATEGY" MODIFY ("ID_STRATEGY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GAM_TABLES
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_TABLES" MODIFY ("SCHEMA" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_TABLES" ADD CONSTRAINT "GAM_TABLAS_PK" PRIMARY KEY ("TABLE_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."GAM_TABLES" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GAM_USER_ROLE
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_USER_ROLE" ADD CONSTRAINT "GAM_USER_ROLE_PK" PRIMARY KEY ("USER_ID", "ROLE_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."GAM_USER_ROLE" MODIFY ("ROLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_USER_ROLE" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GAM_USERS
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_USERS" ADD CONSTRAINT "GAM_USERS_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."GAM_USERS" MODIFY ("LASTNAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_USERS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_USERS" MODIFY ("PASS" NOT NULL ENABLE);
  ALTER TABLE "HR"."GAM_USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table GAM_ACTIONS
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_ACTIONS" ADD CONSTRAINT "GAM_ACTIONS_FK1" FOREIGN KEY ("ID_STRATEGY")
	  REFERENCES "HR"."GAM_STRATEGY" ("ID_STRATEGY") ENABLE;
  ALTER TABLE "HR"."GAM_ACTIONS" ADD CONSTRAINT "GAM_ACTIONS_FK2" FOREIGN KEY ("TABLE_NAME")
	  REFERENCES "HR"."GAM_TABLES" ("TABLE_NAME") ENABLE;
  ALTER TABLE "HR"."GAM_ACTIONS" ADD CONSTRAINT "GAM_ACTIONS_FK3" FOREIGN KEY ("COLUMN_NAME", "TABLE_NAME")
	  REFERENCES "HR"."GAM_COLUMNS" ("COLUMN_NAME", "TABLE_NAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GAM_CELL
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_CELL" ADD CONSTRAINT "GAM_CELDA_FK" FOREIGN KEY ("ROW_KEY")
	  REFERENCES "HR"."GAM_ROWS" ("ROW_KEY") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GAM_COLUMNS
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_COLUMNS" ADD CONSTRAINT "GAM_COLUMNAS_FK" FOREIGN KEY ("TABLE_NAME")
	  REFERENCES "HR"."GAM_TABLES" ("TABLE_NAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GAM_HISTORY
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_HISTORY" ADD CONSTRAINT "GAM_HISTORY_COLUMNS_FK" FOREIGN KEY ("COLUMN_NAME", "TABLE_NAME")
	  REFERENCES "HR"."GAM_COLUMNS" ("COLUMN_NAME", "TABLE_NAME") ENABLE;
  ALTER TABLE "HR"."GAM_HISTORY" ADD CONSTRAINT "GAM_HISTORY_TABLES_FK" FOREIGN KEY ("TABLE_NAME")
	  REFERENCES "HR"."GAM_TABLES" ("TABLE_NAME") ENABLE;
  ALTER TABLE "HR"."GAM_HISTORY" ADD CONSTRAINT "GAM_HISTORY_USERS_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."GAM_USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GAM_REWARDS_STATS
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_REWARDS_STATS" ADD CONSTRAINT "GAM_REWARDS_STATS_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."GAM_USERS" ("USER_ID") ENABLE;
  ALTER TABLE "HR"."GAM_REWARDS_STATS" ADD CONSTRAINT "GAM_REWARDS_STATS_FK2" FOREIGN KEY ("ID_STRATEGY", "ID_ACTION")
	  REFERENCES "HR"."GAM_ACTIONS" ("ID_STRATEGY", "ID_ACTION") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GAM_ROWS
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_ROWS" ADD CONSTRAINT "GAM_FILAS_FK" FOREIGN KEY ("TABLE_NAME")
	  REFERENCES "HR"."GAM_TABLES" ("TABLE_NAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GAM_SCHEMA_ROLE
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_SCHEMA_ROLE" ADD CONSTRAINT "GAM_SCHEMA_ROLE__ROLES_FK" FOREIGN KEY ("ROLE_NAME")
	  REFERENCES "HR"."GAM_ROLES" ("ROLE_NAME") ENABLE;
  ALTER TABLE "HR"."GAM_SCHEMA_ROLE" ADD CONSTRAINT "GAM_SCHEMA_ROLE__SCHEMA_FK" FOREIGN KEY ("SCHEMA_NAME")
	  REFERENCES "HR"."GAM_SCHEMAS" ("SCHEMA_NAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GAM_STRATEGY
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_STRATEGY" ADD CONSTRAINT "GAM_STRATEGY_FK1" FOREIGN KEY ("SCHEMA_NAME")
	  REFERENCES "HR"."GAM_SCHEMAS" ("SCHEMA_NAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GAM_TABLES
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_TABLES" ADD CONSTRAINT "GAM_TABLAS_FK" FOREIGN KEY ("SCHEMA")
	  REFERENCES "HR"."GAM_SCHEMAS" ("SCHEMA_NAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GAM_USER_ROLE
--------------------------------------------------------

  ALTER TABLE "HR"."GAM_USER_ROLE" ADD CONSTRAINT "GAM_USER_ROLE_ROLES_FK" FOREIGN KEY ("ROLE_NAME")
	  REFERENCES "HR"."GAM_ROLES" ("ROLE_NAME") ENABLE;
  ALTER TABLE "HR"."GAM_USER_ROLE" ADD CONSTRAINT "GAM_USER_ROLE_USERS_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."GAM_USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  DDL for Trigger ON_CHANGE_CELL_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."ON_CHANGE_CELL_TRIGGER" 
AFTER UPDATE ON GAM_CELL 
REFERENCING NEW AS NEW OLD AS OLD

FOR EACH ROW
DECLARE
  V_TABLE VARCHAR2(50 CHAR);
  CURSOR GET_TABLE_NAME (P_ROWKEY NUMBER) IS
    SELECT TABLE_NAME
    FROM GAM_ROWS
    WHERE ROW_KEY = P_ROWKEY;
BEGIN
  OPEN GET_TABLE_NAME(:NEW.ROW_KEY);
   FETCH GET_TABLE_NAME INTO V_TABLE;
  CLOSE GET_TABLE_NAME;
  
  INSERT INTO GAM_HISTORY (ID_HISTORY, USER_ID, OPERATION, HISTORY_TS, TABLE_NAME, COLUMN_NAME)
                   VALUES (GAM_HISTORY_SEQ.NEXTVAL, PKG_GAM_USER.GET_USER(), 'UPDATE', sysdate, V_TABLE, :NEW.COLUMN_NAME);
END;
/
ALTER TRIGGER "HR"."ON_CHANGE_CELL_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GAM_CREATE_REWARD
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."GAM_CREATE_REWARD" 
BEFORE INSERT ON GAM_HISTORY 
REFERENCING NEW AS NEW OLD AS OLD

FOR EACH ROW
DECLARE
  TYPE c_reward_type
  IS
  RECORD
  (
    repetitions gam_actions.repetitions%TYPE,
    id_strategy gam_actions.id_strategy%TYPE,
    id_action gam_actions.id_action%TYPE,
    id_reward gam_actions.id_reward%TYPE);
  c_reward c_reward_type;
  
  V_NOT_REWARDED NUMBER;
  V_REWARDS_TO_INSERT NUMBER;
  V_REWARDS_TO_UPDATE NUMBER;
  
  V_ERROR_TEXT GAM_LOG.MSG_TEXT%type;
  
  CURSOR C_NOT_REWARDED IS
    SELECT COUNT(GH.ID_HISTORY)
    FROM GAM_HISTORY GH
    WHERE GH.OPERATION = :NEW.OPERATION
    AND GH.REWARDED = 'N'
    AND GH.TABLE_NAME = :NEW.TABLE_NAME
    AND GH.USER_ID = :NEW.USER_ID
    AND NVL(GH.COLUMN_NAME,'#') = NVL(:NEW.COLUMN_NAME,'#');
  
  CURSOR C_TO_REWARD IS
    SELECT GA.REPETITIONS, GA.ID_STRATEGY, GA.ID_ACTION, GA.ID_REWARD
    FROM GAM_ACTIONS GA,
         GAM_STRATEGY GS
    WHERE GA.TABLE_NAME = :NEW.TABLE_NAME
    AND GA.OPERATION = :NEW.OPERATION
    AND NVL(GA.COLUMN_NAME,'#') = NVL(:NEW.COLUMN_NAME,'#')
    AND GA.ID_STRATEGY = GS.ID_STRATEGY
    AND GS.IS_ACTIVE = 'Y'
    AND GA.REPETITIONS <= V_NOT_REWARDED;
BEGIN
  --Comprobar cuantas recompensas están pendientes de otorgar para el usuario
  OPEN C_NOT_REWARDED;
  FETCH C_NOT_REWARDED INTO V_NOT_REWARDED;
  CLOSE C_NOT_REWARDED;

  V_NOT_REWARDED := V_NOT_REWARDED + 1; --Añadir la fila actual también para considerarla

  FOR c_reward in C_TO_REWARD
  LOOP
    V_REWARDS_TO_INSERT := FLOOR(V_NOT_REWARDED / c_reward.REPETITIONS);
    INSERT INTO GAM_LOG (MSG_TEXT) VALUES ('V_REWARDS_TO_INSERT'||V_REWARDS_TO_INSERT);
    FOR counter in 1..V_REWARDS_TO_INSERT LOOP
    INSERT INTO GAM_LOG (MSG_TEXT) VALUES ('counter'||counter);
      --Insertar recompensa otorgada
      INSERT INTO GAM_REWARDS_STATS (ID_REWARDS_STATS, USER_ID, STATS_TS, ID_STRATEGY, ID_ACTION)
      VALUES (GAM_REWARDS_STATS_SEQ.nextval, :NEW.USER_ID, sysdate, c_reward.id_strategy, c_reward.id_action);
      
      IF counter = 1 THEN
        --La primera vez, actualizamos la fila nueva
        :NEW.REWARDED := 'S';
        V_REWARDS_TO_UPDATE := c_reward.REPETITIONS - 1;
      ELSE
        V_REWARDS_TO_UPDATE := c_reward.REPETITIONS;
      END IF;
      
      --Marcar como RECOMPENSADAS tantas acciones como repeticiones hagan falta para conseguir la recompensa anterior
      UPDATE GAM_HISTORY GH
      SET GH.REWARDED = 'S'
      WHERE GH.OPERATION = :NEW.OPERATION
      AND GH.REWARDED = 'N'
      AND GH.TABLE_NAME = :NEW.TABLE_NAME
      AND GH.USER_ID = :NEW.USER_ID
      AND NVL(GH.COLUMN_NAME,'#') = NVL(:NEW.COLUMN_NAME,'#')
      AND ROWNUM <= V_REWARDS_TO_UPDATE;
    END LOOP;
  END LOOP;
    
EXCEPTION
WHEN OTHERS THEN
  V_ERROR_TEXT := 'Error '  || SQLCODE || '-' || SQLERRM;
  INSERT INTO GAM_LOG (MSG_TEXT) VALUES (V_ERROR_TEXT);
  
END;
/
ALTER TRIGGER "HR"."GAM_CREATE_REWARD" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ON_INSERT_HISTORY_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."ON_INSERT_HISTORY_TRIGGER" 
BEFORE INSERT ON GAM_HISTORY 
REFERENCING NEW AS NEW OLD AS OLD

FOR EACH ROW
DECLARE
  TYPE c_reward_type
  IS
  RECORD
  (
    repetitions gam_actions.repetitions%TYPE,
    id_strategy gam_actions.id_strategy%TYPE,
    id_action gam_actions.id_action%TYPE,
    id_reward gam_actions.id_reward%TYPE);
  c_reward c_reward_type;
  
  V_NOT_REWARDED NUMBER;
  V_REWARDS_TO_INSERT NUMBER;
  V_REWARDS_TO_UPDATE NUMBER;
  
  V_ERROR_TEXT GAM_LOG.MSG_TEXT%type;
  
  CURSOR C_NOT_REWARDED IS
    SELECT COUNT(GH.ID_HISTORY)
    FROM GAM_HISTORY GH
    WHERE GH.OPERATION = :NEW.OPERATION
    AND GH.REWARDED = 'N'
    AND GH.TABLE_NAME = :NEW.TABLE_NAME
    AND GH.USER_ID = :NEW.USER_ID
    AND NVL(GH.COLUMN_NAME,'#') = NVL(:NEW.COLUMN_NAME,'#');
  
  CURSOR C_TO_REWARD IS
    SELECT GA.REPETITIONS, GA.ID_STRATEGY, GA.ID_ACTION, GA.ID_REWARD
    FROM GAM_ACTIONS GA,
         GAM_STRATEGY GS
    WHERE GA.TABLE_NAME = :NEW.TABLE_NAME
    AND GA.OPERATION = :NEW.OPERATION
    AND NVL(GA.COLUMN_NAME,'#') = NVL(:NEW.COLUMN_NAME,'#')
    AND GA.ID_STRATEGY = GS.ID_STRATEGY
    AND GS.IS_ACTIVE = 'Y'
    AND GA.REPETITIONS <= V_NOT_REWARDED;
BEGIN
  --Comprobar cuantas recompensas están pendientes de otorgar para el usuario
  OPEN C_NOT_REWARDED;
  FETCH C_NOT_REWARDED INTO V_NOT_REWARDED;
  CLOSE C_NOT_REWARDED;

  V_NOT_REWARDED := V_NOT_REWARDED + 1; --Añadir la fila actual también para considerarla

  FOR c_reward in C_TO_REWARD
  LOOP
    V_REWARDS_TO_INSERT := FLOOR(V_NOT_REWARDED / c_reward.REPETITIONS);
    INSERT INTO GAM_LOG (MSG_TEXT) VALUES ('V_REWARDS_TO_INSERT'||V_REWARDS_TO_INSERT);
    FOR counter in 1..V_REWARDS_TO_INSERT LOOP
    INSERT INTO GAM_LOG (MSG_TEXT) VALUES ('counter'||counter);
      --Insertar recompensa otorgada
      INSERT INTO GAM_REWARDS_STATS (ID_REWARDS_STATS, USER_ID, STATS_TS, ID_STRATEGY, ID_ACTION)
      VALUES (GAM_REWARDS_STATS_SEQ.nextval, :NEW.USER_ID, sysdate, c_reward.id_strategy, c_reward.id_action);
      
      IF counter = 1 THEN
        --La primera vez, actualizamos la fila nueva
        :NEW.REWARDED := 'S';
        V_REWARDS_TO_UPDATE := c_reward.REPETITIONS - 1;
      ELSE
        V_REWARDS_TO_UPDATE := c_reward.REPETITIONS;
      END IF;
      
      --Marcar como RECOMPENSADAS tantas acciones como repeticiones hagan falta para conseguir la recompensa anterior
      UPDATE GAM_HISTORY GH
      SET GH.REWARDED = 'S'
      WHERE GH.OPERATION = :NEW.OPERATION
      AND GH.REWARDED = 'N'
      AND GH.TABLE_NAME = :NEW.TABLE_NAME
      AND GH.USER_ID = :NEW.USER_ID
      AND NVL(GH.COLUMN_NAME,'#') = NVL(:NEW.COLUMN_NAME,'#')
      AND ROWNUM <= V_REWARDS_TO_UPDATE;
    END LOOP;
  END LOOP;
    
EXCEPTION
WHEN OTHERS THEN
  V_ERROR_TEXT := 'Error '  || SQLCODE || '-' || SQLERRM;
  INSERT INTO GAM_LOG (MSG_TEXT) VALUES (V_ERROR_TEXT);
  
END;
/
ALTER TRIGGER "HR"."ON_INSERT_HISTORY_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ON_CREATE_DELETE_ROW_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."ON_CREATE_DELETE_ROW_TRIGGER" 
AFTER DELETE OR INSERT ON GAM_ROWS 
REFERENCING NEW AS NEW OLD AS OLD

FOR EACH ROW
DECLARE
  V_OPERATION VARCHAR2(10 CHAR);
BEGIN
  CASE
    WHEN INSERTING THEN
      V_OPERATION := 'INSERT';
    WHEN DELETING THEN
      V_OPERATION := 'DELETE';
  END CASE;
  
  INSERT INTO GAM_HISTORY (ID_HISTORY, USER_ID, OPERATION, HISTORY_TS, TABLE_NAME, COLUMN_NAME)
                   VALUES (GAM_HISTORY_SEQ.NEXTVAL, PKG_GAM_USER.GET_USER(), V_OPERATION, sysdate, NVL(:NEW.TABLE_NAME, :OLD.TABLE_NAME), null);
END;
/
ALTER TRIGGER "HR"."ON_CREATE_DELETE_ROW_TRIGGER" ENABLE;
