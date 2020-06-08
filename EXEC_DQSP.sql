USE [QACOP]
GO

SELECT DISTINCT
(SELECT COUNT (STATUS) from SP_Utility_DQ_OUTPUT WHERE SP_Utility_DQ_OUTPUT.STATUS = 'FAILED') AS FAILED,
(SELECT COUNT(STATUS)  from SP_Utility_DQ_OUTPUT WHERE SP_Utility_DQ_OUTPUT.STATUS = 'PASSED') AS PASSED,
(SELECT COUNT(STATUS)  from SP_Utility_DQ_OUTPUT) AS TOTAL FROM SP_Utility_DQ_OUTPUT

GO

select cast(HEALTHPLAN as char(10)) as HEALTHPLAN, cast(TABLENAME as char(10)) as TABLENAME, cast(COLUMNNAME as char(20)) as COLUMNNAME, cast(TEST_SCENARIO as char(30)) as TEST_SCENARIO, cast(SOURCE_COUNT as char(10)) as SOURCE_COUNT,cast(TARGET_COUNT as char(10)) as TARGET_COUNT, cast(STATUS as char(10)) as STATUS, cast(STATUS_DESC as char(160)) as STATUS_DESC, cast(DQ_REMARKS as char(100)) as DQ_REMARKS from SP_UTILITY_DQ_OUTPUT

GO

SET ECHO OFF

                SET PAGESIZE 50000

                SET MARKUP HTML ON TABLE ""
                
                
                --Format the columns

                COLUMN employee_name HEADING "Employee Name"

                COLUMN project_name HEADING "Project Name"

                SET FEEDBACK OFF
                
                SET TERMOUT OFF

SPOOL report.html

select cast(HEALTHPLAN as char(10)) as HEALTHPLAN, cast(TABLENAME as char(10)) as TABLENAME, cast(COLUMNNAME as char(20)) as COLUMNNAME, cast(TEST_SCENARIO as char(30)) as TEST_SCENARIO, cast(SOURCE_COUNT as char(10)) as SOURCE_COUNT,cast(TARGET_COUNT as char(10)) as TARGET_COUNT, cast(STATUS as char(10)) as STATUS, cast(STATUS_DESC as char(160)) as STATUS_DESC, cast(DQ_REMARKS as char(100)) as DQ_REMARKS from SP_UTILITY_DQ_OUTPUT

SPOOL OFF
