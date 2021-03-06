USE [QACOP1]
GO

SELECT '********************************************************OUTPUT OF SQL DQ UTILITY*******************************************************************'

GO

SELECT DISTINCT
(SELECT COUNT (STATUS) from SP_Utility_DQ_OUTPUT WHERE SP_Utility_DQ_OUTPUT.STATUS = 'FAILED') AS FAILED,
(SELECT COUNT(STATUS)  from SP_Utility_DQ_OUTPUT WHERE SP_Utility_DQ_OUTPUT.STATUS = 'PASSED') AS PASSED,
(SELECT COUNT(STATUS)  from SP_Utility_DQ_OUTPUT) AS TOTAL FROM SP_Utility_DQ_OUTPUT

GO

select cast(HEALTHPLAN as char(10)) as HEALTHPLAN, cast(TABLENAME as char(10)) as TABLENAME, cast(COLUMNNAME as char(20)) as COLUMNNAME, cast(TEST_SCENARIO as char(30)) as TEST_SCENARIO, cast(SOURCE_COUNT as char(10)) as SOURCE_COUNT,cast(TARGET_COUNT as char(10)) as TARGET_COUNT, cast(STATUS as char(10)) as STATUS, cast(STATUS_DESC as char(160)) as STATUS_DESC, cast(DQ_REMARKS as char(100)) as DQ_REMARKS from SP_UTILITY_DQ_OUTPUT

GO

SELECT '************************************************OUTPUT OF DT_DR UTILITY*****************************************************************************'

GO

SELECT DISTINCT
(SELECT COUNT (STATUS) from SP_Utility_DT_DR_OUTPUT WHERE SP_Utility_DT_DR_OUTPUT.STATUS = 'FAILED') AS FAILED,
(SELECT COUNT(STATUS)  from SP_Utility_DT_DR_OUTPUT WHERE SP_Utility_DT_DR_OUTPUT.STATUS = 'PASSED') AS PASSED,
(SELECT COUNT(STATUS)  from SP_Utility_DT_DR_OUTPUT) AS TOTAL FROM SP_Utility_DT_DR_OUTPUT

GO

select cast(HEALTHPLAN as char(10)) as HEALTHPLAN, cast(FILENAME as char(20)) as FILENAME, cast(TESTSCENARIO as char(30)) as TESTSCENARIO, cast(SRC_RECORD_CNT as char(10)) as SRC_RECORD_CNT, cast(TRG_RECORD_CNT as char(10)) as TRG_RECORD_CNT, cast(SOURCE_Minus_TARGET as char(10)) as SOURCE_Minus_TARGET, cast(TARGET_Minus_SOURCE as char(10)) as TARGET_Minus_SOURCE, cast(STATUS as char(10)) as STATUS,  cast(STATUS_DESC as char(250)) as STATUS_DESC from SP_Utility_DT_DR_OUTPUT

GO

SELECT '************************************************OUTPUT OF INGESTION UTILITY*****************************************************************************'

GO

SELECT DISTINCT
(SELECT COUNT (STATUS) from SP_Utility_Ingestion_Compare_OUTPUT WHERE SP_Utility_Ingestion_Compare_OUTPUT.STATUS = 'FAILED') AS FAILED,
(SELECT COUNT(STATUS)  from SP_Utility_Ingestion_Compare_OUTPUT WHERE SP_Utility_Ingestion_Compare_OUTPUT.STATUS = 'PASSED') AS PASSED,
(SELECT COUNT(STATUS)  from SP_Utility_Ingestion_Compare_OUTPUT) AS TOTAL FROM SP_Utility_Ingestion_Compare_OUTPUT


GO

select cast(HEALTHPLAN as char(10)) as HEALTHPLAN, cast(FILENAME as char(20)) as FILENAME, cast(SRC_RECORD_CNT as char(10)) as SRC_RECORD_CNT, cast(TRG_RECORD_CNT as char(10)) as TRG_RECORD_CNT, cast(SOURCE_Minus_TARGET as char(10)) as SOURCE_Minus_TARGET, cast(TARGET_Minus_SOURCE as char(10)) as TARGET_Minus_SOURCE, cast(STATUS as char(10)) as STATUS,  cast(STATUS_DESC as char(250)) as STATUS_DESC from SP_Utility_Ingestion_Compare_OUTPUT

GO


SELECT '************************************************END OF REPORT*****************************************************************************'

GO
