-- ==================================================================
 -- 0911 DDL (T01 ~ T05)
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
 
-- T08 TB_CLINIC
 
-- T09 TB_PRESCRIPTION
 
-- T10 TB_SALES
 
-- T1T B_MEDICINE

-- T12 TB_MED_CODENAME

-- T13 TB_BUSICOMPANY

 