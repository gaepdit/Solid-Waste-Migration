
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [Postal],
       [X],
       [Y],
       [PermitNumber],
       [County],
       [FacilityAddress]
FROM [PermitByRule].[dbo].[$R1_DUP]