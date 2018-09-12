-- ==================================================================
-- 0912 DDL (T01 ~ T13)
-- ==================================================================

-- T01 TB_EMPLOYEE
 CREATE TABLE
	"JAVA"."TB_EMPLOYEE"(
		"EMP_ID" VARCHAR2(50) NOT NULL ENABLE,
		"EMP_PWD" VARCHAR2(20) NOT NULL ENABLE,
		"EMP_NAME" VARCHAR2(200) NOT NULL ENABLE,
		"EMP_PHONE" VARCHAR2(50) NOT NULL ENABLE,
		"EMP_RRNUM" VARCHAR2(14) NOT NULL ENABLE,
		"EMP_ADDRESS" VARCHAR2(500) NOT NULL ENABLE,
		"EMP_DIV" CHAR(1) DEFAULT 'Z',
		"EMP_SALARY" NUMBER,
		"EMP_HIREDATE" DATE,
		"EMP_RETIREDATE" DATE,
		CONSTRAINT "TB_EMPLOYEE_PK" PRIMARY KEY("EMP_ID")
			USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS STORAGE(
			INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
		) TABLESPACE "SYSTEM" ENABLE
	) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
		INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
	) TABLESPACE "SYSTEM";

COMMENT ON
COLUMN "JAVA"."TB_EMPLOYEE"."EMP_DIV" IS 'A=admin&D=doctor&N=nurse&Z=default';


-- T02 TB_EMP_DIVNAME
 CREATE TABLE
	"JAVA"."TB_EMP_DIVNAME"(
		"EMP_DIV" CHAR(1) NOT NULL ENABLE,
		"EMP_DIVNAME" VARCHAR2(200) NOT NULL ENABLE
	) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
		INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
	) TABLESPACE "SYSTEM";


-- T03 TB_NOTICEE
 CREATE TABLE
	"JAVA"."TB_NOTICE"(
		"NTC_IDX" NUMBER( 22, 0) NOT NULL ENABLE,
		"NTC_TITLE" VARCHAR2(200) NOT NULL ENABLE,
		"EMP_ID" VARCHAR2(50) NOT NULL ENABLE,
		"NTC_CONTENT" VARCHAR2(4000) NOT NULL ENABLE,
		"NTC_COUNT" NUMBER,
		"NTC_REGDATE" DATE,
		"NTC_UPDATE" DATE,
		"NTC_DELAT" CHAR(1) DEFAULT 'F',
		CONSTRAINT "TB_NOTICE_PK" PRIMARY KEY("NTC_IDX")
			USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS STORAGE(
			INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
		) TABLESPACE "SYSTEM" ENABLE
	) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
		INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
	) TABLESPACE "SYSTEM";


-- T04 TB_LOGIN_INFO
 CREATE TABLE
	"JAVA"."TB_LOGIN_INFO"(
		"EMP_ID" VARCHAR2(50) NOT NULL ENABLE,
		"LOG_LOGINDATE" DATE,
		"LOG_LOGOUTDATE" DATE
	) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
		INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
	) TABLESPACE "SYSTEM";


-- T05 TB_PATIENT
 CREATE TABLE
	"JAVA"."TB_PATIENT"(
		"PAT_CODE" CHAR(6) NOT NULL ENABLE,
		"PAT_INSCODE" VARCHAR2(12),
		"PAT_NAME" VARCHAR2(200) NOT NULL ENABLE,
		"PAT_PHONE" VARCHAR2(50) NOT NULL ENABLE,
		"PAT_RRNUM" VARCHAR2(14) NOT NULL ENABLE,
		"PAT_GENDER" CHAR(1) NOT NULL ENABLE,
		"PAT_ADDRESS" VARCHAR2(500) NOT NULL ENABLE,
		"PAT_DISEASE" VARCHAR2(500),
		"PAT_FIRSTDATE" DATE,
		"PAT_REDATE" DATE,
		"PAT_MEMO" VARCHAR2(500),
		"EMP_ID" VARCHAR2(50),
		CONSTRAINT "TB_PATIENT_PK" PRIMARY KEY("PAT_CODE")
			USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS STORAGE(
			INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
		) TABLESPACE "SYSTEM" ENABLE
	) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
		INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
	) TABLESPACE "SYSTEM";
	

-- T06 TB_RESERVE
CREATE TABLE
	"JAVA"."TB_RESERVE"(
		"RES_IDX" NUMBER NOT NULL ENABLE,
		"RES_NAME" VARCHAR2(200) NOT NULL ENABLE,
		"RES_PHONE" VARCHAR2(50) NOT NULL ENABLE,
		"RES_DATE" DATE
	) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
		INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
	) TABLESPACE "SYSTEM";
	
 
-- T07 TB_INSURANCE
CREATE TABLE
	"JAVA"."TB_INSURANCE"(
		"INS_CODE" VARCHAR2(12) NOT NULL ENABLE,
		"INS_RRNUM" VARCHAR2(14) NOT NULL ENABLE,
		"INS_REGNAME" VARCHAR2(20) NOT NULL ENABLE,
		"INS_DIV" VARCHAR2(20) NOT NULL ENABLE
	) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
		INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
	) TABLESPACE "SYSTEM";


-- T08 TB_CLINIC
 CREATE TABLE
	"JAVA"."TB_CLINIC"(
		"CLN_CODE" CHAR(6) NOT NULL ENABLE,
		"PAT_CODE" CHAR(6) NOT NULL ENABLE,
		"EMP_ID" VARCHAR2(50) NOT NULL ENABLE,
		"CLN_DATE" DATE,
		"CLN_DESCR" VARCHAR2(4000) NOT NULL ENABLE,
		CONSTRAINT "TB_CLINIC_PK" PRIMARY KEY("CLN_CODE")
			USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS STORAGE(
			INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
		) TABLESPACE "SYSTEM" ENABLE
	) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
		INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
	) TABLESPACE "SYSTEM";


-- T09 TB_PRESCRIPTION
 CREATE TABLE
	"JAVA"."TB_PRESCRIPTION"(
		"PRS_CODE" CHAR(6) NOT NULL ENABLE,
		"CLN_CODE" CHAR(6) NOT NULL ENABLE,
		"PRS_DESCR" VARCHAR2(4000) NOT NULL ENABLE,
		"MED_CODE" CHAR(9),
		"MED_CODE2" CHAR(9),
		"MED_CODE3" CHAR(9)
	) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
		INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
	) TABLESPACE "SYSTEM";


-- T10 TB_SALES
 CREATE TABLE
	"JAVA"."TB_SALES"(
		"CLN_CODE" CHAR(6) NOT NULL ENABLE,
		"SAL_DATE" DATE,
		"SAL_INCOME" NUMBER,
		"SAL_UNCAMT" NUMBER
	) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
		INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
	) TABLESPACE "SYSTEM";


-- T11 B_MEDICINE
 CREATE TABLE
	"JAVA"."TB_MEDICINE"(
		"MED_CODE" CHAR(9) NOT NULL ENABLE,
		"MED_STOREDATE" DATE,
		"MED_DISUSEDATE" DATE,
		"MED_AMT" NUMBER,
		"MED_MEMO" VARCHAR2(4000)
	) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
		INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
	) TABLESPACE "SYSTEM";


-- T12 TB_MED_CODENAME
 CREATE TABLE
	"JAVA"."TB_MED_CODENAME"(
		"MED_CODE" CHAR(9) NOT NULL ENABLE,
		"MED_CODENAME" VARCHAR2(200) NOT NULL ENABLE,
		"MED_UNIT" VARCHAR2(50)
	) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
		INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
	) TABLESPACE "SYSTEM";


-- T13 TB_BUSICOMPANY
 CREATE TABLE
	"JAVA"."TB_BUSICOMPANY"(
		"CPN_PHONE" VARCHAR2(50) NOT NULL ENABLE,
		"CPN_PHONE2" VARCHAR2(50),
		"CPN_NAME" VARCHAR2(200) NOT NULL ENABLE,
		"CPN_ADDRESS" VARCHAR2(500) NOT NULL ENABLE,
		"CPN_BUSICOUN" NUMBER
	) SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
		INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
	) TABLESPACE "SYSTEM";


 