--------------------------------------------------------
--  ������ ������ - ȭ����-2��-06-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table YU_PRODUCT_NUM
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."YU_PRODUCT_NUM" 
   (	"ITEM" VARCHAR2(100 BYTE), 
	"ITEMNO" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table YU_RENTAL_HISTORY
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."YU_RENTAL_HISTORY" 
   (	"RENTALID" NUMBER(*,0), 
	"USERID" VARCHAR2(200 BYTE), 
	"NAME" VARCHAR2(255 BYTE), 
	"ITEM" VARCHAR2(255 BYTE), 
	"RENTAL_DATE" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table YU_USER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."YU_USER" 
   (	"USERID" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"PHONE" VARCHAR2(20 BYTE), 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"GENDER" VARCHAR2(20 BYTE), 
	"CNT" NUMBER, 
	"STATUS" VARCHAR2(20 BYTE) DEFAULT 'U'
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.YU_PRODUCT_NUM
SET DEFINE OFF;
Insert into SYSTEM.YU_PRODUCT_NUM (ITEM,ITEMNO) values ('������ø���丮��',2);
Insert into SYSTEM.YU_PRODUCT_NUM (ITEM,ITEMNO) values ('������������峭���ڵ���',3);
Insert into SYSTEM.YU_PRODUCT_NUM (ITEM,ITEMNO) values ('�Ƿηκ��潺�����',4);
Insert into SYSTEM.YU_PRODUCT_NUM (ITEM,ITEMNO) values ('�Ƿη��ѱ��ڵ��е�',5);
Insert into SYSTEM.YU_PRODUCT_NUM (ITEM,ITEMNO) values ('ũ�ո�ε��ġ����',6);
Insert into SYSTEM.YU_PRODUCT_NUM (ITEM,ITEMNO) values ('��ε�ȸ��������ũ',1);
REM INSERTING into SYSTEM.YU_RENTAL_HISTORY
SET DEFINE OFF;
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (9,'kim456','��ö��','��ε�ȸ��������ũ',to_date('24/02/05','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (10,'electricjellyfish16','������','��ε�ȸ��������ũ',to_date('24/02/05','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (11,'kim456','��ö��','��ε�ȸ��������ũ',to_date('24/02/05','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (12,'kim456','��ö��','ũ�ո�ε��ġ����',to_date('24/02/05','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (13,'kim456','��ö��','������ø���丮��',to_date('24/02/05','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (14,'kim456','��ö��','������������峭���ڵ���',to_date('24/02/05','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (15,'kim456','��ö��','�Ƿη��ѱ��ڵ��е�',to_date('24/02/05','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (16,'kim456','��ö��','������ø���丮��',to_date('24/02/05','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (17,'kim456','��ö��','�Ƿηκ��潺�����',to_date('24/02/05','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (18,'kim456','��ö��','��ε�ȸ��������ũ',to_date('24/02/05','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (19,'kim456','��ö��','�Ƿηκ��潺�����',to_date('24/02/05','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (20,'kim456','��ö��','�Ƿηκ��潺�����',to_date('24/02/05','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (21,'kim123','��̼�','������ø���丮��',to_date('24/02/05','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (22,'kim456','��ö��','������ø���丮��',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (23,'kim123','��̼�','�Ƿη��ѱ��ڵ��е�',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (24,'whisperingpine73','�ڹμ�','������������峭���ڵ���',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (25,'mysticmango41','�̽¿�','�Ƿηκ��潺�����',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (26,'kim123','��̼�','������ø���丮��',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (27,'kim789','��̹�','������ø���丮��',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (28,'d111','����','�Ƿηκ��潺�����',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (29,'d111','����','ũ�ո�ε��ġ����',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (30,'d111','����','������ø���丮��',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (31,'d111','����','ũ�ո�ε��ġ����',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (32,'galacticserenade63','������','ũ�ո�ε��ġ����',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (33,'galacticserenade63','������','��ε�ȸ��������ũ',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (34,'velvetthunder89','������','�Ƿηκ��潺�����',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (35,'velvetthunder89','������','������������峭���ڵ���',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (36,'velvetthunder89','������','������ø���丮��',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (37,'abc','������','ũ�ո�ε��ġ����',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (38,'abc','������','�Ƿη��ѱ��ڵ��е�',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (39,'d111','����','��ε�ȸ��������ũ',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (40,'lunarharmony27','������','������ø���丮��',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (41,'lunarharmony27','������','ũ�ո�ε��ġ����',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (42,'cosmicwombat72','���¿�','������ø���丮��',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (43,'kim123','��̼�','�Ƿηκ��潺�����',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (44,'velvetthunder89','������','�Ƿη��ѱ��ڵ��е�',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (45,'velvetthunder89','������','������������峭���ڵ���',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (46,'abc','������','��ε�ȸ��������ũ',to_date('24/02/06','RR/MM/DD'));
Insert into SYSTEM.YU_RENTAL_HISTORY (RENTALID,USERID,NAME,ITEM,RENTAL_DATE) values (47,'abc','������','��ε�ȸ��������ũ',to_date('24/02/06','RR/MM/DD'));
REM INSERTING into SYSTEM.YU_USER
SET DEFINE OFF;
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('kim456','2222','��ö��','010-8908-1111','����� ���ʱ�','M',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('kim123','123','��̼�','010-8908-8908','����� ������','F',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('whisperingpine73','qwerty789','�ڹμ�','010-3333-4444','��õ ������','M         ',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('electricjellyfish16','abcxyz123','������','010-4444-5555','�λ� �λ�����','F         ',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('mysticmango41','passpasspass','�̽¿�','010-5555-6666','�뱸 ������','M         ',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('velvetthunder89','securePW789','������','010-6666-7777','���� ����','F         ',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('lunarharmony27','mypassword','������','010-7777-8888','���� �����','M         ',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('quantumflamingo68','userpass','������','010-8888-9999','��� ����','F         ',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('nebulacascade14','hello123','�ڹμ�','010-9999-1111','���� �߶���','M         ',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('sapphirevortex55','letmein','������','010-1111-2222','���� ������','F         ',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('celestialwhale82','secure789','����ȣ','010-2222-3333','��� ����','M         ',null,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('enigmaticbreeze37','password789','������','010-2222-3333','��⵵ ������','M         ',null,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('crimsonphoenix49','securePW123','��ٺ�','010-3333-4444','���� ������','F         ',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('solargiraffe25','passpass123','�Ѽ���','010-4444-5555','���� �߱�','F         ',null,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('midnightzephyr78','qwerty456','��μ�','010-5555-6666','��⵵ �Ⱦ��','M         ',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('galacticserenade63','hello789','������','010-6666-7777','�λ� �ؿ�뱸','F',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('iridescentleopard19','letmein456','�̽���','010-7777-8888','���� ���빮��','M         ',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('velvetspectre44','secure123','�ڼ���','010-8888-9999','��õ ����','F         ',null,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('cosmicwombat72','mypassword456','���¿�','010-9999-1111','�뱸 �޼���','M         ',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('etherealcheetah31','passpass456','���̰�','010-1111-2222','���� ����','F         ',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('admin','admin','������','010-8908-8908','��õ��','F         ',0,'A');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('d111','1111','����','010-8908-8908','��õ��','M         ',0,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('kim789','1111','��̹�','010-8888-8908','����� ������','F',1,'U');
Insert into SYSTEM.YU_USER (USERID,PASSWORD,NAME,PHONE,ADDRESS,GENDER,CNT,STATUS) values ('abc','123','������','010-8888-1111','����� ������','F',0,'U');
--------------------------------------------------------
--  DDL for Index SYS_C007570
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007570" ON "SYSTEM"."YU_PRODUCT_NUM" ("ITEMNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007592
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007592" ON "SYSTEM"."YU_RENTAL_HISTORY" ("RENTALID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007559
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007559" ON "SYSTEM"."YU_USER" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table YU_PRODUCT_NUM
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."YU_PRODUCT_NUM" MODIFY ("ITEMNO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."YU_PRODUCT_NUM" MODIFY ("ITEM" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."YU_PRODUCT_NUM" ADD CONSTRAINT "SYS_C007570" PRIMARY KEY ("ITEMNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table YU_RENTAL_HISTORY
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."YU_RENTAL_HISTORY" ADD PRIMARY KEY ("RENTALID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table YU_USER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."YU_USER" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."YU_USER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."YU_USER" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."YU_USER" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."YU_USER" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."YU_USER" ADD PRIMARY KEY ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
