
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [PermitNumber],
       [FacilityName],
       [OperationStatus],
       [FacilityType],
       [FacilityAddress],
       [City],
       [State],
       [ZipCode],
       [County],
       [Latitude],
       [Longitude]
FROM [PermitByRule].[dbo].[PBR_Main_Facility] AS [PMF]
WHERE([PMF].[Latitude] IS NULL
      OR [PMF].[Latitude] IN('', '*'))
     --OR [PMF].[Longitude] IS NULL
--WHERE([PMF].[ZipCode] IS NULL
--      OR [PMF].[ZipCode] IN('', '*', 'xx', 'xxx', '3', '000000', '30000'))
--WHERE([PMF].[State] IS NULL
--      OR [PMF].[State] IN('', '*', 'xxx', 'xx'))
--WHERE([PMF].[City] IS NULL
--      OR [PMF].[City] IN('xx', '', '*'))
--WHERE([PMF].[FacilityAddress] IS NULL
--      OR [PMF].[FacilityAddress] IN('', '*', 'not given', '?', 'xxx'))
--where [PMF].[Latitude] is null or [PMF].[Longitude] is null
ORDER BY 1