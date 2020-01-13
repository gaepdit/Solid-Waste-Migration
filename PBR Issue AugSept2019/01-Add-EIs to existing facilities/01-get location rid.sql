
/*******************************************************
***** Script for getting Location RID              *****
*******************************************************/

DECLARE @PermitNo VARCHAR;
--
SET @PermitNo='002-008P(RM)';
--
SELECT [FL].[FACILITY_RID],
       [FL].[LOCATION_RID],
       [FL].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_LOCATION] AS [FL]
WHERE [FL].[FACILITY_ID_REF] = @PermitNo                                                                                                                                                               
