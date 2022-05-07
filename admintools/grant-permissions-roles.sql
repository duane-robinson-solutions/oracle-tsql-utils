SQLPLUS /NOLOG

CONNECT SYS/j9Rachael AS SYSDBA
alter session set "_ORACLE_SCRIPT"=true;
CREATE USER duane IDENTIFIED BY j9Rachael DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE TEMP;

GRANT "CTXAPP" TO duane WITH ADMIN OPTION;
GRANT "EM_EXPRESS_ALL" TO duane WITH ADMIN OPTION;
GRANT "OLAP_USER" TO duane WITH ADMIN OPTION;
GRANT "OLAP_XS_ADMIN" TO duane WITH ADMIN OPTION;
GRANT "RECOVERY_CATALOG_OWNER_VPD" TO duane WITH ADMIN OPTION;
GRANT "XS_CACHE_ADMIN" TO duane WITH ADMIN OPTION;
GRANT "GDS_CATALOG_SELECT" TO duane WITH ADMIN OPTION;
GRANT "SCHEDULER_ADMIN" TO duane WITH ADMIN OPTION;
GRANT "PROVISIONER" TO duane WITH ADMIN OPTION;
GRANT "AUDIT_ADMIN" TO duane WITH ADMIN OPTION;
GRANT "XDB_WEBSERVICES_OVER_HTTP" TO duane WITH ADMIN OPTION;
GRANT "DV_REALM_RESOURCE" TO duane WITH ADMIN OPTION;
GRANT "AQ_ADMINISTRATOR_ROLE" TO duane WITH ADMIN OPTION;
GRANT "SYSUMF_ROLE" TO duane WITH ADMIN OPTION;
GRANT "APPLICATION_TRACE_VIEWER" TO duane WITH ADMIN OPTION;
GRANT "XDB_WEBSERVICES" TO duane WITH ADMIN OPTION;
GRANT "LBAC_DBA" TO duane WITH ADMIN OPTION;
GRANT "OPTIMIZER_PROCESSING_RATE" TO duane WITH ADMIN OPTION;
GRANT "RECOVERY_CATALOG_USER" TO duane WITH ADMIN OPTION;
GRANT "GSMUSER_ROLE" TO duane WITH ADMIN OPTION;
GRANT "GATHER_SYSTEM_STATISTICS" TO duane WITH ADMIN OPTION;
GRANT "LOGSTDBY_ADMINISTRATOR" TO duane WITH ADMIN OPTION;
GRANT "DBJAVASCRIPT" TO duane WITH ADMIN OPTION;
GRANT "GSM_POOLADMIN_ROLE" TO duane WITH ADMIN OPTION;
GRANT "DV_ADMIN" TO duane WITH ADMIN OPTION;
GRANT "HS_ADMIN_ROLE" TO duane WITH ADMIN OPTION;
GRANT "XS_SESSION_ADMIN" TO duane WITH ADMIN OPTION;
GRANT "IMP_FULL_DATABASE" TO duane WITH ADMIN OPTION;
GRANT "GGSYS_ROLE" TO duane WITH ADMIN OPTION;
GRANT "DATAPUMP_EXP_FULL_DATABASE" TO duane WITH ADMIN OPTION;
GRANT "EJBCLIENT" TO duane WITH ADMIN OPTION;
GRANT "HS_ADMIN_EXECUTE_ROLE" TO duane WITH ADMIN OPTION;
GRANT "JMXSERVER" TO duane WITH ADMIN OPTION;
GRANT "OLAP_DBA" TO duane WITH ADMIN OPTION;
GRANT "ADM_PARALLEL_EXECUTE_TASK" TO duane WITH ADMIN OPTION;
GRANT "JAVAIDPRIV" TO duane WITH ADMIN OPTION;
GRANT "SELECT_CATALOG_ROLE" TO duane WITH ADMIN OPTION;
GRANT "JAVADEBUGPRIV" TO duane WITH ADMIN OPTION;
GRANT "CONNECT" TO duane WITH ADMIN OPTION;
GRANT "DATAPUMP_IMP_FULL_DATABASE" TO duane WITH ADMIN OPTION;
GRANT "SODA_APP" TO duane WITH ADMIN OPTION;
GRANT "BDSQL_ADMIN" TO duane WITH ADMIN OPTION;
GRANT "OEM_MONITOR" TO duane WITH ADMIN OPTION;
GRANT "GSMADMIN_ROLE" TO duane WITH ADMIN OPTION;
GRANT "AQ_USER_ROLE" TO duane WITH ADMIN OPTION;
GRANT "JAVAUSERPRIV" TO duane WITH ADMIN OPTION;
GRANT "XDB_SET_INVOKER" TO duane WITH ADMIN OPTION;
GRANT "RECOVERY_CATALOG_OWNER" TO duane WITH ADMIN OPTION;
GRANT "JAVA_ADMIN" TO duane WITH ADMIN OPTION;
GRANT "DBFS_ROLE" TO duane WITH ADMIN OPTION;
GRANT "PDB_DBA" TO duane WITH ADMIN OPTION;
GRANT "RDFCTX_ADMIN" TO duane WITH ADMIN OPTION;
GRANT "CDB_DBA" TO duane WITH ADMIN OPTION;
GRANT "JAVASYSPRIV" TO duane WITH ADMIN OPTION;
GRANT "GSMROOTUSER_ROLE" TO duane WITH ADMIN OPTION;
GRANT "HS_ADMIN_SELECT_ROLE" TO duane WITH ADMIN OPTION;
GRANT "AUDIT_VIEWER" TO duane WITH ADMIN OPTION;
GRANT "RESOURCE" TO duane WITH ADMIN OPTION;
GRANT "XDB_WEBSERVICES_WITH_PUBLIC" TO duane WITH ADMIN OPTION;
GRANT "EXECUTE_CATALOG_ROLE" TO duane WITH ADMIN OPTION;
GRANT "DATAPATCH_ROLE" TO duane WITH ADMIN OPTION;
GRANT "DV_REALM_OWNER" TO duane WITH ADMIN OPTION;
GRANT "EXP_FULL_DATABASE" TO duane WITH ADMIN OPTION;
GRANT "DBMS_MDX_INTERNAL" TO duane WITH ADMIN OPTION;
GRANT "XS_NAMESPACE_ADMIN" TO duane WITH ADMIN OPTION;
GRANT "BDSQL_USER" TO duane WITH ADMIN OPTION;
GRANT "ORDADMIN" TO duane WITH ADMIN OPTION;
GRANT "AUTHENTICATEDUSER" TO duane WITH ADMIN OPTION;
GRANT "CAPTURE_ADMIN" TO duane WITH ADMIN OPTION;
GRANT "OEM_ADVISOR" TO duane WITH ADMIN OPTION;
GRANT "XS_CONNECT" TO duane WITH ADMIN OPTION;
GRANT "XDBADMIN" TO duane WITH ADMIN OPTION;
GRANT "EM_EXPRESS_BASIC" TO duane WITH ADMIN OPTION;


GRANT CREATE JOB TO duane ;
GRANT DROP ANY CONTEXT TO duane ;
GRANT UPDATE ANY CUBE TO duane ;
GRANT ALTER ANY ANALYTIC VIEW TO duane WITH ADMIN OPTION;
GRANT DROP ANY TRIGGER TO duane ;
GRANT DROP ANY SQL TRANSLATION PROFILE TO duane WITH ADMIN OPTION;
GRANT MANAGE ANY FILE GROUP TO duane WITH ADMIN OPTION;
GRANT ALTER PUBLIC DATABASE LINK TO duane WITH ADMIN OPTION;
GRANT MANAGE FILE GROUP TO duane ;
GRANT ALTER ANY INDEX TO duane ;
GRANT DROP ANY SEQUENCE TO duane ;
GRANT ALTER PROFILE TO duane WITH ADMIN OPTION;
GRANT INHERIT ANY PRIVILEGES TO duane ;
GRANT UNDER ANY TABLE TO duane WITH ADMIN OPTION;
GRANT CREATE ASSEMBLY TO duane ;
GRANT DROP ANY LIBRARY TO duane WITH ADMIN OPTION;
GRANT ALTER ANY EDITION TO duane WITH ADMIN OPTION;
GRANT CREATE ROLE TO duane WITH ADMIN OPTION;
GRANT CREATE LIBRARY TO duane WITH ADMIN OPTION;
GRANT DROP ROLLBACK SEGMENT TO duane WITH ADMIN OPTION;
GRANT CREATE TRIGGER TO duane WITH ADMIN OPTION;
GRANT ALTER ANY PROCEDURE TO duane ;
GRANT ADMINISTER DATABASE TRIGGER TO duane WITH ADMIN OPTION;
GRANT DROP ANY MEASURE FOLDER TO duane WITH ADMIN OPTION;
GRANT CREATE ANY PROCEDURE TO duane WITH ADMIN OPTION;
GRANT ALTER ANY OUTLINE TO duane ;
GRANT CREATE ANY ANALYTIC VIEW TO duane ;
GRANT EXECUTE ANY INDEXTYPE TO duane WITH ADMIN OPTION;
GRANT USE ANY JOB RESOURCE TO duane ;
GRANT CREATE ANY DIRECTORY TO duane ;
GRANT ALTER ANY RULE SET TO duane WITH ADMIN OPTION;
GRANT USE ANY SQL TRANSLATION PROFILE TO duane WITH ADMIN OPTION;
GRANT ALTER ANY MINING MODEL TO duane WITH ADMIN OPTION;
GRANT DEBUG CONNECT SESSION TO duane WITH ADMIN OPTION;
GRANT LOGMINING TO duane ;
GRANT DROP ANY ATTRIBUTE DIMENSION TO duane ;
GRANT CREATE ANY MINING MODEL TO duane WITH ADMIN OPTION;
GRANT CREATE LOCKDOWN PROFILE TO duane ;
GRANT ALTER SESSION TO duane WITH ADMIN OPTION;
GRANT CREATE MATERIALIZED VIEW TO duane WITH ADMIN OPTION;
GRANT CREATE PLUGGABLE DATABASE TO duane ;
GRANT DROP ANY ANALYTIC VIEW TO duane WITH ADMIN OPTION;
GRANT WRITE ANY ANALYTIC VIEW CACHE TO duane WITH ADMIN OPTION;
GRANT MERGE ANY VIEW TO duane WITH ADMIN OPTION;
GRANT CREATE ANY INDEX TO duane ;
GRANT READ ANY ANALYTIC VIEW CACHE TO duane WITH ADMIN OPTION;
GRANT CREATE DIMENSION TO duane WITH ADMIN OPTION;
GRANT EXECUTE ANY RULE SET TO duane WITH ADMIN OPTION;
GRANT CREATE SQL TRANSLATION PROFILE TO duane ;
GRANT ALTER ANY MATERIALIZED VIEW TO duane WITH ADMIN OPTION;
GRANT AUDIT SYSTEM TO duane ;
GRANT CREATE OPERATOR TO duane ;
GRANT MANAGE ANY QUEUE TO duane WITH ADMIN OPTION;
GRANT ALTER ANY SQL PROFILE TO duane WITH ADMIN OPTION;
GRANT GRANT ANY OBJECT PRIVILEGE TO duane WITH ADMIN OPTION;
GRANT CREATE INDEXTYPE TO duane ;
GRANT AUDIT ANY TO duane WITH ADMIN OPTION;
GRANT INHERIT ANY REMOTE PRIVILEGES TO duane WITH ADMIN OPTION;
GRANT DEBUG ANY PROCEDURE TO duane WITH ADMIN OPTION;
GRANT CREATE ANY MEASURE FOLDER TO duane WITH ADMIN OPTION;
GRANT CREATE ANY SEQUENCE TO duane WITH ADMIN OPTION;
GRANT CREATE MEASURE FOLDER TO duane WITH ADMIN OPTION;
GRANT UPDATE ANY CUBE BUILD PROCESS TO duane ;
GRANT CREATE VIEW TO duane WITH ADMIN OPTION;
GRANT ALTER DATABASE LINK TO duane WITH ADMIN OPTION;
GRANT ALTER ANY ASSEMBLY TO duane WITH ADMIN OPTION;
GRANT ALTER ANY SQL TRANSLATION PROFILE TO duane ;
GRANT CREATE ANY EVALUATION CONTEXT TO duane WITH ADMIN OPTION;
GRANT SELECT ANY MINING MODEL TO duane ;
GRANT DELETE ANY CUBE DIMENSION TO duane ;
GRANT ALTER ANY TABLE TO duane WITH ADMIN OPTION;
GRANT ALTER ANY ATTRIBUTE DIMENSION TO duane ;
GRANT CREATE SESSION TO duane WITH ADMIN OPTION;
GRANT CREATE RULE TO duane WITH ADMIN OPTION;
GRANT BECOME USER TO duane ;
GRANT SELECT ANY CUBE BUILD PROCESS TO duane WITH ADMIN OPTION;
GRANT SELECT ANY TABLE TO duane WITH ADMIN OPTION;
GRANT INSERT ANY MEASURE FOLDER TO duane ;
GRANT CREATE ANY SQL PROFILE TO duane WITH ADMIN OPTION;
GRANT FORCE ANY TRANSACTION TO duane ;
GRANT DELETE ANY TABLE TO duane WITH ADMIN OPTION;
GRANT ALTER ANY SEQUENCE TO duane ;
GRANT SELECT ANY CUBE DIMENSION TO duane WITH ADMIN OPTION;
GRANT CREATE ANY EDITION TO duane ;
GRANT CREATE EXTERNAL JOB TO duane WITH ADMIN OPTION;
GRANT EM EXPRESS CONNECT TO duane ;
GRANT DROP ANY MATERIALIZED VIEW TO duane WITH ADMIN OPTION;
GRANT CREATE ANY CUBE BUILD PROCESS TO duane WITH ADMIN OPTION;
GRANT FLASHBACK ANY TABLE TO duane WITH ADMIN OPTION;
GRANT DROP ANY RULE SET TO duane WITH ADMIN OPTION;
GRANT BACKUP ANY TABLE TO duane ;
GRANT ALTER ANY CUBE TO duane ;
GRANT CREATE CREDENTIAL TO duane WITH ADMIN OPTION;
GRANT CREATE TABLE TO duane WITH ADMIN OPTION;
GRANT EXECUTE ANY LIBRARY TO duane ;
GRANT DROP ANY OUTLINE TO duane ;
GRANT EXECUTE ASSEMBLY TO duane WITH ADMIN OPTION;
GRANT CREATE ANY HIERARCHY TO duane WITH ADMIN OPTION;
GRANT CREATE ANALYTIC VIEW TO duane ;
GRANT CREATE ANY DIMENSION TO duane ;
GRANT DROP ANY TABLE TO duane ;
GRANT ADMINISTER KEY MANAGEMENT TO duane WITH ADMIN OPTION;
GRANT ALTER ANY CLUSTER TO duane ;
GRANT EXECUTE ANY CLASS TO duane WITH ADMIN OPTION;
GRANT ALTER ANY CUBE BUILD PROCESS TO duane WITH ADMIN OPTION;
GRANT CREATE ANY CREDENTIAL TO duane WITH ADMIN OPTION;
GRANT DROP ANY DIMENSION TO duane WITH ADMIN OPTION;
GRANT CREATE ANY RULE SET TO duane WITH ADMIN OPTION;
GRANT SELECT ANY SEQUENCE TO duane ;
GRANT UNDER ANY TYPE TO duane WITH ADMIN OPTION;
GRANT MANAGE TABLESPACE TO duane WITH ADMIN OPTION;
GRANT DROP ANY OPERATOR TO duane WITH ADMIN OPTION;
GRANT CREATE ANY OPERATOR TO duane ;
GRANT DROP ANY HIERARCHY TO duane WITH ADMIN OPTION;
GRANT EXEMPT IDENTITY POLICY TO duane WITH ADMIN OPTION;
GRANT CREATE TYPE TO duane WITH ADMIN OPTION;
GRANT CREATE TABLESPACE TO duane ;
GRANT SELECT ANY TRANSACTION TO duane ;
GRANT DELETE ANY MEASURE FOLDER TO duane WITH ADMIN OPTION;
GRANT CREATE ANY CUBE TO duane ;
GRANT LOCK ANY TABLE TO duane ;
GRANT CREATE EVALUATION CONTEXT TO duane WITH ADMIN OPTION;
GRANT DROP ANY TYPE TO duane WITH ADMIN OPTION;
GRANT ADVISOR TO duane ;
GRANT CREATE PUBLIC DATABASE LINK TO duane ;
GRANT ANALYZE ANY TO duane WITH ADMIN OPTION;
GRANT CREATE ATTRIBUTE DIMENSION TO duane ;
GRANT DROP ANY RULE TO duane WITH ADMIN OPTION;
GRANT INSERT ANY CUBE DIMENSION TO duane ;
GRANT CREATE ROLLBACK SEGMENT TO duane WITH ADMIN OPTION;
GRANT CREATE ANY JOB TO duane ;
GRANT ALTER USER TO duane ;
GRANT QUERY REWRITE TO duane WITH ADMIN OPTION;
GRANT SELECT ANY DICTIONARY TO duane WITH ADMIN OPTION;
GRANT CREATE PUBLIC SYNONYM TO duane ;
GRANT GLOBAL QUERY REWRITE TO duane WITH ADMIN OPTION;
GRANT ALTER ANY CUBE DIMENSION TO duane WITH ADMIN OPTION;
GRANT CREATE ANY CUBE DIMENSION TO duane ;
GRANT DROP ANY CLUSTER TO duane WITH ADMIN OPTION;
GRANT CREATE ANY RULE TO duane WITH ADMIN OPTION;
GRANT UPDATE ANY CUBE DIMENSION TO duane WITH ADMIN OPTION;
GRANT ADMINISTER RESOURCE MANAGER TO duane ;
GRANT CREATE ANY SYNONYM TO duane ;
GRANT DROP ANY SYNONYM TO duane ;
GRANT DROP ANY MINING MODEL TO duane ;
GRANT EXECUTE ANY PROCEDURE TO duane ;
GRANT CREATE SYNONYM TO duane WITH ADMIN OPTION;
GRANT SET CONTAINER TO duane WITH ADMIN OPTION;
GRANT EXECUTE ANY PROGRAM TO duane WITH ADMIN OPTION;
GRANT EXEMPT REDACTION POLICY TO duane WITH ADMIN OPTION;
GRANT EXECUTE ANY TYPE TO duane WITH ADMIN OPTION;
GRANT ON COMMIT REFRESH TO duane WITH ADMIN OPTION;
GRANT DEBUG CONNECT ANY TO duane WITH ADMIN OPTION;
GRANT CREATE SEQUENCE TO duane ;
GRANT CREATE HIERARCHY TO duane WITH ADMIN OPTION;
GRANT SELECT ANY MEASURE FOLDER TO duane WITH ADMIN OPTION;
GRANT COMMENT ANY MINING MODEL TO duane ;
GRANT ADMINISTER SQL TUNING SET TO duane ;
GRANT CREATE ANY INDEXTYPE TO duane WITH ADMIN OPTION;
GRANT DROP ANY INDEX TO duane ;
GRANT RESTRICTED SESSION TO duane ;
GRANT DEQUEUE ANY QUEUE TO duane WITH ADMIN OPTION;
GRANT ANALYZE ANY DICTIONARY TO duane WITH ADMIN OPTION;
GRANT ALTER ANY INDEXTYPE TO duane WITH ADMIN OPTION;
GRANT TRANSLATE ANY SQL TO duane WITH ADMIN OPTION;
GRANT ADMINISTER ANY SQL TUNING SET TO duane WITH ADMIN OPTION;
GRANT CREATE USER TO duane ;
GRANT EXECUTE ANY OPERATOR TO duane ;
GRANT CREATE CUBE BUILD PROCESS TO duane ;
GRANT CREATE PROFILE TO duane ;
GRANT ALTER ANY ROLE TO duane WITH ADMIN OPTION;
GRANT UPDATE ANY TABLE TO duane WITH ADMIN OPTION;
GRANT ALTER ANY LIBRARY TO duane WITH ADMIN OPTION;
GRANT DROP ANY VIEW TO duane ;
GRANT CREATE ANY CLUSTER TO duane WITH ADMIN OPTION;
GRANT EXECUTE ANY RULE TO duane WITH ADMIN OPTION;
GRANT ALTER TABLESPACE TO duane ;
GRANT UNDER ANY VIEW TO duane WITH ADMIN OPTION;
GRANT EXECUTE ANY ASSEMBLY TO duane WITH ADMIN OPTION;
GRANT GRANT ANY PRIVILEGE TO duane ;
GRANT ALTER ANY TRIGGER TO duane WITH ADMIN OPTION;
GRANT CREATE ANY VIEW TO duane WITH ADMIN OPTION;
GRANT ALTER LOCKDOWN PROFILE TO duane ;
GRANT EXPORT FULL DATABASE TO duane ;
GRANT ALTER ANY MEASURE FOLDER TO duane WITH ADMIN OPTION;
GRANT ALTER ANY EVALUATION CONTEXT TO duane WITH ADMIN OPTION;
GRANT TEXT DATASTORE ACCESS TO duane WITH ADMIN OPTION;
GRANT FLASHBACK ARCHIVE ADMINISTER TO duane WITH ADMIN OPTION;
GRANT IMPORT FULL DATABASE TO duane ;
GRANT CREATE ANY OUTLINE TO duane ;
GRANT COMMENT ANY TABLE TO duane ;
GRANT READ ANY TABLE TO duane WITH ADMIN OPTION;
GRANT CREATE DATABASE LINK TO duane ;
GRANT DROP PUBLIC SYNONYM TO duane WITH ADMIN OPTION;
GRANT DROP USER TO duane WITH ADMIN OPTION;
GRANT CHANGE NOTIFICATION TO duane WITH ADMIN OPTION;
GRANT CREATE MINING MODEL TO duane ;
GRANT INSERT ANY TABLE TO duane WITH ADMIN OPTION;
GRANT DROP LOCKDOWN PROFILE TO duane ;
GRANT DROP PROFILE TO duane ;
GRANT CREATE ANY MATERIALIZED VIEW TO duane ;
GRANT CREATE RULE SET TO duane WITH ADMIN OPTION;
GRANT EXEMPT ACCESS POLICY TO duane WITH ADMIN OPTION;
GRANT MANAGE SCHEDULER TO duane ;
GRANT READ ANY FILE GROUP TO duane ;
GRANT FORCE TRANSACTION TO duane ;
GRANT DROP ANY CUBE BUILD PROCESS TO duane ;
GRANT ALTER ANY TYPE TO duane WITH ADMIN OPTION;
GRANT DROP ANY PROCEDURE TO duane ;
GRANT CREATE ANY SQL TRANSLATION PROFILE TO duane WITH ADMIN OPTION;
GRANT DROP PUBLIC DATABASE LINK TO duane WITH ADMIN OPTION;
GRANT DROP ANY INDEXTYPE TO duane ;
GRANT DROP ANY SQL PROFILE TO duane WITH ADMIN OPTION;
GRANT ALTER SYSTEM TO duane WITH ADMIN OPTION;
GRANT UNLIMITED TABLESPACE TO duane ;
GRANT DROP ANY ROLE TO duane ;
GRANT ALTER ANY DIMENSION TO duane WITH ADMIN OPTION;
GRANT DROP ANY CUBE DIMENSION TO duane WITH ADMIN OPTION;
GRANT DROP ANY CUBE TO duane ;
GRANT CREATE ANY TRIGGER TO duane ;
GRANT DROP ANY ASSEMBLY TO duane WITH ADMIN OPTION;
GRANT CREATE ANY TABLE TO duane ;
GRANT ADMINISTER SQL MANAGEMENT OBJECT TO duane WITH ADMIN OPTION;
GRANT DROP ANY DIRECTORY TO duane ;
GRANT ENQUEUE ANY QUEUE TO duane WITH ADMIN OPTION;
GRANT DROP ANY EVALUATION CONTEXT TO duane WITH ADMIN OPTION;
GRANT CREATE ANY ASSEMBLY TO duane ;
GRANT CREATE ANY TYPE TO duane ;
GRANT REDEFINE ANY TABLE TO duane ;
GRANT CREATE CLUSTER TO duane WITH ADMIN OPTION;
GRANT CREATE ANY CONTEXT TO duane ;
GRANT EXECUTE ANY EVALUATION CONTEXT TO duane WITH ADMIN OPTION;
GRANT RESUMABLE TO duane WITH ADMIN OPTION;
GRANT CREATE ANY LIBRARY TO duane ;
GRANT DROP ANY EDITION TO duane ;
GRANT CREATE PROCEDURE TO duane WITH ADMIN OPTION;
GRANT ALTER DATABASE TO duane WITH ADMIN OPTION;
GRANT SELECT ANY CUBE TO duane WITH ADMIN OPTION;
GRANT GRANT ANY ROLE TO duane ;
GRANT ALTER ANY RULE TO duane WITH ADMIN OPTION;
GRANT CREATE ANY ATTRIBUTE DIMENSION TO duane ;
GRANT CREATE CUBE DIMENSION TO duane WITH ADMIN OPTION;
GRANT ALTER ANY OPERATOR TO duane ;
GRANT CREATE CUBE TO duane ;
GRANT ALTER RESOURCE COST TO duane ;
GRANT ALTER ANY HIERARCHY TO duane WITH ADMIN OPTION;
GRANT DROP TABLESPACE TO duane ;
GRANT ALTER ROLLBACK SEGMENT TO duane ;
GRANT PURGE DBA_RECYCLEBIN TO duane WITH ADMIN OPTION;
GRANT create session TO duane WITH ADMIN OPTION;
GRANT create table TO duane WITH ADMIN OPTION;
GRANT create user TO duane WITH ADMIN OPTION;
GRANT create view TO duane WITH ADMIN OPTION;
GRANT create any trigger TO duane WITH ADMIN OPTION;
GRANT create any procedure TO duane WITH ADMIN OPTION;
GRANT create sequence TO duane WITH ADMIN OPTION;
GRANT create synonym TO duane WITH ADMIN OPTION;




  CREATE TABLE "duane"."USBE_V_STUDENT_MASTER"
   (	"GENDER" VARCHAR2(26 BYTE),
	"FIRST_ENTERED_US" VARCHAR2(128 BYTE),
	"MASTER_PERSON_INDEX" VARCHAR2(128 BYTE)
   )