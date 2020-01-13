
/*******************************************************
***** Script for getting Contact RID              *****
*******************************************************/

DECLARE @PermitNo VARCHAR;
--
SET @PermitNo='002-008P(RM)';
--
SELECT [FC].[FACILITY_RID],
       [FC].[CONTACT_RID],
       [FC].[FACILITY_ID_REF]
FROM [LEMIR_Stage].[dbo].[FAC_CONTACT] AS [FC]
WHERE [FC].[FACILITY_ID_REF] = @PermitNo                                                                                                                                                               
