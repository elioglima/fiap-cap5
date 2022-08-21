--------------------------------------------------------
--  DDL TB_ENDERECO
--------------------------------------------------------
  CREATE TABLE "RM92270"."TB_ENDERECO" 
   (	"CD_ENDERECO" NUMBER(10,0), 
	"NM_BAIRRO" VARCHAR2(100 CHAR), 
	"NM_CEP" VARCHAR2(100 CHAR), 
	"NM_CIDADE" VARCHAR2(100 CHAR), 
	"NM_COMPLEMENTO" VARCHAR2(100 CHAR), 
	"NM_ENDERECO" VARCHAR2(100 CHAR), 
	"NM_ESTADO" VARCHAR2(100 CHAR), 
	"NUMERO" NUMBER(10,0), 
	"NM_UF" VARCHAR2(100 CHAR), 
	"CD_USUARIO" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;

--------------------------------------------------------
--  DDL TB_USUARIO
--------------------------------------------------------
  CREATE TABLE "RM92270"."TB_USUARIO" 
   (	"CD_USUARIO" NUMBER(10,0), 
	"DT_CADASTRO" TIMESTAMP (6), 
	"DT_MODIFICACAO" TIMESTAMP (6), 
	"NM_USUARIO" VARCHAR2(100 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
REM INSERTING into RM92270.TB_ENDERECO
SET DEFINE OFF;

Insert into RM92270.TB_ENDERECO (CD_ENDERECO,NM_BAIRRO,NM_CEP,NM_CIDADE,NM_COMPLEMENTO,NM_ENDERECO,NM_ESTADO,NUMERO,NM_UF,CD_USUARIO) values (1,'Cidade SP','04242-111','Juqueira','Perto do metrô','Rua Alto Limpo','Sao Joao',255,'JQ',1);
Insert into RM92270.TB_ENDERECO (CD_ENDERECO,NM_BAIRRO,NM_CEP,NM_CIDADE,NM_COMPLEMENTO,NM_ENDERECO,NM_ESTADO,NUMERO,NM_UF,CD_USUARIO) values (2,'Cidade SP','04242-111','Juqueira','Perto do metrô','Rua Alto Limpo','Sao Joao',255,'JQ',2);
Insert into RM92270.TB_ENDERECO (CD_ENDERECO,NM_BAIRRO,NM_CEP,NM_CIDADE,NM_COMPLEMENTO,NM_ENDERECO,NM_ESTADO,NUMERO,NM_UF,CD_USUARIO) values (3,'Cidade SP','04242-111','Juqueira','Perto do metrô','Rua Alto Limpo','Sao Joao',255,'JQ',3);

REM INSERTING into RM92270.TB_USUARIO
SET DEFINE OFF;

Insert into RM92270.TB_USUARIO (CD_USUARIO,DT_CADASTRO,DT_MODIFICACAO,NM_USUARIO) values (1,to_timestamp('20-AUG-22 09.05.54.088000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('20-AUG-22 09.05.54.089000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Elio Gonçalves de Lima');
Insert into RM92270.TB_USUARIO (CD_USUARIO,DT_CADASTRO,DT_MODIFICACAO,NM_USUARIO) values (2,to_timestamp('20-AUG-22 09.05.54.144000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('20-AUG-22 09.05.54.144000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Abigail Manello de Lima');
Insert into RM92270.TB_USUARIO (CD_USUARIO,DT_CADASTRO,DT_MODIFICACAO,NM_USUARIO) values (3,to_timestamp('20-AUG-22 09.05.54.156000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('20-AUG-22 09.05.54.241000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'Roberto Silva');

--------------------------------------------------------
--  DDL for Index SYS_C002391513
--------------------------------------------------------
  CREATE UNIQUE INDEX "RM92270"."SYS_C002391513" ON "RM92270"."TB_ENDERECO" ("CD_ENDERECO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;

--------------------------------------------------------
--  DDL for Index SYS_C002391516
--------------------------------------------------------
  CREATE UNIQUE INDEX "RM92270"."SYS_C002391516" ON "RM92270"."TB_USUARIO" ("CD_USUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;

--------------------------------------------------------
--  Constraints for Table TB_ENDERECO
--------------------------------------------------------
  ALTER TABLE "RM92270"."TB_ENDERECO" MODIFY ("CD_ENDERECO" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."TB_ENDERECO" MODIFY ("NM_BAIRRO" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."TB_ENDERECO" MODIFY ("NM_CEP" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."TB_ENDERECO" MODIFY ("NM_CIDADE" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."TB_ENDERECO" MODIFY ("NM_COMPLEMENTO" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."TB_ENDERECO" MODIFY ("NM_ENDERECO" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."TB_ENDERECO" MODIFY ("NM_ESTADO" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."TB_ENDERECO" MODIFY ("NUMERO" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."TB_ENDERECO" MODIFY ("NM_UF" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."TB_ENDERECO" ADD PRIMARY KEY ("CD_ENDERECO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;

--------------------------------------------------------
--  Constraints TB_USUARIO
--------------------------------------------------------
  ALTER TABLE "RM92270"."TB_USUARIO" MODIFY ("CD_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."TB_USUARIO" MODIFY ("NM_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."TB_USUARIO" ADD PRIMARY KEY ("CD_USUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table TB_ENDERECO
--------------------------------------------------------
  ALTER TABLE "RM92270"."TB_ENDERECO" ADD CONSTRAINT "FKHLBCVDM4QBA3XBUKRIU0PFJVU" FOREIGN KEY ("CD_USUARIO")
	  REFERENCES "RM92270"."TB_USUARIO" ("CD_USUARIO") ENABLE;
