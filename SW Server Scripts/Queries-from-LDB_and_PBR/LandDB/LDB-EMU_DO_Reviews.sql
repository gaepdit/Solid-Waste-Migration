
/*******************************************************
***** Script for SelectTopNRows command from SSMS  *****
*******************************************************/

SELECT [AutoNumber],
       [PermitNumber],
       [ComplianceStatus],
       [MajorCode],
       [MinorCodes],
       [StartDate],
       [DueDate],
       [CompletionDate],
       [InvestigatorName],
       [ReferenceNumber],
       [Dollars],
       [Comments],
       [Phase(s)],
       [Cell(s)],
       [SSMA_TimeStamp]
FROM [LandDataBase].[dbo].[EMU DO Reviews]