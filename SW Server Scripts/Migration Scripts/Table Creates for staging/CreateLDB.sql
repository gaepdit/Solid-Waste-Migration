USE [LandDataBase]
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'CONSTRAINT',N'Tonnage$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'CONSTRAINT',@level2name=N'Tonnage$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'COLUMN',N'WasteType'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'WasteType'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'COLUMN',N'Comments'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'COLUMN',N'Dollars'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'Dollars'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'COLUMN',N'AnnualFees'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'AnnualFees'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'COLUMN',N'TonsPerDay(365)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'TonsPerDay(365)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'COLUMN',N'TonnageReported'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'TonnageReported'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'COLUMN',N'ReportingQuarter'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'ReportingQuarter'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'COLUMN',N'CountyofOrigin'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'CountyofOrigin'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'COLUMN',N'State'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'State'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'COLUMN',N'SourceOfWaste'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'SourceOfWaste'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'COLUMN',N'ReportingYear'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'ReportingYear'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'COLUMN',N'FY'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'FY'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'COLUMN',N'PermitNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'PermitNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Tonnage', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', N'CONSTRAINT',N'SiteAssessment$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'CONSTRAINT',@level2name=N'SiteAssessment$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', N'COLUMN',N'Cell(s)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'Cell(s)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', N'COLUMN',N'Phase(s)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'Phase(s)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', N'COLUMN',N'Comments'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', N'COLUMN',N'Dollars'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'Dollars'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', N'COLUMN',N'InvestigatorName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', N'COLUMN',N'CompletionDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'CompletionDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', N'COLUMN',N'DueDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'DueDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', N'COLUMN',N'StartDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', N'COLUMN',N'MinorCode'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'MinorCode'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', N'COLUMN',N'MajorCode'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'MajorCode'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', N'COLUMN',N'ComplianceStatus'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', N'COLUMN',N'PermitNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'PermitNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'SiteAssessment', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'CONSTRAINT',N'RemainingCapacity$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'CONSTRAINT',@level2name=N'RemainingCapacity$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'COLUMN',N'TotalOpDaysYr'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'TotalOpDaysYr'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'COLUMN',N'Comments'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'COLUMN',N'WasteType'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'WasteType'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'COLUMN',N'Dollars'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'Dollars'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'COLUMN',N'MethodOfCalculation'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'MethodOfCalculation'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'COLUMN',N'EstimatedFillDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'EstimatedFillDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'COLUMN',N'Years Remaining'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'Years Remaining'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'COLUMN',N'RateOfFill(CYD)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'RateOfFill(CYD)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'COLUMN',N'NetVolPerYear'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'NetVolPerYear'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'COLUMN',N'AverageDailyTons'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'AverageDailyTons'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'COLUMN',N'RemainingCapacity(CY)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'RemainingCapacity(CY)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'COLUMN',N'FYReportingYear'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'FYReportingYear'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'COLUMN',N'PermitNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'PermitNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'RemainingCapacity', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Products', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'CONSTRAINT',N'Products$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'CONSTRAINT',@level2name=N'Products$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'SerialNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SerialNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Products', N'COLUMN',N'ProductsID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ProductsID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'PermitMinorCodes', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermitMinorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'PermitMinorCodes', N'CONSTRAINT',N'PermitMinorCodes$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermitMinorCodes', @level2type=N'CONSTRAINT',@level2name=N'PermitMinorCodes$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'PermitMinorCodes', N'COLUMN',N'MinorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermitMinorCodes', @level2type=N'COLUMN',@level2name=N'MinorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'PermitMinorCodes', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermitMinorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'PermitMajorCodes', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermitMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'PermitMajorCodes', N'COLUMN',N'Description'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermitMajorCodes', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'PermitMajorCodes', N'COLUMN',N'ID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermitMajorCodes', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', N'CONSTRAINT',N'Permit$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'CONSTRAINT',@level2name=N'Permit$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', N'COLUMN',N'Cell(s)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'Cell(s)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', N'COLUMN',N'Phase(s)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'Phase(s)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', N'COLUMN',N'Comments'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', N'COLUMN',N'Dollars'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'Dollars'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', N'COLUMN',N'InvestigatorName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', N'COLUMN',N'CompletionDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'CompletionDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', N'COLUMN',N'DueDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'DueDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', N'COLUMN',N'StartDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', N'COLUMN',N'MinorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'MinorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', N'COLUMN',N'MajorCode'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'MajorCode'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', N'COLUMN',N'ComplianceStatus'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', N'COLUMN',N'PermitNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'PermitNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Permit', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'OperationStatus', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationStatus'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'OperationStatus', N'CONSTRAINT',N'OperationStatus$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationStatus', @level2type=N'CONSTRAINT',@level2name=N'OperationStatus$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'OperationStatus', N'COLUMN',N'Definition'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationStatus', @level2type=N'COLUMN',@level2name=N'Definition'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'OperationStatus', N'COLUMN',N'OperationStatus'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationStatus', @level2type=N'COLUMN',@level2name=N'OperationStatus'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ModificationsMinorCodes', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModificationsMinorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ModificationsMinorCodes', N'COLUMN',N'MinorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModificationsMinorCodes', @level2type=N'COLUMN',@level2name=N'MinorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ModificationsMinorCodes', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModificationsMinorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ModificationsMajorCodes', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModificationsMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ModificationsMajorCodes', N'COLUMN',N'ModificationMajorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModificationsMajorCodes', @level2type=N'COLUMN',@level2name=N'ModificationMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ModificationsMajorCodes', N'COLUMN',N'IDNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModificationsMajorCodes', @level2type=N'COLUMN',@level2name=N'IDNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', N'CONSTRAINT',N'Modifications$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'CONSTRAINT',@level2name=N'Modifications$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', N'COLUMN',N'Cell(s)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'Cell(s)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', N'COLUMN',N'Phase(s)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'Phase(s)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', N'COLUMN',N'Comments'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', N'COLUMN',N'Dollars'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'Dollars'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', N'COLUMN',N'InvestigatorName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', N'COLUMN',N'CompletionDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'CompletionDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', N'COLUMN',N'DueDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'DueDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', N'COLUMN',N'StartDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', N'COLUMN',N'MinorCode'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'MinorCode'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', N'COLUMN',N'MajorCode'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'MajorCode'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', N'COLUMN',N'ComplianceStatus'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', N'COLUMN',N'PermitNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'PermitNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Modifications', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'MinorCodes', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MinorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'MinorCodes', N'CONSTRAINT',N'MinorCodes$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MinorCodes', @level2type=N'CONSTRAINT',@level2name=N'MinorCodes$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'MinorCodes', N'COLUMN',N'MinorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MinorCodes', @level2type=N'COLUMN',@level2name=N'MinorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'MinorCodes', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MinorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'MethaneMajorCodes', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MethaneMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'MethaneMajorCodes', N'COLUMN',N'MethaneMajorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MethaneMajorCodes', @level2type=N'COLUMN',@level2name=N'MethaneMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'MethaneMajorCodes', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MethaneMajorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane_ExportErrors', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane_ExportErrors'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane_ExportErrors', N'COLUMN',N'Row'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane_ExportErrors', @level2type=N'COLUMN',@level2name=N'Row'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane_ExportErrors', N'COLUMN',N'Field'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane_ExportErrors', @level2type=N'COLUMN',@level2name=N'Field'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane_ExportErrors', N'COLUMN',N'Error'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane_ExportErrors', @level2type=N'COLUMN',@level2name=N'Error'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane', N'COLUMN',N'Comments'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane', N'COLUMN',N'Dollars'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'Dollars'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Methane', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane', N'COLUMN',N'InvestigatorName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane', N'COLUMN',N'CompletionDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'CompletionDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane', N'COLUMN',N'DueDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'DueDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane', N'COLUMN',N'StartDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane', N'COLUMN',N'MinorCode'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'MinorCode'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane', N'COLUMN',N'MethaneMajorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'MethaneMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane', N'COLUMN',N'ComplianceStatus'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane', N'COLUMN',N'PermitNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'PermitNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Methane', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'InvestigatorListing', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvestigatorListing'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'InvestigatorListing', N'COLUMN',N'BranchProgram'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvestigatorListing', @level2type=N'COLUMN',@level2name=N'BranchProgram'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'InvestigatorListing', N'COLUMN',N'InvestigatorName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvestigatorListing', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWaterMajorCodes', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWaterMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWaterMajorCodes', N'COLUMN',N'GWAndSWMajorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWaterMajorCodes', @level2type=N'COLUMN',@level2name=N'GWAndSWMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWaterMajorCodes', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWaterMajorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWater', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWater', N'COLUMN',N'Comments'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWater', N'COLUMN',N'Dollars'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'Dollars'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWater', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWater', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWater', N'COLUMN',N'InvestigatorName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWater', N'COLUMN',N'CompletionDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'CompletionDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWater', N'COLUMN',N'DueDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'DueDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWater', N'COLUMN',N'StartDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWater', N'COLUMN',N'MinorCode'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'MinorCode'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWater', N'COLUMN',N'GWAndSWMajorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'GWAndSWMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWater', N'COLUMN',N'ComplianceStatus'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWater', N'COLUMN',N'PermitNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'PermitNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GroundAndSurfaceWater', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GIS', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GIS', N'CONSTRAINT',N'GIS$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'CONSTRAINT',@level2name=N'GIS$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GIS', N'COLUMN',N'RefPointGeographicPosition'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'RefPointGeographicPosition'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GIS', N'COLUMN',N'HorizontalReferencedDatum'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'HorizontalReferencedDatum'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GIS', N'COLUMN',N'HorizontalMethodAccuracy'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'HorizontalMethodAccuracy'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GIS', N'COLUMN',N'Accuracy Measurement Units'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'Accuracy Measurement Units'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GIS', N'COLUMN',N'HorizontalCollectionMethod'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'HorizontalCollectionMethod'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GIS', N'COLUMN',N'GISDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'GISDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GIS', N'COLUMN',N'Longitude'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'Longitude'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GIS', N'COLUMN',N'Latitude'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'Latitude'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'GIS', N'COLUMN',N'PermitNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'PermitNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Geologist Listing', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Geologist Listing'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Geologist Listing', N'COLUMN',N'County'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Geologist Listing', @level2type=N'COLUMN',@level2name=N'County'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Geologist Listing', N'COLUMN',N'Investigator'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Geologist Listing', @level2type=N'COLUMN',@level2name=N'Investigator'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FacilityTypeDescriptions', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FacilityTypeDescriptions'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FacilityTypeDescriptions', N'CONSTRAINT',N'FacilityTypeDescriptions$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FacilityTypeDescriptions', @level2type=N'CONSTRAINT',@level2name=N'FacilityTypeDescriptions$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FacilityTypeDescriptions', N'COLUMN',N'FacilityTypeDescription1'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FacilityTypeDescriptions', @level2type=N'COLUMN',@level2name=N'FacilityTypeDescription1'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FacilityTypeDescriptions', N'COLUMN',N'FacilityType1'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FacilityTypeDescriptions', @level2type=N'COLUMN',@level2name=N'FacilityType1'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'CONSTRAINT',N'FA MAIN$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'CONSTRAINT',@level2name=N'FA MAIN$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'FA_Required'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'FA_Required'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'InComplianceUntil'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InComplianceUntil'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'Comments'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'IN COMPLIANCE?'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'IN COMPLIANCE?'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'IN COMPLIANCE?'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'IN COMPLIANCE?'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'Received(butnotreviewed)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'Received(butnotreviewed)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'IN/OUT COMPL'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'IN/OUT COMPL'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'IN/OUT COMPL'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'IN/OUT COMPL'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'EPD ENGINEER'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'EPD ENGINEER'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'EPD ENGINEER'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'EPD ENGINEER'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CURRENT ASSURED COST'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CURRENT ASSURED COST'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CURRENT ASSURED COST'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CURRENT ASSURED COST'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'ORIG ASSURED COST'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ORIG ASSURED COST'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'ORIG ASSURED COST'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ORIG ASSURED COST'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CURRENT CA AMT'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CURRENT CA AMT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CURRENT CA AMT'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CURRENT CA AMT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'ORIG CA AMT'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ORIG CA AMT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'ORIG CA AMT'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ORIG CA AMT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CURRENT PC AMT'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CURRENT PC AMT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CURRENT PC AMT'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CURRENT PC AMT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CURRENT CL AMT'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CURRENT CL AMT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CURRENT CL AMT'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CURRENT CL AMT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'ORIG PC AMT'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ORIG PC AMT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'ORIG PC AMT'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ORIG PC AMT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'ORIG CL AMT'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ORIG CL AMT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'ORIG CL AMT'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ORIG CL AMT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'DISCOUNT'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DISCOUNT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'DISCOUNT'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DISCOUNT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CA BASE DATE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CA BASE DATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CA BASE DATE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CA BASE DATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'PC BASE DATE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'PC BASE DATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'PC BASE DATE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'PC BASE DATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CL BASE DATE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CL BASE DATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CL BASE DATE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CL BASE DATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'DATE FA REJECT'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DATE FA REJECT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'DATE FA REJECT'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DATE FA REJECT'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'DATE FA APPVD'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DATE FA APPVD'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'DATE FA APPVD'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DATE FA APPVD'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'DATE FA REC''D'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DATE FA REC''D'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'DATE FA REC''D'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DATE FA REC''D'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'DATE FA DUE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DATE FA DUE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'DATE FA DUE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DATE FA DUE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'FISCAL YEAR END'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'FISCAL YEAR END'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'FISCAL YEAR END'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'FISCAL YEAR END'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CLOSURE CERT DATE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CLOSURE CERT DATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CLOSURE CERT DATE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CLOSURE CERT DATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CEASEDRECEIVINGWASTEDATE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CEASEDRECEIVINGWASTEDATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'InstrumentCovers'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumentCovers'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'InstrumentCovers'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumentCovers'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'InstrumrntEndDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumrntEndDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'InstrumrntEndDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumrntEndDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'InstrumentBeginDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumentBeginDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'InstrumentBeginDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumentBeginDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'InstrumentAmountReceived'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumentAmountReceived'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'InstrumentAmountReceived'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumentAmountReceived'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'InstrumentNo'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumentNo'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'InstrumentNo'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumentNo'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'TypeInstrument'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'TypeInstrument'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'TypeInstrument'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'TypeInstrument'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'Type Year'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'Type Year'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CA RQD'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CA RQD'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'CA RQD'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CA RQD'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'PRIVATE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'PRIVATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'PRIVATE'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'PRIVATE'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'PERMIT NUMBER'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'PERMIT NUMBER'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'PERMIT NUMBER'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'PERMIT NUMBER'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'COUNTY'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'COUNTY'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'COUNTY'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'COUNTY'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'FA MAIN', N'COLUMN',N'ID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'CONSTRAINT',N'EnvironmentalMonitoring$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'CONSTRAINT',@level2name=N'EnvironmentalMonitoring$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'Comments'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'IfActive(TypeSystem)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'IfActive(TypeSystem)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'CYYearReporting'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'CYYearReporting'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'MethaneReturnedToCompliance'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'MethaneReturnedToCompliance'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'MethaneRemediationSystem(ActiveorPassive)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'MethaneRemediationSystem(ActiveorPassive)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'Methane>LELatPropertyLine'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'Methane>LELatPropertyLine'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'GWTypeOfCorrectiveMeasure'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'GWTypeOfCorrectiveMeasure'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'GWReturnedToCompliance'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'GWReturnedToCompliance'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'GWCorrectiveMeasuresImplemented'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'GWCorrectiveMeasuresImplemented'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'ACMReportSubmitted'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'ACMReportSubmitted'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'ACMWorkPlanSubmitted'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'ACMWorkPlanSubmitted'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'ACM(Required)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'ACM(Required)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'AssessmentMonitoringImplemented'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'AssessmentMonitoringImplemented'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'GWRelease'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'GWRelease'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'InvestigatorName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'PermitNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'PermitNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EnvironmentalMonitoring', N'COLUMN',N'ID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews Minor Codes', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews Minor Codes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews Minor Codes', N'CONSTRAINT',N'EMU DO Reviews Minor Codes$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews Minor Codes', @level2type=N'CONSTRAINT',@level2name=N'EMU DO Reviews Minor Codes$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews Minor Codes', N'COLUMN',N'MinorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews Minor Codes', @level2type=N'COLUMN',@level2name=N'MinorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews Minor Codes', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews Minor Codes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews Major Codes', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews Major Codes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews Major Codes', N'COLUMN',N'Description'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews Major Codes', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews Major Codes', N'COLUMN',N'ID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews Major Codes', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', N'CONSTRAINT',N'EMU DO Reviews$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'CONSTRAINT',@level2name=N'EMU DO Reviews$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', N'COLUMN',N'Cell(s)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'Cell(s)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', N'COLUMN',N'Phase(s)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'Phase(s)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', N'COLUMN',N'Comments'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', N'COLUMN',N'Dollars'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'Dollars'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', N'COLUMN',N'InvestigatorName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', N'COLUMN',N'CompletionDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'CompletionDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', N'COLUMN',N'DueDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'DueDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', N'COLUMN',N'StartDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', N'COLUMN',N'MinorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'MinorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', N'COLUMN',N'MajorCode'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'MajorCode'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', N'COLUMN',N'ComplianceStatus'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', N'COLUMN',N'PermitNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'PermitNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'EMU DO Reviews', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'CountyTable', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CountyTable'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'CountyTable', N'COLUMN',N'County'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CountyTable', @level2type=N'COLUMN',@level2name=N'County'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'CountyCountyNoRegionListing', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CountyCountyNoRegionListing'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'CountyCountyNoRegionListing', N'COLUMN',N'Region1'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CountyCountyNoRegionListing', @level2type=N'COLUMN',@level2name=N'Region1'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'CountyCountyNoRegionListing', N'COLUMN',N'CountyNo1'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CountyCountyNoRegionListing', @level2type=N'COLUMN',@level2name=N'CountyNo1'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'CountyCountyNoRegionListing', N'COLUMN',N'County1'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CountyCountyNoRegionListing', @level2type=N'COLUMN',@level2name=N'County1'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ConstructionMinorCodes', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConstructionMinorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ConstructionMinorCodes', N'CONSTRAINT',N'ConstructionMinorCodes$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConstructionMinorCodes', @level2type=N'CONSTRAINT',@level2name=N'ConstructionMinorCodes$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ConstructionMinorCodes', N'COLUMN',N'MinorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConstructionMinorCodes', @level2type=N'COLUMN',@level2name=N'MinorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ConstructionMinorCodes', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConstructionMinorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ConstructionMajorCodes', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConstructionMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ConstructionMajorCodes', N'COLUMN',N'ConstructionMajorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConstructionMajorCodes', @level2type=N'COLUMN',@level2name=N'ConstructionMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ConstructionMajorCodes', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConstructionMajorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', N'CONSTRAINT',N'Construction$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'CONSTRAINT',@level2name=N'Construction$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', N'COLUMN',N'Cell(s)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'Cell(s)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', N'COLUMN',N'Phase(s)'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'Phase(s)'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', N'COLUMN',N'Comments'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', N'COLUMN',N'Dollars'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'Dollars'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', N'COLUMN',N'Dollars'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'Dollars'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', N'COLUMN',N'InvestigatorName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', N'COLUMN',N'CompletionDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'CompletionDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', N'COLUMN',N'DueDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'DueDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', N'COLUMN',N'StartDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', N'COLUMN',N'MinorCode'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'MinorCode'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', N'COLUMN',N'ConstructionMajorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'ConstructionMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', N'COLUMN',N'ComplianceStatus'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', N'COLUMN',N'PermitNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'PermitNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Construction', N'COLUMN',N'ID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspections', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspections', N'COLUMN',N'Comments'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspections', N'COLUMN',N'Dollars'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'Dollars'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspections', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspections', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspections', N'COLUMN',N'InvestigatorName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspections', N'COLUMN',N'CompletionDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'CompletionDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspections', N'COLUMN',N'DueDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'DueDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspections', N'COLUMN',N'SLRScore'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'SLRScore'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspections', N'COLUMN',N'MinorCode'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'MinorCode'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspections', N'COLUMN',N'ComplianceMajorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'ComplianceMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspections', N'COLUMN',N'ComplianceStatus'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspections', N'COLUMN',N'MainPermitNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'MainPermitNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspections', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspectionMajorCodes', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspectionMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspectionMajorCodes', N'COLUMN',N'ComplianceMajorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspectionMajorCodes', @level2type=N'COLUMN',@level2name=N'ComplianceMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ComplianceInspectionMajorCodes', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspectionMajorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ClosureMinorCodes', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClosureMinorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ClosureMinorCodes', N'CONSTRAINT',N'ClosureMinorCodes$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClosureMinorCodes', @level2type=N'CONSTRAINT',@level2name=N'ClosureMinorCodes$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ClosureMinorCodes', N'COLUMN',N'MinorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClosureMinorCodes', @level2type=N'COLUMN',@level2name=N'MinorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ClosureMinorCodes', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClosureMinorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ClosureMajorCodes', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClosureMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ClosureMajorCodes', N'COLUMN',N'ClosureMajorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClosureMajorCodes', @level2type=N'COLUMN',@level2name=N'ClosureMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'ClosureMajorCodes', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClosureMajorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Closure', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Closure', N'CONSTRAINT',N'Closure$PrimaryKey'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'CONSTRAINT',@level2name=N'Closure$PrimaryKey'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Closure', N'COLUMN',N'Comments'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Closure', N'COLUMN',N'Dollars'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'Dollars'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Closure', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Closure', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Closure', N'COLUMN',N'InvestigatorName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Closure', N'COLUMN',N'CompletionDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'CompletionDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Closure', N'COLUMN',N'DueDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'DueDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Closure', N'COLUMN',N'StartDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Closure', N'COLUMN',N'MinorCode'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'MinorCode'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Closure', N'COLUMN',N'ClosureMajorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'ClosureMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Closure', N'COLUMN',N'ComplianceStatus'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Closure', N'COLUMN',N'PermitNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'PermitNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'Closure', N'COLUMN',N'ID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'CityCountyReference', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CityCountyReference'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'CityCountyReference', N'COLUMN',N'AuotNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CityCountyReference', @level2type=N'COLUMN',@level2name=N'AuotNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'CityCountyReference', N'COLUMN',N'County1'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CityCountyReference', @level2type=N'COLUMN',@level2name=N'County1'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'CityCountyReference', N'COLUMN',N'City1'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CityCountyReference', @level2type=N'COLUMN',@level2name=N'City1'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasuresMajorCodes', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasuresMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasuresMajorCodes', N'COLUMN',N'ACMMajorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasuresMajorCodes', @level2type=N'COLUMN',@level2name=N'ACMMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasuresMajorCodes', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasuresMajorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasures', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasures', N'COLUMN',N'Comments'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'Comments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasures', N'COLUMN',N'Dollars'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'Dollars'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasures', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasures', N'COLUMN',N'ReferenceNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasures', N'COLUMN',N'InvestigatorName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasures', N'COLUMN',N'CompletionDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'CompletionDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasures', N'COLUMN',N'DueDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'DueDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasures', N'COLUMN',N'StartDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasures', N'COLUMN',N'MinorCode'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'MinorCode'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasures', N'COLUMN',N'ACMMajorCodes'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'ACMMajorCodes'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasures', N'COLUMN',N'ComplianceStatus'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasures', N'COLUMN',N'PermitNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'PermitNumber'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_SSMA_SOURCE' , N'SCHEMA',N'dbo', N'TABLE',N'AssessmentOfCorrectiveMeasures', N'COLUMN',N'AutoNumber'))
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'AutoNumber'
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Tonnage$State$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tonnage]'))
ALTER TABLE [dbo].[Tonnage] DROP CONSTRAINT [SSMA_CC$Tonnage$State$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Tonnage$SourceOfWaste$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tonnage]'))
ALTER TABLE [dbo].[Tonnage] DROP CONSTRAINT [SSMA_CC$Tonnage$SourceOfWaste$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Tonnage$ReportingYear$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tonnage]'))
ALTER TABLE [dbo].[Tonnage] DROP CONSTRAINT [SSMA_CC$Tonnage$ReportingYear$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Tonnage$ReportingQuarter$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tonnage]'))
ALTER TABLE [dbo].[Tonnage] DROP CONSTRAINT [SSMA_CC$Tonnage$ReportingQuarter$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Tonnage$ReferenceNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tonnage]'))
ALTER TABLE [dbo].[Tonnage] DROP CONSTRAINT [SSMA_CC$Tonnage$ReferenceNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Tonnage$PermitNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tonnage]'))
ALTER TABLE [dbo].[Tonnage] DROP CONSTRAINT [SSMA_CC$Tonnage$PermitNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Tonnage$CountyofOrigin$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tonnage]'))
ALTER TABLE [dbo].[Tonnage] DROP CONSTRAINT [SSMA_CC$Tonnage$CountyofOrigin$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Tonnage$Comments$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tonnage]'))
ALTER TABLE [dbo].[Tonnage] DROP CONSTRAINT [SSMA_CC$Tonnage$Comments$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$SiteAssessment$ReferenceNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[SiteAssessment]'))
ALTER TABLE [dbo].[SiteAssessment] DROP CONSTRAINT [SSMA_CC$SiteAssessment$ReferenceNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$SiteAssessment$Phase(s)$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[SiteAssessment]'))
ALTER TABLE [dbo].[SiteAssessment] DROP CONSTRAINT [SSMA_CC$SiteAssessment$Phase(s)$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$SiteAssessment$PermitNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[SiteAssessment]'))
ALTER TABLE [dbo].[SiteAssessment] DROP CONSTRAINT [SSMA_CC$SiteAssessment$PermitNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$SiteAssessment$MajorCode$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[SiteAssessment]'))
ALTER TABLE [dbo].[SiteAssessment] DROP CONSTRAINT [SSMA_CC$SiteAssessment$MajorCode$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$SiteAssessment$InvestigatorName$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[SiteAssessment]'))
ALTER TABLE [dbo].[SiteAssessment] DROP CONSTRAINT [SSMA_CC$SiteAssessment$InvestigatorName$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$SiteAssessment$ComplianceStatus$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[SiteAssessment]'))
ALTER TABLE [dbo].[SiteAssessment] DROP CONSTRAINT [SSMA_CC$SiteAssessment$ComplianceStatus$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$SiteAssessment$Comments$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[SiteAssessment]'))
ALTER TABLE [dbo].[SiteAssessment] DROP CONSTRAINT [SSMA_CC$SiteAssessment$Comments$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$SiteAssessment$Cell(s)$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[SiteAssessment]'))
ALTER TABLE [dbo].[SiteAssessment] DROP CONSTRAINT [SSMA_CC$SiteAssessment$Cell(s)$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$RemainingCapacity$ReferenceNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[RemainingCapacity]'))
ALTER TABLE [dbo].[RemainingCapacity] DROP CONSTRAINT [SSMA_CC$RemainingCapacity$ReferenceNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$RemainingCapacity$PermitNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[RemainingCapacity]'))
ALTER TABLE [dbo].[RemainingCapacity] DROP CONSTRAINT [SSMA_CC$RemainingCapacity$PermitNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$RemainingCapacity$MethodOfCalculation$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[RemainingCapacity]'))
ALTER TABLE [dbo].[RemainingCapacity] DROP CONSTRAINT [SSMA_CC$RemainingCapacity$MethodOfCalculation$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$RemainingCapacity$FYReportingYear$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[RemainingCapacity]'))
ALTER TABLE [dbo].[RemainingCapacity] DROP CONSTRAINT [SSMA_CC$RemainingCapacity$FYReportingYear$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$RemainingCapacity$Comments$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[RemainingCapacity]'))
ALTER TABLE [dbo].[RemainingCapacity] DROP CONSTRAINT [SSMA_CC$RemainingCapacity$Comments$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Products$SerialNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [SSMA_CC$Products$SerialNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$PermitMinorCodes$MinorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[PermitMinorCodes]'))
ALTER TABLE [dbo].[PermitMinorCodes] DROP CONSTRAINT [SSMA_CC$PermitMinorCodes$MinorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$PermitMajorCodes$Description$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[PermitMajorCodes]'))
ALTER TABLE [dbo].[PermitMajorCodes] DROP CONSTRAINT [SSMA_CC$PermitMajorCodes$Description$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Permit$ReferenceNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Permit]'))
ALTER TABLE [dbo].[Permit] DROP CONSTRAINT [SSMA_CC$Permit$ReferenceNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Permit$Phase(s)$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Permit]'))
ALTER TABLE [dbo].[Permit] DROP CONSTRAINT [SSMA_CC$Permit$Phase(s)$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Permit$PermitNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Permit]'))
ALTER TABLE [dbo].[Permit] DROP CONSTRAINT [SSMA_CC$Permit$PermitNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Permit$MajorCode$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Permit]'))
ALTER TABLE [dbo].[Permit] DROP CONSTRAINT [SSMA_CC$Permit$MajorCode$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Permit$InvestigatorName$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Permit]'))
ALTER TABLE [dbo].[Permit] DROP CONSTRAINT [SSMA_CC$Permit$InvestigatorName$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Permit$ComplianceStatus$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Permit]'))
ALTER TABLE [dbo].[Permit] DROP CONSTRAINT [SSMA_CC$Permit$ComplianceStatus$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Permit$Cell(s)$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Permit]'))
ALTER TABLE [dbo].[Permit] DROP CONSTRAINT [SSMA_CC$Permit$Cell(s)$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$OperationStatus$OperationStatus$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[OperationStatus]'))
ALTER TABLE [dbo].[OperationStatus] DROP CONSTRAINT [SSMA_CC$OperationStatus$OperationStatus$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$OperationStatus$Definition$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[OperationStatus]'))
ALTER TABLE [dbo].[OperationStatus] DROP CONSTRAINT [SSMA_CC$OperationStatus$Definition$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$ModificationsMinorCodes$MinorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[ModificationsMinorCodes]'))
ALTER TABLE [dbo].[ModificationsMinorCodes] DROP CONSTRAINT [SSMA_CC$ModificationsMinorCodes$MinorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$ModificationsMajorCodes$ModificationMajorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[ModificationsMajorCodes]'))
ALTER TABLE [dbo].[ModificationsMajorCodes] DROP CONSTRAINT [SSMA_CC$ModificationsMajorCodes$ModificationMajorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Modifications$ReferenceNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modifications]'))
ALTER TABLE [dbo].[Modifications] DROP CONSTRAINT [SSMA_CC$Modifications$ReferenceNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Modifications$Phase(s)$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modifications]'))
ALTER TABLE [dbo].[Modifications] DROP CONSTRAINT [SSMA_CC$Modifications$Phase(s)$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Modifications$PermitNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modifications]'))
ALTER TABLE [dbo].[Modifications] DROP CONSTRAINT [SSMA_CC$Modifications$PermitNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Modifications$MajorCode$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modifications]'))
ALTER TABLE [dbo].[Modifications] DROP CONSTRAINT [SSMA_CC$Modifications$MajorCode$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Modifications$InvestigatorName$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modifications]'))
ALTER TABLE [dbo].[Modifications] DROP CONSTRAINT [SSMA_CC$Modifications$InvestigatorName$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Modifications$ComplianceStatus$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modifications]'))
ALTER TABLE [dbo].[Modifications] DROP CONSTRAINT [SSMA_CC$Modifications$ComplianceStatus$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Modifications$Comments$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modifications]'))
ALTER TABLE [dbo].[Modifications] DROP CONSTRAINT [SSMA_CC$Modifications$Comments$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Modifications$Cell(s)$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Modifications]'))
ALTER TABLE [dbo].[Modifications] DROP CONSTRAINT [SSMA_CC$Modifications$Cell(s)$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$MinorCodes$MinorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[MinorCodes]'))
ALTER TABLE [dbo].[MinorCodes] DROP CONSTRAINT [SSMA_CC$MinorCodes$MinorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$MethaneMajorCodes$MethaneMajorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[MethaneMajorCodes]'))
ALTER TABLE [dbo].[MethaneMajorCodes] DROP CONSTRAINT [SSMA_CC$MethaneMajorCodes$MethaneMajorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Methane_ExportErrors$Field$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Methane_ExportErrors]'))
ALTER TABLE [dbo].[Methane_ExportErrors] DROP CONSTRAINT [SSMA_CC$Methane_ExportErrors$Field$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Methane_ExportErrors$Error$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Methane_ExportErrors]'))
ALTER TABLE [dbo].[Methane_ExportErrors] DROP CONSTRAINT [SSMA_CC$Methane_ExportErrors$Error$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Methane$ReferenceNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Methane]'))
ALTER TABLE [dbo].[Methane] DROP CONSTRAINT [SSMA_CC$Methane$ReferenceNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Methane$PermitNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Methane]'))
ALTER TABLE [dbo].[Methane] DROP CONSTRAINT [SSMA_CC$Methane$PermitNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Methane$MethaneMajorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Methane]'))
ALTER TABLE [dbo].[Methane] DROP CONSTRAINT [SSMA_CC$Methane$MethaneMajorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Methane$InvestigatorName$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Methane]'))
ALTER TABLE [dbo].[Methane] DROP CONSTRAINT [SSMA_CC$Methane$InvestigatorName$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Methane$ComplianceStatus$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Methane]'))
ALTER TABLE [dbo].[Methane] DROP CONSTRAINT [SSMA_CC$Methane$ComplianceStatus$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Methane$Comments$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Methane]'))
ALTER TABLE [dbo].[Methane] DROP CONSTRAINT [SSMA_CC$Methane$Comments$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$InvestigatorListing$InvestigatorName$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestigatorListing]'))
ALTER TABLE [dbo].[InvestigatorListing] DROP CONSTRAINT [SSMA_CC$InvestigatorListing$InvestigatorName$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$InvestigatorListing$BranchProgram$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvestigatorListing]'))
ALTER TABLE [dbo].[InvestigatorListing] DROP CONSTRAINT [SSMA_CC$InvestigatorListing$BranchProgram$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$GroundAndSurfaceWaterMajorCodes$GWAndSWMajorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroundAndSurfaceWaterMajorCodes]'))
ALTER TABLE [dbo].[GroundAndSurfaceWaterMajorCodes] DROP CONSTRAINT [SSMA_CC$GroundAndSurfaceWaterMajorCodes$GWAndSWMajorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$GroundAndSurfaceWater$ReferenceNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroundAndSurfaceWater]'))
ALTER TABLE [dbo].[GroundAndSurfaceWater] DROP CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$ReferenceNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$GroundAndSurfaceWater$PermitNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroundAndSurfaceWater]'))
ALTER TABLE [dbo].[GroundAndSurfaceWater] DROP CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$PermitNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$GroundAndSurfaceWater$InvestigatorName$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroundAndSurfaceWater]'))
ALTER TABLE [dbo].[GroundAndSurfaceWater] DROP CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$InvestigatorName$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$GroundAndSurfaceWater$GWAndSWMajorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroundAndSurfaceWater]'))
ALTER TABLE [dbo].[GroundAndSurfaceWater] DROP CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$GWAndSWMajorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$GroundAndSurfaceWater$ComplianceStatus$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroundAndSurfaceWater]'))
ALTER TABLE [dbo].[GroundAndSurfaceWater] DROP CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$ComplianceStatus$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$GroundAndSurfaceWater$Comments$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroundAndSurfaceWater]'))
ALTER TABLE [dbo].[GroundAndSurfaceWater] DROP CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$Comments$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$GIS$RefPointGeographicPosition$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[GIS]'))
ALTER TABLE [dbo].[GIS] DROP CONSTRAINT [SSMA_CC$GIS$RefPointGeographicPosition$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$GIS$PermitNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[GIS]'))
ALTER TABLE [dbo].[GIS] DROP CONSTRAINT [SSMA_CC$GIS$PermitNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$GIS$HorizontalReferencedDatum$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[GIS]'))
ALTER TABLE [dbo].[GIS] DROP CONSTRAINT [SSMA_CC$GIS$HorizontalReferencedDatum$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$GIS$HorizontalMethodAccuracy$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[GIS]'))
ALTER TABLE [dbo].[GIS] DROP CONSTRAINT [SSMA_CC$GIS$HorizontalMethodAccuracy$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$GIS$HorizontalCollectionMethod$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[GIS]'))
ALTER TABLE [dbo].[GIS] DROP CONSTRAINT [SSMA_CC$GIS$HorizontalCollectionMethod$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$GIS$Accuracy Measurement Units$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[GIS]'))
ALTER TABLE [dbo].[GIS] DROP CONSTRAINT [SSMA_CC$GIS$Accuracy Measurement Units$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Geologist Listing$Investigator$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Geologist Listing]'))
ALTER TABLE [dbo].[Geologist Listing] DROP CONSTRAINT [SSMA_CC$Geologist Listing$Investigator$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Geologist Listing$County$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Geologist Listing]'))
ALTER TABLE [dbo].[Geologist Listing] DROP CONSTRAINT [SSMA_CC$Geologist Listing$County$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$FacilityTypeDescriptions$FacilityTypeDescription1$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[FacilityTypeDescriptions]'))
ALTER TABLE [dbo].[FacilityTypeDescriptions] DROP CONSTRAINT [SSMA_CC$FacilityTypeDescriptions$FacilityTypeDescription1$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$FacilityTypeDescriptions$FacilityType1$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[FacilityTypeDescriptions]'))
ALTER TABLE [dbo].[FacilityTypeDescriptions] DROP CONSTRAINT [SSMA_CC$FacilityTypeDescriptions$FacilityType1$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$FA MAIN$TypeInstrument$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[FA MAIN]'))
ALTER TABLE [dbo].[FA MAIN] DROP CONSTRAINT [SSMA_CC$FA MAIN$TypeInstrument$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$FA MAIN$Type Year$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[FA MAIN]'))
ALTER TABLE [dbo].[FA MAIN] DROP CONSTRAINT [SSMA_CC$FA MAIN$Type Year$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$FA MAIN$Received(butnotreviewed)$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[FA MAIN]'))
ALTER TABLE [dbo].[FA MAIN] DROP CONSTRAINT [SSMA_CC$FA MAIN$Received(butnotreviewed)$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$FA MAIN$PERMIT NUMBER$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[FA MAIN]'))
ALTER TABLE [dbo].[FA MAIN] DROP CONSTRAINT [SSMA_CC$FA MAIN$PERMIT NUMBER$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$FA MAIN$InstrumentNo$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[FA MAIN]'))
ALTER TABLE [dbo].[FA MAIN] DROP CONSTRAINT [SSMA_CC$FA MAIN$InstrumentNo$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$FA MAIN$InstrumentCovers$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[FA MAIN]'))
ALTER TABLE [dbo].[FA MAIN] DROP CONSTRAINT [SSMA_CC$FA MAIN$InstrumentCovers$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$FA MAIN$IN/OUT COMPL$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[FA MAIN]'))
ALTER TABLE [dbo].[FA MAIN] DROP CONSTRAINT [SSMA_CC$FA MAIN$IN/OUT COMPL$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$FA MAIN$IN COMPLIANCE?$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[FA MAIN]'))
ALTER TABLE [dbo].[FA MAIN] DROP CONSTRAINT [SSMA_CC$FA MAIN$IN COMPLIANCE?$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$FA MAIN$EPD ENGINEER$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[FA MAIN]'))
ALTER TABLE [dbo].[FA MAIN] DROP CONSTRAINT [SSMA_CC$FA MAIN$EPD ENGINEER$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$FA MAIN$COUNTY$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[FA MAIN]'))
ALTER TABLE [dbo].[FA MAIN] DROP CONSTRAINT [SSMA_CC$FA MAIN$COUNTY$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EnvironmentalMonitoring$PermitNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnvironmentalMonitoring]'))
ALTER TABLE [dbo].[EnvironmentalMonitoring] DROP CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$PermitNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EnvironmentalMonitoring$MethaneReturnedToCompliance$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnvironmentalMonitoring]'))
ALTER TABLE [dbo].[EnvironmentalMonitoring] DROP CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$MethaneReturnedToCompliance$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EnvironmentalMonitoring$MethaneRemediationSystem(ActiveorPassive)$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnvironmentalMonitoring]'))
ALTER TABLE [dbo].[EnvironmentalMonitoring] DROP CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$MethaneRemediationSystem(ActiveorPassive)$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EnvironmentalMonitoring$Methane>LELatPropertyLine$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnvironmentalMonitoring]'))
ALTER TABLE [dbo].[EnvironmentalMonitoring] DROP CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$Methane>LELatPropertyLine$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EnvironmentalMonitoring$InvestigatorName$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnvironmentalMonitoring]'))
ALTER TABLE [dbo].[EnvironmentalMonitoring] DROP CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$InvestigatorName$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EnvironmentalMonitoring$IfActive(TypeSystem)$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnvironmentalMonitoring]'))
ALTER TABLE [dbo].[EnvironmentalMonitoring] DROP CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$IfActive(TypeSystem)$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EnvironmentalMonitoring$GWTypeOfCorrectiveMeasure$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnvironmentalMonitoring]'))
ALTER TABLE [dbo].[EnvironmentalMonitoring] DROP CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$GWTypeOfCorrectiveMeasure$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EnvironmentalMonitoring$GWReturnedToCompliance$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnvironmentalMonitoring]'))
ALTER TABLE [dbo].[EnvironmentalMonitoring] DROP CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$GWReturnedToCompliance$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EnvironmentalMonitoring$GWRelease$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnvironmentalMonitoring]'))
ALTER TABLE [dbo].[EnvironmentalMonitoring] DROP CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$GWRelease$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EnvironmentalMonitoring$GWCorrectiveMeasuresImplemented$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnvironmentalMonitoring]'))
ALTER TABLE [dbo].[EnvironmentalMonitoring] DROP CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$GWCorrectiveMeasuresImplemented$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EnvironmentalMonitoring$Comments$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnvironmentalMonitoring]'))
ALTER TABLE [dbo].[EnvironmentalMonitoring] DROP CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$Comments$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EnvironmentalMonitoring$AssessmentMonitoringImplemented$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnvironmentalMonitoring]'))
ALTER TABLE [dbo].[EnvironmentalMonitoring] DROP CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$AssessmentMonitoringImplemented$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EnvironmentalMonitoring$ACMWorkPlanSubmitted$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnvironmentalMonitoring]'))
ALTER TABLE [dbo].[EnvironmentalMonitoring] DROP CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$ACMWorkPlanSubmitted$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EnvironmentalMonitoring$ACMReportSubmitted$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnvironmentalMonitoring]'))
ALTER TABLE [dbo].[EnvironmentalMonitoring] DROP CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$ACMReportSubmitted$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EnvironmentalMonitoring$ACM(Required)$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnvironmentalMonitoring]'))
ALTER TABLE [dbo].[EnvironmentalMonitoring] DROP CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$ACM(Required)$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EMU DO Reviews Minor Codes$MinorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EMU DO Reviews Minor Codes]'))
ALTER TABLE [dbo].[EMU DO Reviews Minor Codes] DROP CONSTRAINT [SSMA_CC$EMU DO Reviews Minor Codes$MinorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EMU DO Reviews Major Codes$Description$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EMU DO Reviews Major Codes]'))
ALTER TABLE [dbo].[EMU DO Reviews Major Codes] DROP CONSTRAINT [SSMA_CC$EMU DO Reviews Major Codes$Description$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EMU DO Reviews$ReferenceNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EMU DO Reviews]'))
ALTER TABLE [dbo].[EMU DO Reviews] DROP CONSTRAINT [SSMA_CC$EMU DO Reviews$ReferenceNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EMU DO Reviews$Phase(s)$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EMU DO Reviews]'))
ALTER TABLE [dbo].[EMU DO Reviews] DROP CONSTRAINT [SSMA_CC$EMU DO Reviews$Phase(s)$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EMU DO Reviews$PermitNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EMU DO Reviews]'))
ALTER TABLE [dbo].[EMU DO Reviews] DROP CONSTRAINT [SSMA_CC$EMU DO Reviews$PermitNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EMU DO Reviews$MajorCode$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EMU DO Reviews]'))
ALTER TABLE [dbo].[EMU DO Reviews] DROP CONSTRAINT [SSMA_CC$EMU DO Reviews$MajorCode$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EMU DO Reviews$InvestigatorName$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EMU DO Reviews]'))
ALTER TABLE [dbo].[EMU DO Reviews] DROP CONSTRAINT [SSMA_CC$EMU DO Reviews$InvestigatorName$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EMU DO Reviews$ComplianceStatus$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EMU DO Reviews]'))
ALTER TABLE [dbo].[EMU DO Reviews] DROP CONSTRAINT [SSMA_CC$EMU DO Reviews$ComplianceStatus$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$EMU DO Reviews$Cell(s)$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[EMU DO Reviews]'))
ALTER TABLE [dbo].[EMU DO Reviews] DROP CONSTRAINT [SSMA_CC$EMU DO Reviews$Cell(s)$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$CountyTable$County$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[CountyTable]'))
ALTER TABLE [dbo].[CountyTable] DROP CONSTRAINT [SSMA_CC$CountyTable$County$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$CountyCountyNoRegionListing$Region1$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[CountyCountyNoRegionListing]'))
ALTER TABLE [dbo].[CountyCountyNoRegionListing] DROP CONSTRAINT [SSMA_CC$CountyCountyNoRegionListing$Region1$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$CountyCountyNoRegionListing$CountyNo1$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[CountyCountyNoRegionListing]'))
ALTER TABLE [dbo].[CountyCountyNoRegionListing] DROP CONSTRAINT [SSMA_CC$CountyCountyNoRegionListing$CountyNo1$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$CountyCountyNoRegionListing$County1$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[CountyCountyNoRegionListing]'))
ALTER TABLE [dbo].[CountyCountyNoRegionListing] DROP CONSTRAINT [SSMA_CC$CountyCountyNoRegionListing$County1$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$ConstructionMinorCodes$MinorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConstructionMinorCodes]'))
ALTER TABLE [dbo].[ConstructionMinorCodes] DROP CONSTRAINT [SSMA_CC$ConstructionMinorCodes$MinorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$ConstructionMajorCodes$ConstructionMajorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[ConstructionMajorCodes]'))
ALTER TABLE [dbo].[ConstructionMajorCodes] DROP CONSTRAINT [SSMA_CC$ConstructionMajorCodes$ConstructionMajorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Construction$ReferenceNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Construction]'))
ALTER TABLE [dbo].[Construction] DROP CONSTRAINT [SSMA_CC$Construction$ReferenceNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Construction$Phase(s)$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Construction]'))
ALTER TABLE [dbo].[Construction] DROP CONSTRAINT [SSMA_CC$Construction$Phase(s)$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Construction$PermitNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Construction]'))
ALTER TABLE [dbo].[Construction] DROP CONSTRAINT [SSMA_CC$Construction$PermitNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Construction$InvestigatorName$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Construction]'))
ALTER TABLE [dbo].[Construction] DROP CONSTRAINT [SSMA_CC$Construction$InvestigatorName$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Construction$ConstructionMajorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Construction]'))
ALTER TABLE [dbo].[Construction] DROP CONSTRAINT [SSMA_CC$Construction$ConstructionMajorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Construction$ComplianceStatus$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Construction]'))
ALTER TABLE [dbo].[Construction] DROP CONSTRAINT [SSMA_CC$Construction$ComplianceStatus$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Construction$Comments$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Construction]'))
ALTER TABLE [dbo].[Construction] DROP CONSTRAINT [SSMA_CC$Construction$Comments$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Construction$Cell(s)$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Construction]'))
ALTER TABLE [dbo].[Construction] DROP CONSTRAINT [SSMA_CC$Construction$Cell(s)$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$ComplianceInspections$ReferenceNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplianceInspections]'))
ALTER TABLE [dbo].[ComplianceInspections] DROP CONSTRAINT [SSMA_CC$ComplianceInspections$ReferenceNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$ComplianceInspections$MainPermitNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplianceInspections]'))
ALTER TABLE [dbo].[ComplianceInspections] DROP CONSTRAINT [SSMA_CC$ComplianceInspections$MainPermitNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$ComplianceInspections$InvestigatorName$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplianceInspections]'))
ALTER TABLE [dbo].[ComplianceInspections] DROP CONSTRAINT [SSMA_CC$ComplianceInspections$InvestigatorName$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$ComplianceInspections$ComplianceStatus$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplianceInspections]'))
ALTER TABLE [dbo].[ComplianceInspections] DROP CONSTRAINT [SSMA_CC$ComplianceInspections$ComplianceStatus$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$ComplianceInspections$ComplianceMajorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplianceInspections]'))
ALTER TABLE [dbo].[ComplianceInspections] DROP CONSTRAINT [SSMA_CC$ComplianceInspections$ComplianceMajorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$ComplianceInspections$Comments$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplianceInspections]'))
ALTER TABLE [dbo].[ComplianceInspections] DROP CONSTRAINT [SSMA_CC$ComplianceInspections$Comments$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$ComplianceInspectionMajorCodes$ComplianceMajorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[ComplianceInspectionMajorCodes]'))
ALTER TABLE [dbo].[ComplianceInspectionMajorCodes] DROP CONSTRAINT [SSMA_CC$ComplianceInspectionMajorCodes$ComplianceMajorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$ClosureMinorCodes$MinorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClosureMinorCodes]'))
ALTER TABLE [dbo].[ClosureMinorCodes] DROP CONSTRAINT [SSMA_CC$ClosureMinorCodes$MinorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$ClosureMajorCodes$ClosureMajorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClosureMajorCodes]'))
ALTER TABLE [dbo].[ClosureMajorCodes] DROP CONSTRAINT [SSMA_CC$ClosureMajorCodes$ClosureMajorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Closure$ReferenceNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Closure]'))
ALTER TABLE [dbo].[Closure] DROP CONSTRAINT [SSMA_CC$Closure$ReferenceNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Closure$PermitNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Closure]'))
ALTER TABLE [dbo].[Closure] DROP CONSTRAINT [SSMA_CC$Closure$PermitNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Closure$InvestigatorName$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Closure]'))
ALTER TABLE [dbo].[Closure] DROP CONSTRAINT [SSMA_CC$Closure$InvestigatorName$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Closure$ComplianceStatus$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Closure]'))
ALTER TABLE [dbo].[Closure] DROP CONSTRAINT [SSMA_CC$Closure$ComplianceStatus$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Closure$Comments$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Closure]'))
ALTER TABLE [dbo].[Closure] DROP CONSTRAINT [SSMA_CC$Closure$Comments$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$Closure$ClosureMajorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[Closure]'))
ALTER TABLE [dbo].[Closure] DROP CONSTRAINT [SSMA_CC$Closure$ClosureMajorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$CityCountyReference$County1$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[CityCountyReference]'))
ALTER TABLE [dbo].[CityCountyReference] DROP CONSTRAINT [SSMA_CC$CityCountyReference$County1$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$CityCountyReference$City1$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[CityCountyReference]'))
ALTER TABLE [dbo].[CityCountyReference] DROP CONSTRAINT [SSMA_CC$CityCountyReference$City1$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$AssessmentOfCorrectiveMeasuresMajorCodes$ACMMajorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssessmentOfCorrectiveMeasuresMajorCodes]'))
ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasuresMajorCodes] DROP CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasuresMajorCodes$ACMMajorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$AssessmentOfCorrectiveMeasures$ReferenceNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssessmentOfCorrectiveMeasures]'))
ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures] DROP CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$ReferenceNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$AssessmentOfCorrectiveMeasures$PermitNumber$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssessmentOfCorrectiveMeasures]'))
ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures] DROP CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$PermitNumber$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$AssessmentOfCorrectiveMeasures$InvestigatorName$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssessmentOfCorrectiveMeasures]'))
ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures] DROP CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$InvestigatorName$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$AssessmentOfCorrectiveMeasures$ComplianceStatus$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssessmentOfCorrectiveMeasures]'))
ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures] DROP CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$ComplianceStatus$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$AssessmentOfCorrectiveMeasures$Comments$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssessmentOfCorrectiveMeasures]'))
ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures] DROP CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$Comments$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SSMA_CC$AssessmentOfCorrectiveMeasures$ACMMajorCodes$disallow_zero_length]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssessmentOfCorrectiveMeasures]'))
ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures] DROP CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$ACMMajorCodes$disallow_zero_length]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tonnage__Dollars__318258D2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tonnage] DROP CONSTRAINT [DF__Tonnage__Dollars__318258D2]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tonnage__AnnualF__308E3499]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tonnage] DROP CONSTRAINT [DF__Tonnage__AnnualF__308E3499]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tonnage__TonsPer__2F9A1060]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tonnage] DROP CONSTRAINT [DF__Tonnage__TonsPer__2F9A1060]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tonnage__Tonnage__2EA5EC27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tonnage] DROP CONSTRAINT [DF__Tonnage__Tonnage__2EA5EC27]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Tonnage__FY__2DB1C7EE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tonnage] DROP CONSTRAINT [DF__Tonnage__FY__2DB1C7EE]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SiteAsses__Dolla__2CBDA3B5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SiteAssessment] DROP CONSTRAINT [DF__SiteAsses__Dolla__2CBDA3B5]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SiteAsses__Minor__2BC97F7C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SiteAssessment] DROP CONSTRAINT [DF__SiteAsses__Minor__2BC97F7C]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SiteAsses__Major__2AD55B43]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SiteAssessment] DROP CONSTRAINT [DF__SiteAsses__Major__2AD55B43]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Remaining__Dolla__29E1370A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RemainingCapacity] DROP CONSTRAINT [DF__Remaining__Dolla__29E1370A]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Remaining__Years__28ED12D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RemainingCapacity] DROP CONSTRAINT [DF__Remaining__Years__28ED12D1]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Remaining__RateO__27F8EE98]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RemainingCapacity] DROP CONSTRAINT [DF__Remaining__RateO__27F8EE98]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Remaining__Avera__2704CA5F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RemainingCapacity] DROP CONSTRAINT [DF__Remaining__Avera__2704CA5F]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Remaining__Remai__2610A626]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RemainingCapacity] DROP CONSTRAINT [DF__Remaining__Remai__2610A626]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Permit__Dollars__251C81ED]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Permit] DROP CONSTRAINT [DF__Permit__Dollars__251C81ED]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Permit__MinorCod__24285DB4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Permit] DROP CONSTRAINT [DF__Permit__MinorCod__24285DB4]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Modificat__Dolla__2334397B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Modifications] DROP CONSTRAINT [DF__Modificat__Dolla__2334397B]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Modificat__Minor__22401542]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Modifications] DROP CONSTRAINT [DF__Modificat__Minor__22401542]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Methane__Dollars__214BF109]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Methane] DROP CONSTRAINT [DF__Methane__Dollars__214BF109]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Methane__MinorCo__2057CCD0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Methane] DROP CONSTRAINT [DF__Methane__MinorCo__2057CCD0]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__GroundAnd__Dolla__19AACF41]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GroundAndSurfaceWater] DROP CONSTRAINT [DF__GroundAnd__Dolla__19AACF41]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__GroundAnd__Minor__18B6AB08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GroundAndSurfaceWater] DROP CONSTRAINT [DF__GroundAnd__Minor__18B6AB08]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__GIS__Longitude__17C286CF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GIS] DROP CONSTRAINT [DF__GIS__Longitude__17C286CF]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__GIS__Latitude__16CE6296]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GIS] DROP CONSTRAINT [DF__GIS__Latitude__16CE6296]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__FA MAIN__FA_Requ__15DA3E5D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FA MAIN] DROP CONSTRAINT [DF__FA MAIN__FA_Requ__15DA3E5D]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__FA MAIN__DISCOUN__14E61A24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FA MAIN] DROP CONSTRAINT [DF__FA MAIN__DISCOUN__14E61A24]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__FA MAIN__Instrum__13F1F5EB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FA MAIN] DROP CONSTRAINT [DF__FA MAIN__Instrum__13F1F5EB]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__FA MAIN__CA RQD__12FDD1B2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FA MAIN] DROP CONSTRAINT [DF__FA MAIN__CA RQD__12FDD1B2]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__FA MAIN__PRIVATE__1209AD79]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FA MAIN] DROP CONSTRAINT [DF__FA MAIN__PRIVATE__1209AD79]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Environme__CYYea__11158940]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EnvironmentalMonitoring] DROP CONSTRAINT [DF__Environme__CYYea__11158940]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__EMU DO Re__Dolla__10216507]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EMU DO Reviews] DROP CONSTRAINT [DF__EMU DO Re__Dolla__10216507]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__EMU DO Re__Minor__0F2D40CE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EMU DO Reviews] DROP CONSTRAINT [DF__EMU DO Re__Minor__0F2D40CE]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Construct__Dolla__0E391C95]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Construction] DROP CONSTRAINT [DF__Construct__Dolla__0E391C95]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Construct__Minor__0D44F85C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Construction] DROP CONSTRAINT [DF__Construct__Minor__0D44F85C]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Complianc__Dolla__0C50D423]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ComplianceInspections] DROP CONSTRAINT [DF__Complianc__Dolla__0C50D423]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Complianc__SLRSc__0B5CAFEA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ComplianceInspections] DROP CONSTRAINT [DF__Complianc__SLRSc__0B5CAFEA]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Complianc__Minor__0A688BB1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ComplianceInspections] DROP CONSTRAINT [DF__Complianc__Minor__0A688BB1]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Closure__Dollars__09746778]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Closure] DROP CONSTRAINT [DF__Closure__Dollars__09746778]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Closure__MinorCo__0880433F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Closure] DROP CONSTRAINT [DF__Closure__MinorCo__0880433F]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Assessmen__Dolla__078C1F06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures] DROP CONSTRAINT [DF__Assessmen__Dolla__078C1F06]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Assessmen__Minor__0697FACD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures] DROP CONSTRAINT [DF__Assessmen__Minor__0697FACD]
END
GO
/****** Object:  Table [dbo].[Tonnage]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tonnage]') AND type in (N'U'))
DROP TABLE [dbo].[Tonnage]
GO
/****** Object:  Table [dbo].[SiteAssessment]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SiteAssessment]') AND type in (N'U'))
DROP TABLE [dbo].[SiteAssessment]
GO
/****** Object:  Table [dbo].[RemainingCapacity]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RemainingCapacity]') AND type in (N'U'))
DROP TABLE [dbo].[RemainingCapacity]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[PermitMinorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PermitMinorCodes]') AND type in (N'U'))
DROP TABLE [dbo].[PermitMinorCodes]
GO
/****** Object:  Table [dbo].[PermitMajorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PermitMajorCodes]') AND type in (N'U'))
DROP TABLE [dbo].[PermitMajorCodes]
GO
/****** Object:  Table [dbo].[Permit]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Permit]') AND type in (N'U'))
DROP TABLE [dbo].[Permit]
GO
/****** Object:  Table [dbo].[OperationStatus]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OperationStatus]') AND type in (N'U'))
DROP TABLE [dbo].[OperationStatus]
GO
/****** Object:  Table [dbo].[ModificationsMinorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ModificationsMinorCodes]') AND type in (N'U'))
DROP TABLE [dbo].[ModificationsMinorCodes]
GO
/****** Object:  Table [dbo].[ModificationsMajorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ModificationsMajorCodes]') AND type in (N'U'))
DROP TABLE [dbo].[ModificationsMajorCodes]
GO
/****** Object:  Table [dbo].[Modifications]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Modifications]') AND type in (N'U'))
DROP TABLE [dbo].[Modifications]
GO
/****** Object:  Table [dbo].[MinorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MinorCodes]') AND type in (N'U'))
DROP TABLE [dbo].[MinorCodes]
GO
/****** Object:  Table [dbo].[MethaneMajorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MethaneMajorCodes]') AND type in (N'U'))
DROP TABLE [dbo].[MethaneMajorCodes]
GO
/****** Object:  Table [dbo].[Methane_ExportErrors]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Methane_ExportErrors]') AND type in (N'U'))
DROP TABLE [dbo].[Methane_ExportErrors]
GO
/****** Object:  Table [dbo].[Methane]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Methane]') AND type in (N'U'))
DROP TABLE [dbo].[Methane]
GO
/****** Object:  Table [dbo].[MAIN FACILITY INFO]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MAIN FACILITY INFO]') AND type in (N'U'))
DROP TABLE [dbo].[MAIN FACILITY INFO]
GO
/****** Object:  Table [dbo].[InvestigatorListing]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvestigatorListing]') AND type in (N'U'))
DROP TABLE [dbo].[InvestigatorListing]
GO
/****** Object:  Table [dbo].[GroundAndSurfaceWaterMajorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroundAndSurfaceWaterMajorCodes]') AND type in (N'U'))
DROP TABLE [dbo].[GroundAndSurfaceWaterMajorCodes]
GO
/****** Object:  Table [dbo].[GroundAndSurfaceWater]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroundAndSurfaceWater]') AND type in (N'U'))
DROP TABLE [dbo].[GroundAndSurfaceWater]
GO
/****** Object:  Table [dbo].[GIS]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GIS]') AND type in (N'U'))
DROP TABLE [dbo].[GIS]
GO
/****** Object:  Table [dbo].[Geologist Listing]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Geologist Listing]') AND type in (N'U'))
DROP TABLE [dbo].[Geologist Listing]
GO
/****** Object:  Table [dbo].[FacilityTypeDescriptions]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FacilityTypeDescriptions]') AND type in (N'U'))
DROP TABLE [dbo].[FacilityTypeDescriptions]
GO
/****** Object:  Table [dbo].[FA MAIN]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FA MAIN]') AND type in (N'U'))
DROP TABLE [dbo].[FA MAIN]
GO
/****** Object:  Table [dbo].[EnvironmentalMonitoring]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EnvironmentalMonitoring]') AND type in (N'U'))
DROP TABLE [dbo].[EnvironmentalMonitoring]
GO
/****** Object:  Table [dbo].[EMU DO Reviews Minor Codes]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EMU DO Reviews Minor Codes]') AND type in (N'U'))
DROP TABLE [dbo].[EMU DO Reviews Minor Codes]
GO
/****** Object:  Table [dbo].[EMU DO Reviews Major Codes]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EMU DO Reviews Major Codes]') AND type in (N'U'))
DROP TABLE [dbo].[EMU DO Reviews Major Codes]
GO
/****** Object:  Table [dbo].[EMU DO Reviews]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EMU DO Reviews]') AND type in (N'U'))
DROP TABLE [dbo].[EMU DO Reviews]
GO
/****** Object:  Table [dbo].[CountyTable]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CountyTable]') AND type in (N'U'))
DROP TABLE [dbo].[CountyTable]
GO
/****** Object:  Table [dbo].[CountyCountyNoRegionListing]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CountyCountyNoRegionListing]') AND type in (N'U'))
DROP TABLE [dbo].[CountyCountyNoRegionListing]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contacts]') AND type in (N'U'))
DROP TABLE [dbo].[Contacts]
GO
/****** Object:  Table [dbo].[ConstructionMinorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConstructionMinorCodes]') AND type in (N'U'))
DROP TABLE [dbo].[ConstructionMinorCodes]
GO
/****** Object:  Table [dbo].[ConstructionMajorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConstructionMajorCodes]') AND type in (N'U'))
DROP TABLE [dbo].[ConstructionMajorCodes]
GO
/****** Object:  Table [dbo].[Construction]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Construction]') AND type in (N'U'))
DROP TABLE [dbo].[Construction]
GO
/****** Object:  Table [dbo].[ComplianceInspections]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ComplianceInspections]') AND type in (N'U'))
DROP TABLE [dbo].[ComplianceInspections]
GO
/****** Object:  Table [dbo].[ComplianceInspectionMajorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ComplianceInspectionMajorCodes]') AND type in (N'U'))
DROP TABLE [dbo].[ComplianceInspectionMajorCodes]
GO
/****** Object:  Table [dbo].[ClosureMinorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClosureMinorCodes]') AND type in (N'U'))
DROP TABLE [dbo].[ClosureMinorCodes]
GO
/****** Object:  Table [dbo].[ClosureMajorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClosureMajorCodes]') AND type in (N'U'))
DROP TABLE [dbo].[ClosureMajorCodes]
GO
/****** Object:  Table [dbo].[Closure]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Closure]') AND type in (N'U'))
DROP TABLE [dbo].[Closure]
GO
/****** Object:  Table [dbo].[CityCountyReference]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CityCountyReference]') AND type in (N'U'))
DROP TABLE [dbo].[CityCountyReference]
GO
/****** Object:  Table [dbo].[AssessmentOfCorrectiveMeasuresMajorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssessmentOfCorrectiveMeasuresMajorCodes]') AND type in (N'U'))
DROP TABLE [dbo].[AssessmentOfCorrectiveMeasuresMajorCodes]
GO
/****** Object:  Table [dbo].[AssessmentOfCorrectiveMeasures]    Script Date: 4/18/2019 3:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssessmentOfCorrectiveMeasures]') AND type in (N'U'))
DROP TABLE [dbo].[AssessmentOfCorrectiveMeasures]
GO
/****** Object:  Table [dbo].[AssessmentOfCorrectiveMeasures]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssessmentOfCorrectiveMeasures](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[PermitNumber] [nvarchar](20) NOT NULL,
	[ComplianceStatus] [nvarchar](25) NULL,
	[ACMMajorCodes] [nvarchar](100) NULL,
	[MinorCode] [int]  NULL,
	[StartDate] [datetime2](0) NULL,
	[DueDate] [datetime2](0) NULL,
	[CompletionDate] [datetime2](0) NULL,
	[InvestigatorName] [nvarchar](50) NULL,
	[ReferenceNumber] [nvarchar](25) NULL,
	[Dollars] [money] NULL,
	[Comments] [nvarchar](max) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssessmentOfCorrectiveMeasuresMajorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssessmentOfCorrectiveMeasuresMajorCodes](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[ACMMajorCodes] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityCountyReference]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityCountyReference](
	[City1] [nvarchar](255) NULL,
	[County1] [nvarchar](255) NULL,
	[AuotNumber] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Closure]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Closure](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PermitNumber] [nvarchar](20) NOT NULL,
	[ComplianceStatus] [nvarchar](25) NULL,
	[ClosureMajorCodes] [nvarchar](100) NULL,
	[MinorCode] [int] NOT NULL,
	[StartDate] [datetime2](0) NULL,
	[DueDate] [datetime2](0) NULL,
	[CompletionDate] [datetime2](0) NULL,
	[InvestigatorName] [nvarchar](50) NULL,
	[ReferenceNumber] [nvarchar](25) NULL,
	[Dollars] [money] NULL,
	[Comments] [nvarchar](max) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [Closure$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClosureMajorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClosureMajorCodes](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[ClosureMajorCodes] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClosureMinorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClosureMinorCodes](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[MinorCodes] [nvarchar](255) NULL,
 CONSTRAINT [ClosureMinorCodes$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[AutoNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComplianceInspectionMajorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComplianceInspectionMajorCodes](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[ComplianceMajorCodes] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComplianceInspections]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComplianceInspections](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[MainPermitNumber] [nvarchar](20) NOT NULL,
	[ComplianceStatus] [nvarchar](25) NULL,
	[ComplianceMajorCodes] [nvarchar](100) NULL,
	[MinorCode] [int] NULL,
	[SLRScore] [int] NULL,
	[DueDate] [datetime2](0) NULL,
	[CompletionDate] [datetime2](0) NULL,
	[InvestigatorName] [nvarchar](25) NULL,
	[ReferenceNumber] [nvarchar](20) NULL,
	[Dollars] [money] NULL,
	[Comments] [nvarchar](max) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Construction]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Construction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PermitNumber] [nvarchar](20) NOT NULL,
	[ComplianceStatus] [nvarchar](25) NULL,
	[ConstructionMajorCodes] [nvarchar](100) NULL,
	[MinorCode] [int] NOT NULL,
	[StartDate] [datetime2](0) NULL,
	[DueDate] [datetime2](0) NULL,
	[CompletionDate] [datetime2](0) NULL,
	[InvestigatorName] [nvarchar](25) NULL,
	[ReferenceNumber] [nvarchar](20) NULL,
	[Dollars] [money] NULL,
	[Comments] [nvarchar](max) NULL,
	[Phase(s)] [nvarchar](50) NULL,
	[Cell(s)] [nvarchar](50) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [Construction$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConstructionMajorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConstructionMajorCodes](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[ConstructionMajorCodes] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConstructionMinorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConstructionMinorCodes](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[MinorCodes] [nvarchar](255) NULL,
 CONSTRAINT [ConstructionMinorCodes$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[AutoNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[PermitNumber] [nvarchar](20) NOT NULL,
	[Owner/ContactName] [nvarchar](50) NULL,
	[Owner/ContactTitle] [nvarchar](50) NULL,
	[Owner/ConatctAddress] [nvarchar](100) NULL,
	[City] [nvarchar](25) NULL,
	[State] [nvarchar](15) NULL,
	[Zip Code] [nvarchar](20) NULL,
	[Owner/ContactE-Mail] [nvarchar](50) NULL,
	[Owner/ContactFax] [nvarchar](20) NULL,
	[FacilityManagerName] [nvarchar](50) NULL,
	[FacilityManagerAddress] [nvarchar](100) NULL,
	[FacilityManagerCity] [nvarchar](30) NULL,
	[FacilityManagerState] [nvarchar](30) NULL,
	[FacilityManagerZipCode] [nvarchar](30) NULL,
	[FacilityManagerE-mail] [nvarchar](50) NULL,
	[FacilityManagerFax] [nvarchar](20) NULL,
	[Owner/ContactTelephoneNo] [nvarchar](50) NULL,
	[FacilityManagerTelephoneNo] [nvarchar](50) NULL,
	[FacilityManagerTitle] [nvarchar](50) NULL,
 CONSTRAINT [Contacts$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[PermitNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountyCountyNoRegionListing]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountyCountyNoRegionListing](
	[County1] [nvarchar](50) NULL,
	[CountyNo1] [nvarchar](50) NULL,
	[Region1] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountyTable]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountyTable](
	[County] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMU DO Reviews]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMU DO Reviews](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[PermitNumber] [nvarchar](20) NOT NULL,
	[ComplianceStatus] [nvarchar](25) NULL,
	[MajorCode] [nvarchar](100) NULL,
	[MinorCodes] [int] NULL,
	[StartDate] [datetime2](0) NULL,
	[DueDate] [datetime2](0) NULL,
	[CompletionDate] [datetime2](0) NULL,
	[InvestigatorName] [nvarchar](25) NULL,
	[ReferenceNumber] [nvarchar](20) NULL,
	[Dollars] [money] NULL,
	[Comments] [nvarchar](max) NULL,
	[Phase(s)] [nvarchar](50) NULL,
	[Cell(s)] [nvarchar](50) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [EMU DO Reviews$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[AutoNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMU DO Reviews Major Codes]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMU DO Reviews Major Codes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMU DO Reviews Minor Codes]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMU DO Reviews Minor Codes](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[MinorCodes] [nvarchar](255) NULL,
 CONSTRAINT [EMU DO Reviews Minor Codes$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[AutoNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnvironmentalMonitoring]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnvironmentalMonitoring](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PermitNumber] [nvarchar](20) NOT NULL,
	[InvestigatorName] [nvarchar](25) NULL,
	[GWRelease] [nvarchar](50) NULL,
	[AssessmentMonitoringImplemented] [nvarchar](50) NULL,
	[ACM(Required)] [nvarchar](50) NULL,
	[ACMWorkPlanSubmitted] [nvarchar](50) NULL,
	[ACMReportSubmitted] [nvarchar](50) NULL,
	[GWCorrectiveMeasuresImplemented] [nvarchar](50) NULL,
	[GWReturnedToCompliance] [nvarchar](50) NULL,
	[GWTypeOfCorrectiveMeasure] [nvarchar](100) NULL,
	[Methane>LELatPropertyLine] [nvarchar](50) NULL,
	[MethaneRemediationSystem(ActiveorPassive)] [nvarchar](50) NULL,
	[MethaneReturnedToCompliance] [nvarchar](50) NULL,
	[CYYearReporting] [float] NULL,
	[IfActive(TypeSystem)] [nvarchar](100) NULL,
	[Comments] [nvarchar](max) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [EnvironmentalMonitoring$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FA MAIN]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FA MAIN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[COUNTY] [nvarchar](255) NULL,
	[PERMIT NUMBER] [nvarchar](255) NULL,
	[PRIVATE] [bit] NULL,
	[CA RQD] [bit] NULL,
	[Type Year] [nvarchar](50) NULL,
	[TypeInstrument] [nvarchar](50) NULL,
	[InstrumentNo] [nvarchar](30) NULL,
	[InstrumentAmountReceived] [money] NULL,
	[InstrumentBeginDate] [datetime2](0) NULL,
	[InstrumrntEndDate] [datetime2](0) NULL,
	[InstrumentCovers] [nvarchar](50) NULL,
	[CEASEDRECEIVINGWASTEDATE] [datetime2](0) NULL,
	[CLOSURE CERT DATE] [datetime2](0) NULL,
	[FISCAL YEAR END] [datetime2](0) NULL,
	[DATE FA DUE] [datetime2](0) NULL,
	[DATE FA REC'D] [datetime2](0) NULL,
	[DATE FA APPVD] [datetime2](0) NULL,
	[DATE FA REJECT] [datetime2](0) NULL,
	[CL BASE DATE] [datetime2](0) NULL,
	[PC BASE DATE] [datetime2](0) NULL,
	[CA BASE DATE] [datetime2](0) NULL,
	[DISCOUNT] [bit] NULL,
	[ORIG CL AMT] [money] NULL,
	[ORIG PC AMT] [money] NULL,
	[CURRENT CL AMT] [money] NULL,
	[CURRENT PC AMT] [money] NULL,
	[ORIG CA AMT] [money] NULL,
	[CURRENT CA AMT] [money] NULL,
	[ORIG ASSURED COST] [money] NULL,
	[CURRENT ASSURED COST] [money] NULL,
	[EPD ENGINEER] [nvarchar](50) NULL,
	[IN/OUT COMPL] [nvarchar](50) NULL,
	[Received(butnotreviewed)] [nvarchar](50) NULL,
	[IN COMPLIANCE?] [nvarchar](50) NULL,
	[Comments] [nvarchar](max) NULL,
	[InComplianceUntil] [datetime2](0) NULL,
	[FA_Required] [bit] NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [FA MAIN$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacilityTypeDescriptions]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacilityTypeDescriptions](
	[FacilityType1] [nvarchar](14) NOT NULL,
	[FacilityTypeDescription1] [nvarchar](100) NULL,
 CONSTRAINT [FacilityTypeDescriptions$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[FacilityType1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Geologist Listing]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Geologist Listing](
	[Investigator] [nvarchar](75) NULL,
	[County] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIS]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIS](
	[PermitNumber] [nvarchar](20) NOT NULL,
	[Latitude] [float] NOT NULL,
	[Longitude] [float] NOT NULL,
	[GISDate] [datetime2](0) NULL,
	[HorizontalCollectionMethod] [nvarchar](30) NULL,
	[Accuracy Measurement Units] [nvarchar](31) NULL,
	[HorizontalMethodAccuracy] [nvarchar](30) NULL,
	[HorizontalReferencedDatum] [nvarchar](31) NULL,
	[RefPointGeographicPosition] [nvarchar](31) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [GIS$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[PermitNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroundAndSurfaceWater]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroundAndSurfaceWater](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[PermitNumber] [nvarchar](20) NOT NULL,
	[ComplianceStatus] [nvarchar](25) NULL,
	[GWAndSWMajorCodes] [nvarchar](100) NULL,
	[MinorCode] [int] NOT NULL,
	[StartDate] [datetime2](0) NULL,
	[DueDate] [datetime2](0) NULL,
	[CompletionDate] [datetime2](0) NULL,
	[InvestigatorName] [nvarchar](25) NULL,
	[ReferenceNumber] [nvarchar](20) NULL,
	[Dollars] [money] NULL,
	[Comments] [nvarchar](max) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroundAndSurfaceWaterMajorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroundAndSurfaceWaterMajorCodes](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[GWAndSWMajorCodes] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvestigatorListing]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvestigatorListing](
	[InvestigatorName] [nvarchar](255) NULL,
	[BranchProgram] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAIN FACILITY INFO]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAIN FACILITY INFO](
	[MainPermitNumber] [nvarchar](20) NOT NULL,
	[FacilityName] [nvarchar](255) NULL,
	[EPAID] [nvarchar](20) NULL,
	[OperationStatus] [nvarchar](50) NULL,
	[FacilityType] [nvarchar](15) NULL,
	[FacilityTypeDescription] [nvarchar](60) NULL,
	[FacilityStartDate] [datetime2](0) NULL,
	[FacilityAmendedDate] [datetime2](0) NULL,
	[FacilityEndDate] [datetime2](0) NULL,
	[FacilityAddress] [nvarchar](200) NULL,
	[City] [nvarchar](25) NULL,
	[State] [nvarchar](10) NULL,
	[ZipCode] [nvarchar](15) NULL,
	[County] [nvarchar](50) NULL,
	[Region] [nvarchar](10) NULL,
	[TotalAcreage] [nvarchar](50) NULL,
	[UsableAcreage] [nvarchar](50) NULL,
	[LocationDescription] [nvarchar](255) NULL,
	[Comments] [nvarchar](max) NULL,
	[Private] [bit] NULL,
	[Dominion] [nvarchar](25) NULL,
	[HSIRequested] [bit] NULL,
	[HSIListed] [bit] NULL,
	[ProposedCapacity(CY)] [float] NULL,
	[PermittedCapacity(CY)] [float] NULL,
	[PermitIssueDate] [datetime2](0) NULL,
	[DateCeasedAcceptingWaste] [datetime2](0) NULL,
	[DateClosureCertificate Issued] [datetime2](0) NULL,
	[PC/CPeriod] [int] NULL,
	[LCSystem] [nvarchar](50) NULL,
	[VE] [nvarchar](50) NULL,
	[Liner] [nvarchar](50) NULL,
	[LinerType] [nvarchar](15) NULL,
	[OtherLinerType] [nvarchar](50) NULL,
	[SIC] [nvarchar](50) NULL,
	[GWSystemInstalled] [nvarchar](50) NULL,
	[MethaneSystemInstalled] [nvarchar](50) NULL,
	[GWReleaseConfirmed] [nvarchar](50) NULL,
	[UnderDrainSystemInstalled] [nvarchar](50) NULL,
	[UDSystemReleaseConfirmed] [nvarchar](50) NULL,
	[MailingAddress] [nvarchar](50) NULL,
	[MailingCity] [nvarchar](50) NULL,
	[MailingState] [nvarchar](50) NULL,
	[MailingZipCode] [nvarchar](50) NULL,
	[PostCLosureCareReleaseDate] [datetime2](0) NULL,
	[LFGasCollectionApproved] [nvarchar](50) NULL,
	[LandfillGastoEnergyApproved] [nvarchar](50) NULL,
	[LandfillGasenergyUsedfor] [nvarchar](50) NULL,
	[Materials Recovery Facility (MRF) Approved?] [bit] NULL,
	[Type of Waste(s) Processed by MRF] [nvarchar](100) NULL,
	[Composting Operation Approved?] [bit] NULL,
	[Type of Material (s) Composted] [nvarchar](100) NULL,
	[Combined Landfills with Common GW System Description] [nvarchar](150) NULL,
	[CDLandfill] [nvarchar](255) NULL,
	[CDLandfillOperationStatus] [nvarchar](255) NULL,
	[InertLandfill] [nvarchar](255) NULL,
	[InertLandfillOperationStatus] [nvarchar](255) NULL,
	[TransferStation] [nvarchar](255) NULL,
	[TransferStationOperationStatus] [nvarchar](255) NULL,
	[SSMA_TimeStamp] [timestamp] NULL,
 CONSTRAINT [MAIN FACILITY INFO$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[MainPermitNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Methane]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Methane](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[PermitNumber] [nvarchar](20) NOT NULL,
	[ComplianceStatus] [nvarchar](25) NULL,
	[MethaneMajorCodes] [nvarchar](100) NULL,
	[MinorCode] [int] NOT NULL,
	[StartDate] [datetime2](0) NULL,
	[DueDate] [datetime2](0) NULL,
	[CompletionDate] [datetime2](0) NULL,
	[InvestigatorName] [nvarchar](50) NULL,
	[ReferenceNumber] [nvarchar](20) NULL,
	[Dollars] [money] NULL,
	[Comments] [nvarchar](max) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Methane_ExportErrors]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Methane_ExportErrors](
	[Error] [nvarchar](255) NULL,
	[Field] [nvarchar](255) NULL,
	[Row] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MethaneMajorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MethaneMajorCodes](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[MethaneMajorCodes] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MinorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MinorCodes](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[MinorCodes] [nvarchar](255) NULL,
 CONSTRAINT [MinorCodes$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[AutoNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modifications]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modifications](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[PermitNumber] [nvarchar](20) NOT NULL,
	[ComplianceStatus] [nvarchar](25) NULL,
	[MajorCode] [nvarchar](100) NOT NULL,
	[MinorCode] [int] NOT NULL,
	[StartDate] [datetime2](0) NULL,
	[DueDate] [datetime2](0) NULL,
	[CompletionDate] [datetime2](0) NULL,
	[InvestigatorName] [nvarchar](25) NULL,
	[ReferenceNumber] [nvarchar](20) NULL,
	[Dollars] [money] NULL,
	[Comments] [nvarchar](max) NULL,
	[Phase(s)] [nvarchar](50) NULL,
	[Cell(s)] [nvarchar](50) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [Modifications$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[AutoNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModificationsMajorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModificationsMajorCodes](
	[IDNumber] [int] IDENTITY(1,1) NOT NULL,
	[ModificationMajorCodes] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModificationsMinorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModificationsMinorCodes](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[MinorCodes] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationStatus]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationStatus](
	[OperationStatus] [nvarchar](50) NOT NULL,
	[Definition] [nvarchar](50) NULL,
 CONSTRAINT [OperationStatus$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[OperationStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permit]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permit](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[PermitNumber] [nvarchar](20) NOT NULL,
	[ComplianceStatus] [nvarchar](25) NULL,
	[MajorCode] [nvarchar](100) NOT NULL,
	[MinorCodes] [int] NULL,
	[StartDate] [datetime2](0) NULL,
	[DueDate] [datetime2](0) NULL,
	[CompletionDate] [datetime2](0) NULL,
	[InvestigatorName] [nvarchar](25) NULL,
	[ReferenceNumber] [nvarchar](20) NULL,
	[Dollars] [money] NULL,
	[Comments] [nvarchar](max) NULL,
	[Phase(s)] [nvarchar](50) NULL,
	[Cell(s)] [nvarchar](50) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [Permit$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[AutoNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermitMajorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermitMajorCodes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermitMinorCodes]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermitMinorCodes](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[MinorCodes] [nvarchar](255) NULL,
 CONSTRAINT [PermitMinorCodes$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[AutoNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductsID] [int] IDENTITY(1,1) NOT NULL,
	[SerialNumber] [nvarchar](50) NULL,
 CONSTRAINT [Products$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ProductsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RemainingCapacity]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RemainingCapacity](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[PermitNumber] [nvarchar](20) NOT NULL,
	[FYReportingYear] [nvarchar](25) NULL,
	[RemainingCapacity(CY)] [int] NULL,
	[AverageDailyTons] [int] NULL,
	[NetVolPerYear] [int] NULL,
	[RateOfFill(CYD)] [int] NULL,
	[Years Remaining] [int] NULL,
	[EstimatedFillDate] [datetime2](0) NULL,
	[MethodOfCalculation] [nvarchar](200) NULL,
	[ReferenceNumber] [nvarchar](20) NULL,
	[Dollars] [money] NULL,
	[WasteType] [nvarchar](255) NULL,
	[Comments] [nvarchar](max) NULL,
	[TotalOpDaysYr] [int] NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [RemainingCapacity$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[AutoNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiteAssessment]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteAssessment](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[PermitNumber] [nvarchar](20) NOT NULL,
	[ComplianceStatus] [nvarchar](25) NULL,
	[MajorCode] [nvarchar](100) NULL,
	[MinorCode] [int] NOT NULL,
	[StartDate] [datetime2](0) NULL,
	[DueDate] [datetime2](0) NULL,
	[CompletionDate] [datetime2](0) NULL,
	[InvestigatorName] [nvarchar](25) NULL,
	[ReferenceNumber] [nvarchar](20) NULL,
	[Dollars] [money] NULL,
	[Comments] [nvarchar](max) NULL,
	[Phase(s)] [nvarchar](50) NULL,
	[Cell(s)] [nvarchar](50) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [SiteAssessment$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[AutoNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tonnage]    Script Date: 4/18/2019 3:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tonnage](
	[AutoNumber] [int] IDENTITY(1,1) NOT NULL,
	[PermitNumber] [nvarchar](20) NOT NULL,
	[FY] [int] NULL,
	[ReportingYear] [nvarchar](25) NULL,
	[SourceOfWaste] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[CountyofOrigin] [nvarchar](50) NULL,
	[ReportingQuarter] [nvarchar](25) NULL,
	[TonnageReported] [float] NULL,
	[TonsPerDay(365)] [int] NULL,
	[AnnualFees] [money] NULL,
	[ReferenceNumber] [nvarchar](20) NULL,
	[Dollars] [money] NULL,
	[Comments] [nvarchar](max) NULL,
	[WasteType] [nvarchar](255) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [Tonnage$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[AutoNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
--GO
--ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures] ADD  DEFAULT ((0)) FOR [MinorCode]
--GO
--ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures] ADD  DEFAULT ((0)) FOR [Dollars]
--GO
--ALTER TABLE [dbo].[Closure] ADD  DEFAULT ((0)) FOR [MinorCode]
--GO
--ALTER TABLE [dbo].[Closure] ADD  DEFAULT ((0)) FOR [Dollars]
--GO
--ALTER TABLE [dbo].[ComplianceInspections] ADD  DEFAULT ((0)) FOR [MinorCode]
--GO
--ALTER TABLE [dbo].[ComplianceInspections] ADD  DEFAULT ((0)) FOR [SLRScore]
--GO
--ALTER TABLE [dbo].[ComplianceInspections] ADD  DEFAULT ((0)) FOR [Dollars]
--GO
--ALTER TABLE [dbo].[Construction] ADD  DEFAULT ((0)) FOR [MinorCode]
--GO
--ALTER TABLE [dbo].[Construction] ADD  DEFAULT ((0)) FOR [Dollars]
--GO
--ALTER TABLE [dbo].[EMU DO Reviews] ADD  DEFAULT ((0)) FOR [MinorCodes]
--GO
--ALTER TABLE [dbo].[EMU DO Reviews] ADD  DEFAULT ((0)) FOR [Dollars]
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring] ADD  DEFAULT ((0)) FOR [CYYearReporting]
--GO
--ALTER TABLE [dbo].[FA MAIN] ADD  DEFAULT ((0)) FOR [PRIVATE]
--GO
--ALTER TABLE [dbo].[FA MAIN] ADD  DEFAULT ((0)) FOR [CA RQD]
--GO
--ALTER TABLE [dbo].[FA MAIN] ADD  DEFAULT ((0)) FOR [InstrumentAmountReceived]
--GO
--ALTER TABLE [dbo].[FA MAIN] ADD  DEFAULT ((0)) FOR [DISCOUNT]
--GO
--ALTER TABLE [dbo].[FA MAIN] ADD  DEFAULT ((0)) FOR [FA_Required]
--GO
--ALTER TABLE [dbo].[GIS] ADD  DEFAULT ((0)) FOR [Latitude]
--GO
--ALTER TABLE [dbo].[GIS] ADD  DEFAULT ((0)) FOR [Longitude]
--GO
--ALTER TABLE [dbo].[GroundAndSurfaceWater] ADD  DEFAULT ((0)) FOR [MinorCode]
--GO
--ALTER TABLE [dbo].[GroundAndSurfaceWater] ADD  DEFAULT ((0)) FOR [Dollars]
--GO
--ALTER TABLE [dbo].[Methane] ADD  DEFAULT ((0)) FOR [MinorCode]
--GO
--ALTER TABLE [dbo].[Methane] ADD  DEFAULT ((0)) FOR [Dollars]
--GO
--ALTER TABLE [dbo].[Modifications] ADD  DEFAULT ((0)) FOR [MinorCode]
--GO
--ALTER TABLE [dbo].[Modifications] ADD  DEFAULT ((0)) FOR [Dollars]
--GO
--ALTER TABLE [dbo].[Permit] ADD  DEFAULT ((0)) FOR [MinorCodes]
--GO
--ALTER TABLE [dbo].[Permit] ADD  DEFAULT ((0)) FOR [Dollars]
--GO
--ALTER TABLE [dbo].[RemainingCapacity] ADD  DEFAULT ((0)) FOR [RemainingCapacity(CY)]
--GO
--ALTER TABLE [dbo].[RemainingCapacity] ADD  DEFAULT ((0)) FOR [AverageDailyTons]
--GO
--ALTER TABLE [dbo].[RemainingCapacity] ADD  DEFAULT ((0)) FOR [RateOfFill(CYD)]
--GO
--ALTER TABLE [dbo].[RemainingCapacity] ADD  DEFAULT ((0)) FOR [Years Remaining]
--GO
--ALTER TABLE [dbo].[RemainingCapacity] ADD  DEFAULT ((0)) FOR [Dollars]
--GO
--ALTER TABLE [dbo].[SiteAssessment] ADD  DEFAULT ('Site Assessment') FOR [MajorCode]
--GO
--ALTER TABLE [dbo].[SiteAssessment] ADD  DEFAULT ((0)) FOR [MinorCode]
--GO
--ALTER TABLE [dbo].[SiteAssessment] ADD  DEFAULT ((0)) FOR [Dollars]
--GO
--ALTER TABLE [dbo].[Tonnage] ADD  DEFAULT ((0)) FOR [FY]
--GO
--ALTER TABLE [dbo].[Tonnage] ADD  DEFAULT ((0)) FOR [TonnageReported]
--GO
--ALTER TABLE [dbo].[Tonnage] ADD  DEFAULT ((0)) FOR [TonsPerDay(365)]
--GO
--ALTER TABLE [dbo].[Tonnage] ADD  DEFAULT ((0)) FOR [AnnualFees]
--GO
--ALTER TABLE [dbo].[Tonnage] ADD  DEFAULT ((0)) FOR [Dollars]
--GO
--ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$ACMMajorCodes$disallow_zero_length] CHECK  ((len([ACMMajorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures] CHECK CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$ACMMajorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$Comments$disallow_zero_length] CHECK  ((len([Comments])>(0)))
--GO
--ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures] CHECK CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$Comments$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$ComplianceStatus$disallow_zero_length] CHECK  ((len([ComplianceStatus])>(0)))
--GO
--ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures] CHECK CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$ComplianceStatus$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$InvestigatorName$disallow_zero_length] CHECK  ((len([InvestigatorName])>(0)))
--GO
--ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures] CHECK CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$InvestigatorName$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$PermitNumber$disallow_zero_length] CHECK  ((len([PermitNumber])>(0)))
--GO
--ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures] CHECK CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$PermitNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$ReferenceNumber$disallow_zero_length] CHECK  ((len([ReferenceNumber])>(0)))
--GO
--ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasures] CHECK CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasures$ReferenceNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasuresMajorCodes]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasuresMajorCodes$ACMMajorCodes$disallow_zero_length] CHECK  ((len([ACMMajorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[AssessmentOfCorrectiveMeasuresMajorCodes] CHECK CONSTRAINT [SSMA_CC$AssessmentOfCorrectiveMeasuresMajorCodes$ACMMajorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[CityCountyReference]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$CityCountyReference$City1$disallow_zero_length] CHECK  ((len([City1])>(0)))
--GO
--ALTER TABLE [dbo].[CityCountyReference] CHECK CONSTRAINT [SSMA_CC$CityCountyReference$City1$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[CityCountyReference]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$CityCountyReference$County1$disallow_zero_length] CHECK  ((len([County1])>(0)))
--GO
--ALTER TABLE [dbo].[CityCountyReference] CHECK CONSTRAINT [SSMA_CC$CityCountyReference$County1$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Closure]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Closure$ClosureMajorCodes$disallow_zero_length] CHECK  ((len([ClosureMajorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[Closure] CHECK CONSTRAINT [SSMA_CC$Closure$ClosureMajorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Closure]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Closure$Comments$disallow_zero_length] CHECK  ((len([Comments])>(0)))
--GO
--ALTER TABLE [dbo].[Closure] CHECK CONSTRAINT [SSMA_CC$Closure$Comments$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Closure]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Closure$ComplianceStatus$disallow_zero_length] CHECK  ((len([ComplianceStatus])>(0)))
--GO
--ALTER TABLE [dbo].[Closure] CHECK CONSTRAINT [SSMA_CC$Closure$ComplianceStatus$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Closure]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Closure$InvestigatorName$disallow_zero_length] CHECK  ((len([InvestigatorName])>(0)))
--GO
--ALTER TABLE [dbo].[Closure] CHECK CONSTRAINT [SSMA_CC$Closure$InvestigatorName$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Closure]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Closure$PermitNumber$disallow_zero_length] CHECK  ((len([PermitNumber])>(0)))
--GO
--ALTER TABLE [dbo].[Closure] CHECK CONSTRAINT [SSMA_CC$Closure$PermitNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Closure]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Closure$ReferenceNumber$disallow_zero_length] CHECK  ((len([ReferenceNumber])>(0)))
--GO
--ALTER TABLE [dbo].[Closure] CHECK CONSTRAINT [SSMA_CC$Closure$ReferenceNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[ClosureMajorCodes]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ClosureMajorCodes$ClosureMajorCodes$disallow_zero_length] CHECK  ((len([ClosureMajorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[ClosureMajorCodes] CHECK CONSTRAINT [SSMA_CC$ClosureMajorCodes$ClosureMajorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[ClosureMinorCodes]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ClosureMinorCodes$MinorCodes$disallow_zero_length] CHECK  ((len([MinorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[ClosureMinorCodes] CHECK CONSTRAINT [SSMA_CC$ClosureMinorCodes$MinorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[ComplianceInspectionMajorCodes]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ComplianceInspectionMajorCodes$ComplianceMajorCodes$disallow_zero_length] CHECK  ((len([ComplianceMajorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[ComplianceInspectionMajorCodes] CHECK CONSTRAINT [SSMA_CC$ComplianceInspectionMajorCodes$ComplianceMajorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[ComplianceInspections]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ComplianceInspections$Comments$disallow_zero_length] CHECK  ((len([Comments])>(0)))
--GO
--ALTER TABLE [dbo].[ComplianceInspections] CHECK CONSTRAINT [SSMA_CC$ComplianceInspections$Comments$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[ComplianceInspections]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ComplianceInspections$ComplianceMajorCodes$disallow_zero_length] CHECK  ((len([ComplianceMajorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[ComplianceInspections] CHECK CONSTRAINT [SSMA_CC$ComplianceInspections$ComplianceMajorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[ComplianceInspections]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ComplianceInspections$ComplianceStatus$disallow_zero_length] CHECK  ((len([ComplianceStatus])>(0)))
--GO
--ALTER TABLE [dbo].[ComplianceInspections] CHECK CONSTRAINT [SSMA_CC$ComplianceInspections$ComplianceStatus$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[ComplianceInspections]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ComplianceInspections$InvestigatorName$disallow_zero_length] CHECK  ((len([InvestigatorName])>(0)))
--GO
--ALTER TABLE [dbo].[ComplianceInspections] CHECK CONSTRAINT [SSMA_CC$ComplianceInspections$InvestigatorName$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[ComplianceInspections]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ComplianceInspections$MainPermitNumber$disallow_zero_length] CHECK  ((len([MainPermitNumber])>(0)))
--GO
--ALTER TABLE [dbo].[ComplianceInspections] CHECK CONSTRAINT [SSMA_CC$ComplianceInspections$MainPermitNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[ComplianceInspections]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ComplianceInspections$ReferenceNumber$disallow_zero_length] CHECK  ((len([ReferenceNumber])>(0)))
--GO
--ALTER TABLE [dbo].[ComplianceInspections] CHECK CONSTRAINT [SSMA_CC$ComplianceInspections$ReferenceNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Construction]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Construction$Cell(s)$disallow_zero_length] CHECK  ((len([Cell(s)])>(0)))
--GO
--ALTER TABLE [dbo].[Construction] CHECK CONSTRAINT [SSMA_CC$Construction$Cell(s)$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Construction]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Construction$Comments$disallow_zero_length] CHECK  ((len([Comments])>(0)))
--GO
--ALTER TABLE [dbo].[Construction] CHECK CONSTRAINT [SSMA_CC$Construction$Comments$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Construction]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Construction$ComplianceStatus$disallow_zero_length] CHECK  ((len([ComplianceStatus])>(0)))
--GO
--ALTER TABLE [dbo].[Construction] CHECK CONSTRAINT [SSMA_CC$Construction$ComplianceStatus$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Construction]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Construction$ConstructionMajorCodes$disallow_zero_length] CHECK  ((len([ConstructionMajorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[Construction] CHECK CONSTRAINT [SSMA_CC$Construction$ConstructionMajorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Construction]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Construction$InvestigatorName$disallow_zero_length] CHECK  ((len([InvestigatorName])>(0)))
--GO
--ALTER TABLE [dbo].[Construction] CHECK CONSTRAINT [SSMA_CC$Construction$InvestigatorName$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Construction]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Construction$PermitNumber$disallow_zero_length] CHECK  ((len([PermitNumber])>(0)))
--GO
--ALTER TABLE [dbo].[Construction] CHECK CONSTRAINT [SSMA_CC$Construction$PermitNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Construction]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Construction$Phase(s)$disallow_zero_length] CHECK  ((len([Phase(s)])>(0)))
--GO
--ALTER TABLE [dbo].[Construction] CHECK CONSTRAINT [SSMA_CC$Construction$Phase(s)$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Construction]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Construction$ReferenceNumber$disallow_zero_length] CHECK  ((len([ReferenceNumber])>(0)))
--GO
--ALTER TABLE [dbo].[Construction] CHECK CONSTRAINT [SSMA_CC$Construction$ReferenceNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[ConstructionMajorCodes]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ConstructionMajorCodes$ConstructionMajorCodes$disallow_zero_length] CHECK  ((len([ConstructionMajorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[ConstructionMajorCodes] CHECK CONSTRAINT [SSMA_CC$ConstructionMajorCodes$ConstructionMajorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[ConstructionMinorCodes]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ConstructionMinorCodes$MinorCodes$disallow_zero_length] CHECK  ((len([MinorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[ConstructionMinorCodes] CHECK CONSTRAINT [SSMA_CC$ConstructionMinorCodes$MinorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[CountyCountyNoRegionListing]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$CountyCountyNoRegionListing$County1$disallow_zero_length] CHECK  ((len([County1])>(0)))
--GO
--ALTER TABLE [dbo].[CountyCountyNoRegionListing] CHECK CONSTRAINT [SSMA_CC$CountyCountyNoRegionListing$County1$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[CountyCountyNoRegionListing]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$CountyCountyNoRegionListing$CountyNo1$disallow_zero_length] CHECK  ((len([CountyNo1])>(0)))
--GO
--ALTER TABLE [dbo].[CountyCountyNoRegionListing] CHECK CONSTRAINT [SSMA_CC$CountyCountyNoRegionListing$CountyNo1$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[CountyCountyNoRegionListing]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$CountyCountyNoRegionListing$Region1$disallow_zero_length] CHECK  ((len([Region1])>(0)))
--GO
--ALTER TABLE [dbo].[CountyCountyNoRegionListing] CHECK CONSTRAINT [SSMA_CC$CountyCountyNoRegionListing$Region1$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[CountyTable]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$CountyTable$County$disallow_zero_length] CHECK  ((len([County])>(0)))
--GO
--ALTER TABLE [dbo].[CountyTable] CHECK CONSTRAINT [SSMA_CC$CountyTable$County$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EMU DO Reviews]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EMU DO Reviews$Cell(s)$disallow_zero_length] CHECK  ((len([Cell(s)])>(0)))
--GO
--ALTER TABLE [dbo].[EMU DO Reviews] CHECK CONSTRAINT [SSMA_CC$EMU DO Reviews$Cell(s)$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EMU DO Reviews]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EMU DO Reviews$ComplianceStatus$disallow_zero_length] CHECK  ((len([ComplianceStatus])>(0)))
--GO
--ALTER TABLE [dbo].[EMU DO Reviews] CHECK CONSTRAINT [SSMA_CC$EMU DO Reviews$ComplianceStatus$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EMU DO Reviews]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EMU DO Reviews$InvestigatorName$disallow_zero_length] CHECK  ((len([InvestigatorName])>(0)))
--GO
--ALTER TABLE [dbo].[EMU DO Reviews] CHECK CONSTRAINT [SSMA_CC$EMU DO Reviews$InvestigatorName$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EMU DO Reviews]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EMU DO Reviews$MajorCode$disallow_zero_length] CHECK  ((len([MajorCode])>(0)))
--GO
--ALTER TABLE [dbo].[EMU DO Reviews] CHECK CONSTRAINT [SSMA_CC$EMU DO Reviews$MajorCode$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EMU DO Reviews]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EMU DO Reviews$PermitNumber$disallow_zero_length] CHECK  ((len([PermitNumber])>(0)))
--GO
--ALTER TABLE [dbo].[EMU DO Reviews] CHECK CONSTRAINT [SSMA_CC$EMU DO Reviews$PermitNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EMU DO Reviews]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EMU DO Reviews$Phase(s)$disallow_zero_length] CHECK  ((len([Phase(s)])>(0)))
--GO
--ALTER TABLE [dbo].[EMU DO Reviews] CHECK CONSTRAINT [SSMA_CC$EMU DO Reviews$Phase(s)$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EMU DO Reviews]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EMU DO Reviews$ReferenceNumber$disallow_zero_length] CHECK  ((len([ReferenceNumber])>(0)))
--GO
--ALTER TABLE [dbo].[EMU DO Reviews] CHECK CONSTRAINT [SSMA_CC$EMU DO Reviews$ReferenceNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EMU DO Reviews Major Codes]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EMU DO Reviews Major Codes$Description$disallow_zero_length] CHECK  ((len([Description])>(0)))
--GO
--ALTER TABLE [dbo].[EMU DO Reviews Major Codes] CHECK CONSTRAINT [SSMA_CC$EMU DO Reviews Major Codes$Description$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EMU DO Reviews Minor Codes]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EMU DO Reviews Minor Codes$MinorCodes$disallow_zero_length] CHECK  ((len([MinorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[EMU DO Reviews Minor Codes] CHECK CONSTRAINT [SSMA_CC$EMU DO Reviews Minor Codes$MinorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$ACM(Required)$disallow_zero_length] CHECK  ((len([ACM(Required)])>(0)))
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring] CHECK CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$ACM(Required)$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$ACMReportSubmitted$disallow_zero_length] CHECK  ((len([ACMReportSubmitted])>(0)))
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring] CHECK CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$ACMReportSubmitted$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$ACMWorkPlanSubmitted$disallow_zero_length] CHECK  ((len([ACMWorkPlanSubmitted])>(0)))
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring] CHECK CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$ACMWorkPlanSubmitted$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$AssessmentMonitoringImplemented$disallow_zero_length] CHECK  ((len([AssessmentMonitoringImplemented])>(0)))
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring] CHECK CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$AssessmentMonitoringImplemented$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$Comments$disallow_zero_length] CHECK  ((len([Comments])>(0)))
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring] CHECK CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$Comments$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$GWCorrectiveMeasuresImplemented$disallow_zero_length] CHECK  ((len([GWCorrectiveMeasuresImplemented])>(0)))
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring] CHECK CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$GWCorrectiveMeasuresImplemented$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$GWRelease$disallow_zero_length] CHECK  ((len([GWRelease])>(0)))
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring] CHECK CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$GWRelease$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$GWReturnedToCompliance$disallow_zero_length] CHECK  ((len([GWReturnedToCompliance])>(0)))
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring] CHECK CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$GWReturnedToCompliance$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$GWTypeOfCorrectiveMeasure$disallow_zero_length] CHECK  ((len([GWTypeOfCorrectiveMeasure])>(0)))
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring] CHECK CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$GWTypeOfCorrectiveMeasure$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$IfActive(TypeSystem)$disallow_zero_length] CHECK  ((len([IfActive(TypeSystem)])>(0)))
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring] CHECK CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$IfActive(TypeSystem)$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$InvestigatorName$disallow_zero_length] CHECK  ((len([InvestigatorName])>(0)))
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring] CHECK CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$InvestigatorName$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$Methane>LELatPropertyLine$disallow_zero_length] CHECK  ((len([Methane>LELatPropertyLine])>(0)))
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring] CHECK CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$Methane>LELatPropertyLine$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$MethaneRemediationSystem(ActiveorPassive)$disallow_zero_length] CHECK  ((len([MethaneRemediationSystem(ActiveorPassive)])>(0)))
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring] CHECK CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$MethaneRemediationSystem(ActiveorPassive)$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$MethaneReturnedToCompliance$disallow_zero_length] CHECK  ((len([MethaneReturnedToCompliance])>(0)))
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring] CHECK CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$MethaneReturnedToCompliance$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$PermitNumber$disallow_zero_length] CHECK  ((len([PermitNumber])>(0)))
--GO
--ALTER TABLE [dbo].[EnvironmentalMonitoring] CHECK CONSTRAINT [SSMA_CC$EnvironmentalMonitoring$PermitNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[FA MAIN]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$FA MAIN$COUNTY$disallow_zero_length] CHECK  ((len([COUNTY])>(0)))
--GO
--ALTER TABLE [dbo].[FA MAIN] CHECK CONSTRAINT [SSMA_CC$FA MAIN$COUNTY$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[FA MAIN]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$FA MAIN$EPD ENGINEER$disallow_zero_length] CHECK  ((len([EPD ENGINEER])>(0)))
--GO
--ALTER TABLE [dbo].[FA MAIN] CHECK CONSTRAINT [SSMA_CC$FA MAIN$EPD ENGINEER$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[FA MAIN]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$FA MAIN$IN COMPLIANCE?$disallow_zero_length] CHECK  ((len([IN COMPLIANCE?])>(0)))
--GO
--ALTER TABLE [dbo].[FA MAIN] CHECK CONSTRAINT [SSMA_CC$FA MAIN$IN COMPLIANCE?$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[FA MAIN]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$FA MAIN$IN/OUT COMPL$disallow_zero_length] CHECK  ((len([IN/OUT COMPL])>(0)))
--GO
--ALTER TABLE [dbo].[FA MAIN] CHECK CONSTRAINT [SSMA_CC$FA MAIN$IN/OUT COMPL$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[FA MAIN]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$FA MAIN$InstrumentCovers$disallow_zero_length] CHECK  ((len([InstrumentCovers])>(0)))
--GO
--ALTER TABLE [dbo].[FA MAIN] CHECK CONSTRAINT [SSMA_CC$FA MAIN$InstrumentCovers$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[FA MAIN]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$FA MAIN$InstrumentNo$disallow_zero_length] CHECK  ((len([InstrumentNo])>(0)))
--GO
--ALTER TABLE [dbo].[FA MAIN] CHECK CONSTRAINT [SSMA_CC$FA MAIN$InstrumentNo$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[FA MAIN]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$FA MAIN$PERMIT NUMBER$disallow_zero_length] CHECK  ((len([PERMIT NUMBER])>(0)))
--GO
--ALTER TABLE [dbo].[FA MAIN] CHECK CONSTRAINT [SSMA_CC$FA MAIN$PERMIT NUMBER$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[FA MAIN]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$FA MAIN$Received(butnotreviewed)$disallow_zero_length] CHECK  ((len([Received(butnotreviewed)])>(0)))
--GO
--ALTER TABLE [dbo].[FA MAIN] CHECK CONSTRAINT [SSMA_CC$FA MAIN$Received(butnotreviewed)$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[FA MAIN]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$FA MAIN$Type Year$disallow_zero_length] CHECK  ((len([Type Year])>(0)))
--GO
--ALTER TABLE [dbo].[FA MAIN] CHECK CONSTRAINT [SSMA_CC$FA MAIN$Type Year$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[FA MAIN]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$FA MAIN$TypeInstrument$disallow_zero_length] CHECK  ((len([TypeInstrument])>(0)))
--GO
--ALTER TABLE [dbo].[FA MAIN] CHECK CONSTRAINT [SSMA_CC$FA MAIN$TypeInstrument$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[FacilityTypeDescriptions]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$FacilityTypeDescriptions$FacilityType1$disallow_zero_length] CHECK  ((len([FacilityType1])>(0)))
--GO
--ALTER TABLE [dbo].[FacilityTypeDescriptions] CHECK CONSTRAINT [SSMA_CC$FacilityTypeDescriptions$FacilityType1$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[FacilityTypeDescriptions]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$FacilityTypeDescriptions$FacilityTypeDescription1$disallow_zero_length] CHECK  ((len([FacilityTypeDescription1])>(0)))
--GO
--ALTER TABLE [dbo].[FacilityTypeDescriptions] CHECK CONSTRAINT [SSMA_CC$FacilityTypeDescriptions$FacilityTypeDescription1$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Geologist Listing]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Geologist Listing$County$disallow_zero_length] CHECK  ((len([County])>(0)))
--GO
--ALTER TABLE [dbo].[Geologist Listing] CHECK CONSTRAINT [SSMA_CC$Geologist Listing$County$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Geologist Listing]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Geologist Listing$Investigator$disallow_zero_length] CHECK  ((len([Investigator])>(0)))
--GO
--ALTER TABLE [dbo].[Geologist Listing] CHECK CONSTRAINT [SSMA_CC$Geologist Listing$Investigator$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[GIS]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$GIS$Accuracy Measurement Units$disallow_zero_length] CHECK  ((len([Accuracy Measurement Units])>(0)))
--GO
--ALTER TABLE [dbo].[GIS] CHECK CONSTRAINT [SSMA_CC$GIS$Accuracy Measurement Units$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[GIS]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$GIS$HorizontalCollectionMethod$disallow_zero_length] CHECK  ((len([HorizontalCollectionMethod])>(0)))
--GO
--ALTER TABLE [dbo].[GIS] CHECK CONSTRAINT [SSMA_CC$GIS$HorizontalCollectionMethod$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[GIS]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$GIS$HorizontalMethodAccuracy$disallow_zero_length] CHECK  ((len([HorizontalMethodAccuracy])>(0)))
--GO
--ALTER TABLE [dbo].[GIS] CHECK CONSTRAINT [SSMA_CC$GIS$HorizontalMethodAccuracy$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[GIS]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$GIS$HorizontalReferencedDatum$disallow_zero_length] CHECK  ((len([HorizontalReferencedDatum])>(0)))
--GO
--ALTER TABLE [dbo].[GIS] CHECK CONSTRAINT [SSMA_CC$GIS$HorizontalReferencedDatum$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[GIS]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$GIS$PermitNumber$disallow_zero_length] CHECK  ((len([PermitNumber])>(0)))
--GO
--ALTER TABLE [dbo].[GIS] CHECK CONSTRAINT [SSMA_CC$GIS$PermitNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[GIS]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$GIS$RefPointGeographicPosition$disallow_zero_length] CHECK  ((len([RefPointGeographicPosition])>(0)))
--GO
--ALTER TABLE [dbo].[GIS] CHECK CONSTRAINT [SSMA_CC$GIS$RefPointGeographicPosition$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[GroundAndSurfaceWater]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$Comments$disallow_zero_length] CHECK  ((len([Comments])>(0)))
--GO
--ALTER TABLE [dbo].[GroundAndSurfaceWater] CHECK CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$Comments$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[GroundAndSurfaceWater]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$ComplianceStatus$disallow_zero_length] CHECK  ((len([ComplianceStatus])>(0)))
--GO
--ALTER TABLE [dbo].[GroundAndSurfaceWater] CHECK CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$ComplianceStatus$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[GroundAndSurfaceWater]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$GWAndSWMajorCodes$disallow_zero_length] CHECK  ((len([GWAndSWMajorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[GroundAndSurfaceWater] CHECK CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$GWAndSWMajorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[GroundAndSurfaceWater]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$InvestigatorName$disallow_zero_length] CHECK  ((len([InvestigatorName])>(0)))
--GO
--ALTER TABLE [dbo].[GroundAndSurfaceWater] CHECK CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$InvestigatorName$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[GroundAndSurfaceWater]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$PermitNumber$disallow_zero_length] CHECK  ((len([PermitNumber])>(0)))
--GO
--ALTER TABLE [dbo].[GroundAndSurfaceWater] CHECK CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$PermitNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[GroundAndSurfaceWater]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$ReferenceNumber$disallow_zero_length] CHECK  ((len([ReferenceNumber])>(0)))
--GO
--ALTER TABLE [dbo].[GroundAndSurfaceWater] CHECK CONSTRAINT [SSMA_CC$GroundAndSurfaceWater$ReferenceNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[GroundAndSurfaceWaterMajorCodes]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$GroundAndSurfaceWaterMajorCodes$GWAndSWMajorCodes$disallow_zero_length] CHECK  ((len([GWAndSWMajorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[GroundAndSurfaceWaterMajorCodes] CHECK CONSTRAINT [SSMA_CC$GroundAndSurfaceWaterMajorCodes$GWAndSWMajorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[InvestigatorListing]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$InvestigatorListing$BranchProgram$disallow_zero_length] CHECK  ((len([BranchProgram])>(0)))
--GO
--ALTER TABLE [dbo].[InvestigatorListing] CHECK CONSTRAINT [SSMA_CC$InvestigatorListing$BranchProgram$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[InvestigatorListing]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$InvestigatorListing$InvestigatorName$disallow_zero_length] CHECK  ((len([InvestigatorName])>(0)))
--GO
--ALTER TABLE [dbo].[InvestigatorListing] CHECK CONSTRAINT [SSMA_CC$InvestigatorListing$InvestigatorName$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Methane]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Methane$Comments$disallow_zero_length] CHECK  ((len([Comments])>(0)))
--GO
--ALTER TABLE [dbo].[Methane] CHECK CONSTRAINT [SSMA_CC$Methane$Comments$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Methane]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Methane$ComplianceStatus$disallow_zero_length] CHECK  ((len([ComplianceStatus])>(0)))
--GO
--ALTER TABLE [dbo].[Methane] CHECK CONSTRAINT [SSMA_CC$Methane$ComplianceStatus$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Methane]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Methane$InvestigatorName$disallow_zero_length] CHECK  ((len([InvestigatorName])>(0)))
--GO
--ALTER TABLE [dbo].[Methane] CHECK CONSTRAINT [SSMA_CC$Methane$InvestigatorName$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Methane]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Methane$MethaneMajorCodes$disallow_zero_length] CHECK  ((len([MethaneMajorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[Methane] CHECK CONSTRAINT [SSMA_CC$Methane$MethaneMajorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Methane]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Methane$PermitNumber$disallow_zero_length] CHECK  ((len([PermitNumber])>(0)))
--GO
--ALTER TABLE [dbo].[Methane] CHECK CONSTRAINT [SSMA_CC$Methane$PermitNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Methane]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Methane$ReferenceNumber$disallow_zero_length] CHECK  ((len([ReferenceNumber])>(0)))
--GO
--ALTER TABLE [dbo].[Methane] CHECK CONSTRAINT [SSMA_CC$Methane$ReferenceNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Methane_ExportErrors]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Methane_ExportErrors$Error$disallow_zero_length] CHECK  ((len([Error])>(0)))
--GO
--ALTER TABLE [dbo].[Methane_ExportErrors] CHECK CONSTRAINT [SSMA_CC$Methane_ExportErrors$Error$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Methane_ExportErrors]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Methane_ExportErrors$Field$disallow_zero_length] CHECK  ((len([Field])>(0)))
--GO
--ALTER TABLE [dbo].[Methane_ExportErrors] CHECK CONSTRAINT [SSMA_CC$Methane_ExportErrors$Field$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[MethaneMajorCodes]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$MethaneMajorCodes$MethaneMajorCodes$disallow_zero_length] CHECK  ((len([MethaneMajorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[MethaneMajorCodes] CHECK CONSTRAINT [SSMA_CC$MethaneMajorCodes$MethaneMajorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[MinorCodes]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$MinorCodes$MinorCodes$disallow_zero_length] CHECK  ((len([MinorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[MinorCodes] CHECK CONSTRAINT [SSMA_CC$MinorCodes$MinorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Modifications]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Modifications$Cell(s)$disallow_zero_length] CHECK  ((len([Cell(s)])>(0)))
--GO
--ALTER TABLE [dbo].[Modifications] CHECK CONSTRAINT [SSMA_CC$Modifications$Cell(s)$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Modifications]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Modifications$Comments$disallow_zero_length] CHECK  ((len([Comments])>(0)))
--GO
--ALTER TABLE [dbo].[Modifications] CHECK CONSTRAINT [SSMA_CC$Modifications$Comments$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Modifications]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Modifications$ComplianceStatus$disallow_zero_length] CHECK  ((len([ComplianceStatus])>(0)))
--GO
--ALTER TABLE [dbo].[Modifications] CHECK CONSTRAINT [SSMA_CC$Modifications$ComplianceStatus$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Modifications]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Modifications$InvestigatorName$disallow_zero_length] CHECK  ((len([InvestigatorName])>(0)))
--GO
--ALTER TABLE [dbo].[Modifications] CHECK CONSTRAINT [SSMA_CC$Modifications$InvestigatorName$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Modifications]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Modifications$MajorCode$disallow_zero_length] CHECK  ((len([MajorCode])>(0)))
--GO
--ALTER TABLE [dbo].[Modifications] CHECK CONSTRAINT [SSMA_CC$Modifications$MajorCode$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Modifications]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Modifications$PermitNumber$disallow_zero_length] CHECK  ((len([PermitNumber])>(0)))
--GO
--ALTER TABLE [dbo].[Modifications] CHECK CONSTRAINT [SSMA_CC$Modifications$PermitNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Modifications]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Modifications$Phase(s)$disallow_zero_length] CHECK  ((len([Phase(s)])>(0)))
--GO
--ALTER TABLE [dbo].[Modifications] CHECK CONSTRAINT [SSMA_CC$Modifications$Phase(s)$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Modifications]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Modifications$ReferenceNumber$disallow_zero_length] CHECK  ((len([ReferenceNumber])>(0)))
--GO
--ALTER TABLE [dbo].[Modifications] CHECK CONSTRAINT [SSMA_CC$Modifications$ReferenceNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[ModificationsMajorCodes]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ModificationsMajorCodes$ModificationMajorCodes$disallow_zero_length] CHECK  ((len([ModificationMajorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[ModificationsMajorCodes] CHECK CONSTRAINT [SSMA_CC$ModificationsMajorCodes$ModificationMajorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[ModificationsMinorCodes]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$ModificationsMinorCodes$MinorCodes$disallow_zero_length] CHECK  ((len([MinorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[ModificationsMinorCodes] CHECK CONSTRAINT [SSMA_CC$ModificationsMinorCodes$MinorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[OperationStatus]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$OperationStatus$Definition$disallow_zero_length] CHECK  ((len([Definition])>(0)))
--GO
--ALTER TABLE [dbo].[OperationStatus] CHECK CONSTRAINT [SSMA_CC$OperationStatus$Definition$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[OperationStatus]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$OperationStatus$OperationStatus$disallow_zero_length] CHECK  ((len([OperationStatus])>(0)))
--GO
--ALTER TABLE [dbo].[OperationStatus] CHECK CONSTRAINT [SSMA_CC$OperationStatus$OperationStatus$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Permit]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Permit$Cell(s)$disallow_zero_length] CHECK  ((len([Cell(s)])>(0)))
--GO
--ALTER TABLE [dbo].[Permit] CHECK CONSTRAINT [SSMA_CC$Permit$Cell(s)$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Permit]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Permit$ComplianceStatus$disallow_zero_length] CHECK  ((len([ComplianceStatus])>(0)))
--GO
--ALTER TABLE [dbo].[Permit] CHECK CONSTRAINT [SSMA_CC$Permit$ComplianceStatus$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Permit]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Permit$InvestigatorName$disallow_zero_length] CHECK  ((len([InvestigatorName])>(0)))
--GO
--ALTER TABLE [dbo].[Permit] CHECK CONSTRAINT [SSMA_CC$Permit$InvestigatorName$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Permit]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Permit$MajorCode$disallow_zero_length] CHECK  ((len([MajorCode])>(0)))
--GO
--ALTER TABLE [dbo].[Permit] CHECK CONSTRAINT [SSMA_CC$Permit$MajorCode$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Permit]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Permit$PermitNumber$disallow_zero_length] CHECK  ((len([PermitNumber])>(0)))
--GO
--ALTER TABLE [dbo].[Permit] CHECK CONSTRAINT [SSMA_CC$Permit$PermitNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Permit]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Permit$Phase(s)$disallow_zero_length] CHECK  ((len([Phase(s)])>(0)))
--GO
--ALTER TABLE [dbo].[Permit] CHECK CONSTRAINT [SSMA_CC$Permit$Phase(s)$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Permit]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Permit$ReferenceNumber$disallow_zero_length] CHECK  ((len([ReferenceNumber])>(0)))
--GO
--ALTER TABLE [dbo].[Permit] CHECK CONSTRAINT [SSMA_CC$Permit$ReferenceNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[PermitMajorCodes]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PermitMajorCodes$Description$disallow_zero_length] CHECK  ((len([Description])>(0)))
--GO
--ALTER TABLE [dbo].[PermitMajorCodes] CHECK CONSTRAINT [SSMA_CC$PermitMajorCodes$Description$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[PermitMinorCodes]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PermitMinorCodes$MinorCodes$disallow_zero_length] CHECK  ((len([MinorCodes])>(0)))
--GO
--ALTER TABLE [dbo].[PermitMinorCodes] CHECK CONSTRAINT [SSMA_CC$PermitMinorCodes$MinorCodes$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [SSMA_CC$Products$SerialNumber$disallow_zero_length] CHECK  ((len([SerialNumber])>(0)))
--GO
--ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [SSMA_CC$Products$SerialNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[RemainingCapacity]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$RemainingCapacity$Comments$disallow_zero_length] CHECK  ((len([Comments])>(0)))
--GO
--ALTER TABLE [dbo].[RemainingCapacity] CHECK CONSTRAINT [SSMA_CC$RemainingCapacity$Comments$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[RemainingCapacity]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$RemainingCapacity$FYReportingYear$disallow_zero_length] CHECK  ((len([FYReportingYear])>(0)))
--GO
--ALTER TABLE [dbo].[RemainingCapacity] CHECK CONSTRAINT [SSMA_CC$RemainingCapacity$FYReportingYear$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[RemainingCapacity]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$RemainingCapacity$MethodOfCalculation$disallow_zero_length] CHECK  ((len([MethodOfCalculation])>(0)))
--GO
--ALTER TABLE [dbo].[RemainingCapacity] CHECK CONSTRAINT [SSMA_CC$RemainingCapacity$MethodOfCalculation$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[RemainingCapacity]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$RemainingCapacity$PermitNumber$disallow_zero_length] CHECK  ((len([PermitNumber])>(0)))
--GO
--ALTER TABLE [dbo].[RemainingCapacity] CHECK CONSTRAINT [SSMA_CC$RemainingCapacity$PermitNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[RemainingCapacity]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$RemainingCapacity$ReferenceNumber$disallow_zero_length] CHECK  ((len([ReferenceNumber])>(0)))
--GO
--ALTER TABLE [dbo].[RemainingCapacity] CHECK CONSTRAINT [SSMA_CC$RemainingCapacity$ReferenceNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[SiteAssessment]  WITH CHECK ADD  CONSTRAINT [SSMA_CC$SiteAssessment$Cell(s)$disallow_zero_length] CHECK  ((len([Cell(s)])>(0)))
--GO
--ALTER TABLE [dbo].[SiteAssessment] CHECK CONSTRAINT [SSMA_CC$SiteAssessment$Cell(s)$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[SiteAssessment]  WITH CHECK ADD  CONSTRAINT [SSMA_CC$SiteAssessment$Comments$disallow_zero_length] CHECK  ((len([Comments])>(0)))
--GO
--ALTER TABLE [dbo].[SiteAssessment] CHECK CONSTRAINT [SSMA_CC$SiteAssessment$Comments$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[SiteAssessment]  WITH CHECK ADD  CONSTRAINT [SSMA_CC$SiteAssessment$ComplianceStatus$disallow_zero_length] CHECK  ((len([ComplianceStatus])>(0)))
--GO
--ALTER TABLE [dbo].[SiteAssessment] CHECK CONSTRAINT [SSMA_CC$SiteAssessment$ComplianceStatus$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[SiteAssessment]  WITH CHECK ADD  CONSTRAINT [SSMA_CC$SiteAssessment$InvestigatorName$disallow_zero_length] CHECK  ((len([InvestigatorName])>(0)))
--GO
--ALTER TABLE [dbo].[SiteAssessment] CHECK CONSTRAINT [SSMA_CC$SiteAssessment$InvestigatorName$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[SiteAssessment]  WITH CHECK ADD  CONSTRAINT [SSMA_CC$SiteAssessment$MajorCode$disallow_zero_length] CHECK  ((len([MajorCode])>(0)))
--GO
--ALTER TABLE [dbo].[SiteAssessment] CHECK CONSTRAINT [SSMA_CC$SiteAssessment$MajorCode$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[SiteAssessment]  WITH CHECK ADD  CONSTRAINT [SSMA_CC$SiteAssessment$PermitNumber$disallow_zero_length] CHECK  ((len([PermitNumber])>(0)))
--GO
--ALTER TABLE [dbo].[SiteAssessment] CHECK CONSTRAINT [SSMA_CC$SiteAssessment$PermitNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[SiteAssessment]  WITH CHECK ADD  CONSTRAINT [SSMA_CC$SiteAssessment$Phase(s)$disallow_zero_length] CHECK  ((len([Phase(s)])>(0)))
--GO
--ALTER TABLE [dbo].[SiteAssessment] CHECK CONSTRAINT [SSMA_CC$SiteAssessment$Phase(s)$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[SiteAssessment]  WITH CHECK ADD  CONSTRAINT [SSMA_CC$SiteAssessment$ReferenceNumber$disallow_zero_length] CHECK  ((len([ReferenceNumber])>(0)))
--GO
--ALTER TABLE [dbo].[SiteAssessment] CHECK CONSTRAINT [SSMA_CC$SiteAssessment$ReferenceNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Tonnage]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Tonnage$Comments$disallow_zero_length] CHECK  ((len([Comments])>(0)))
--GO
--ALTER TABLE [dbo].[Tonnage] CHECK CONSTRAINT [SSMA_CC$Tonnage$Comments$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Tonnage]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Tonnage$CountyofOrigin$disallow_zero_length] CHECK  ((len([CountyofOrigin])>(0)))
--GO
--ALTER TABLE [dbo].[Tonnage] CHECK CONSTRAINT [SSMA_CC$Tonnage$CountyofOrigin$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Tonnage]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Tonnage$PermitNumber$disallow_zero_length] CHECK  ((len([PermitNumber])>(0)))
--GO
--ALTER TABLE [dbo].[Tonnage] CHECK CONSTRAINT [SSMA_CC$Tonnage$PermitNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Tonnage]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Tonnage$ReferenceNumber$disallow_zero_length] CHECK  ((len([ReferenceNumber])>(0)))
--GO
--ALTER TABLE [dbo].[Tonnage] CHECK CONSTRAINT [SSMA_CC$Tonnage$ReferenceNumber$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Tonnage]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Tonnage$ReportingQuarter$disallow_zero_length] CHECK  ((len([ReportingQuarter])>(0)))
--GO
--ALTER TABLE [dbo].[Tonnage] CHECK CONSTRAINT [SSMA_CC$Tonnage$ReportingQuarter$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Tonnage]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Tonnage$ReportingYear$disallow_zero_length] CHECK  ((len([ReportingYear])>(0)))
--GO
--ALTER TABLE [dbo].[Tonnage] CHECK CONSTRAINT [SSMA_CC$Tonnage$ReportingYear$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Tonnage]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Tonnage$SourceOfWaste$disallow_zero_length] CHECK  ((len([SourceOfWaste])>(0)))
--GO
--ALTER TABLE [dbo].[Tonnage] CHECK CONSTRAINT [SSMA_CC$Tonnage$SourceOfWaste$disallow_zero_length]
--GO
--ALTER TABLE [dbo].[Tonnage]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Tonnage$State$disallow_zero_length] CHECK  ((len([State])>(0)))
--GO
--ALTER TABLE [dbo].[Tonnage] CHECK CONSTRAINT [SSMA_CC$Tonnage$State$disallow_zero_length]
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[AssessmentOfCorrectiveMeasures].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[AssessmentOfCorrectiveMeasures].[PermitNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'PermitNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[AssessmentOfCorrectiveMeasures].[ComplianceStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[AssessmentOfCorrectiveMeasures].[ACMMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'ACMMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[AssessmentOfCorrectiveMeasures].[MinorCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'MinorCode'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[AssessmentOfCorrectiveMeasures].[StartDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'StartDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[AssessmentOfCorrectiveMeasures].[DueDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'DueDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[AssessmentOfCorrectiveMeasures].[CompletionDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'CompletionDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[AssessmentOfCorrectiveMeasures].[InvestigatorName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Consent Order Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[AssessmentOfCorrectiveMeasures].[ReferenceNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[AssessmentOfCorrectiveMeasures].[Dollars]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'Dollars'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[AssessmentOfCorrectiveMeasures].[Comments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures', @level2type=N'COLUMN',@level2name=N'Comments'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[AssessmentOfCorrectiveMeasures]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasures'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[AssessmentOfCorrectiveMeasuresMajorCodes].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasuresMajorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[AssessmentOfCorrectiveMeasuresMajorCodes].[ACMMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasuresMajorCodes', @level2type=N'COLUMN',@level2name=N'ACMMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[AssessmentOfCorrectiveMeasuresMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AssessmentOfCorrectiveMeasuresMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[CityCountyReference].[City1]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CityCountyReference', @level2type=N'COLUMN',@level2name=N'City1'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[CityCountyReference].[County1]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CityCountyReference', @level2type=N'COLUMN',@level2name=N'County1'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[CityCountyReference].[AuotNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CityCountyReference', @level2type=N'COLUMN',@level2name=N'AuotNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[CityCountyReference]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CityCountyReference'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Closure].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'ID'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Closure].[PermitNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'PermitNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Closure].[ComplianceStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Closure].[ClosureMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'ClosureMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Closure].[MinorCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'MinorCode'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Closure].[StartDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'StartDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Closure].[DueDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'DueDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Closure].[CompletionDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'CompletionDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Closure].[InvestigatorName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Consent Order Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Closure].[ReferenceNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Closure].[Dollars]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'Dollars'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Closure].[Comments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'COLUMN',@level2name=N'Comments'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Closure].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure', @level2type=N'CONSTRAINT',@level2name=N'Closure$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Closure]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Closure'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ClosureMajorCodes].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClosureMajorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ClosureMajorCodes].[ClosureMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClosureMajorCodes', @level2type=N'COLUMN',@level2name=N'ClosureMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ClosureMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClosureMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ClosureMinorCodes].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClosureMinorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ClosureMinorCodes].[MinorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClosureMinorCodes', @level2type=N'COLUMN',@level2name=N'MinorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ClosureMinorCodes].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClosureMinorCodes', @level2type=N'CONSTRAINT',@level2name=N'ClosureMinorCodes$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ClosureMinorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClosureMinorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ComplianceInspectionMajorCodes].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspectionMajorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ComplianceInspectionMajorCodes].[ComplianceMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspectionMajorCodes', @level2type=N'COLUMN',@level2name=N'ComplianceMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ComplianceInspectionMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspectionMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ComplianceInspections].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ComplianceInspections].[MainPermitNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'MainPermitNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ComplianceInspections].[ComplianceStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ComplianceInspections].[ComplianceMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'ComplianceMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ComplianceInspections].[MinorCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'MinorCode'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ComplianceInspections].[SLRScore]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'SLRScore'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ComplianceInspections].[DueDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'DueDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ComplianceInspections].[CompletionDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'CompletionDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ComplianceInspections].[InvestigatorName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Consent Order Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ComplianceInspections].[ReferenceNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ComplianceInspections].[Dollars]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'Dollars'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ComplianceInspections].[Comments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections', @level2type=N'COLUMN',@level2name=N'Comments'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ComplianceInspections]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComplianceInspections'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Construction].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'ID'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Construction].[PermitNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'PermitNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Construction].[ComplianceStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Construction].[ConstructionMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'ConstructionMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Construction].[MinorCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'MinorCode'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Construction].[StartDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'StartDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Construction].[DueDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'DueDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Construction].[CompletionDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'CompletionDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Construction].[InvestigatorName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Construction].[ReferenceNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Consent Order Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'Dollars'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Construction].[Dollars]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'Dollars'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Construction].[Comments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'Comments'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Construction].[Phase(s)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'Phase(s)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Construction].[Cell(s)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'COLUMN',@level2name=N'Cell(s)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Construction].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction', @level2type=N'CONSTRAINT',@level2name=N'Construction$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Construction]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Construction'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ConstructionMajorCodes].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConstructionMajorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ConstructionMajorCodes].[ConstructionMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConstructionMajorCodes', @level2type=N'COLUMN',@level2name=N'ConstructionMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ConstructionMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConstructionMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ConstructionMinorCodes].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConstructionMinorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ConstructionMinorCodes].[MinorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConstructionMinorCodes', @level2type=N'COLUMN',@level2name=N'MinorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ConstructionMinorCodes].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConstructionMinorCodes', @level2type=N'CONSTRAINT',@level2name=N'ConstructionMinorCodes$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ConstructionMinorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConstructionMinorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[CountyCountyNoRegionListing].[County1]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CountyCountyNoRegionListing', @level2type=N'COLUMN',@level2name=N'County1'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[CountyCountyNoRegionListing].[CountyNo1]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CountyCountyNoRegionListing', @level2type=N'COLUMN',@level2name=N'CountyNo1'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[CountyCountyNoRegionListing].[Region1]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CountyCountyNoRegionListing', @level2type=N'COLUMN',@level2name=N'Region1'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[CountyCountyNoRegionListing]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CountyCountyNoRegionListing'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[CountyTable].[County]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CountyTable', @level2type=N'COLUMN',@level2name=N'County'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[CountyTable]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CountyTable'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews].[PermitNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'PermitNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews].[ComplianceStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews].[MajorCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'MajorCode'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews].[MinorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'MinorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews].[StartDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'StartDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews].[DueDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'DueDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews].[CompletionDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'CompletionDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews].[InvestigatorName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Consent Order Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews].[ReferenceNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews].[Dollars]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'Dollars'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews].[Comments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'Comments'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews].[Phase(s)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'Phase(s)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews].[Cell(s)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'COLUMN',@level2name=N'Cell(s)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews', @level2type=N'CONSTRAINT',@level2name=N'EMU DO Reviews$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews Major Codes].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews Major Codes', @level2type=N'COLUMN',@level2name=N'ID'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews Major Codes].[Description]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews Major Codes', @level2type=N'COLUMN',@level2name=N'Description'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews Major Codes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews Major Codes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews Minor Codes].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews Minor Codes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews Minor Codes].[MinorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews Minor Codes', @level2type=N'COLUMN',@level2name=N'MinorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews Minor Codes].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews Minor Codes', @level2type=N'CONSTRAINT',@level2name=N'EMU DO Reviews Minor Codes$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EMU DO Reviews Minor Codes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMU DO Reviews Minor Codes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'ID'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[PermitNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'PermitNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[InvestigatorName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[GWRelease]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'GWRelease'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[AssessmentMonitoringImplemented]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'AssessmentMonitoringImplemented'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[ACM(Required)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'ACM(Required)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[ACMWorkPlanSubmitted]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'ACMWorkPlanSubmitted'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[ACMReportSubmitted]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'ACMReportSubmitted'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[GWCorrectiveMeasuresImplemented]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'GWCorrectiveMeasuresImplemented'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[GWReturnedToCompliance]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'GWReturnedToCompliance'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[GWTypeOfCorrectiveMeasure]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'GWTypeOfCorrectiveMeasure'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[Methane>LELatPropertyLine]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'Methane>LELatPropertyLine'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[MethaneRemediationSystem(ActiveorPassive)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'MethaneRemediationSystem(ActiveorPassive)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[MethaneReturnedToCompliance]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'MethaneReturnedToCompliance'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[CYYearReporting]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'CYYearReporting'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[IfActive(TypeSystem)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'IfActive(TypeSystem)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[Comments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'COLUMN',@level2name=N'Comments'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring', @level2type=N'CONSTRAINT',@level2name=N'EnvironmentalMonitoring$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[EnvironmentalMonitoring]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnvironmentalMonitoring'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ID'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'County' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'COUNTY'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[COUNTY]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'COUNTY'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Permit Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'PERMIT NUMBER'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[PERMIT NUMBER]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'PERMIT NUMBER'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Private (Y/N)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'PRIVATE'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[PRIVATE]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'PRIVATE'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Corrective Action Required (Y/N)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CA RQD'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[CA RQD]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CA RQD'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[Type Year]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'Type Year'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of Financial Instrument' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'TypeInstrument'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[TypeInstrument]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'TypeInstrument'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Manual Input' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumentNo'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[InstrumentNo]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumentNo'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Manual Input' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumentAmountReceived'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[InstrumentAmountReceived]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumentAmountReceived'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Manual Input' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumentBeginDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[InstrumentBeginDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumentBeginDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Manual Input' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumrntEndDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[InstrumrntEndDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumrntEndDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Manual Input' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumentCovers'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[InstrumentCovers]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InstrumentCovers'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[CEASEDRECEIVINGWASTEDATE]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CEASEDRECEIVINGWASTEDATE'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Closure Certificate Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CLOSURE CERT DATE'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[CLOSURE CERT DATE]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CLOSURE CERT DATE'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fiscal Year End Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'FISCAL YEAR END'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[FISCAL YEAR END]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'FISCAL YEAR END'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date financial Assurance is Due (180 days after end of fiscal year)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DATE FA DUE'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[DATE FA DUE]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DATE FA DUE'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date Financial Assurance Received' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DATE FA REC''D'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[DATE FA REC''D]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DATE FA REC''D'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date financial Assurance Approved' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DATE FA APPVD'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[DATE FA APPVD]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DATE FA APPVD'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date Financial Assurance Rejected' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DATE FA REJECT'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[DATE FA REJECT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DATE FA REJECT'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date Used for Calculating Original CL Financial Assurance Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CL BASE DATE'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[CL BASE DATE]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CL BASE DATE'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date Used for Calculating Original PC Financial Assurance Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'PC BASE DATE'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[PC BASE DATE]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'PC BASE DATE'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date Corrective Action Financial Assurance Begins' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CA BASE DATE'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[CA BASE DATE]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CA BASE DATE'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Discount FA (Y/N)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DISCOUNT'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[DISCOUNT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'DISCOUNT'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Original Closure Financial Assurance Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ORIG CL AMT'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[ORIG CL AMT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ORIG CL AMT'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Original Post Closure Financial Assurance Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ORIG PC AMT'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[ORIG PC AMT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ORIG PC AMT'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Current Closure Financial Assurance Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CURRENT CL AMT'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[CURRENT CL AMT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CURRENT CL AMT'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Current Post Closure Financial Assurance Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CURRENT PC AMT'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[CURRENT PC AMT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CURRENT PC AMT'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Original Corrective Action Financial Assurance Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ORIG CA AMT'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[ORIG CA AMT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ORIG CA AMT'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Original Corrective Action Financial Assurance Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CURRENT CA AMT'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[CURRENT CA AMT]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CURRENT CA AMT'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Original Total Assured Financial Assurance Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ORIG ASSURED COST'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[ORIG ASSURED COST]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'ORIG ASSURED COST'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Current Total Assured Financial Assurance Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CURRENT ASSURED COST'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[CURRENT ASSURED COST]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'CURRENT ASSURED COST'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EPD Engineer Assigned to Facility' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'EPD ENGINEER'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[EPD ENGINEER]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'EPD ENGINEER'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Project is In or Out of Compliance' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'IN/OUT COMPL'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[IN/OUT COMPL]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'IN/OUT COMPL'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[Received(butnotreviewed)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'Received(butnotreviewed)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Manually Input Compliance Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'IN COMPLIANCE?'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[IN COMPLIANCE?]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'IN COMPLIANCE?'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[Comments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'Comments'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[InComplianceUntil]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'InComplianceUntil'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[FA_Required]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'COLUMN',@level2name=N'FA_Required'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN', @level2type=N'CONSTRAINT',@level2name=N'FA MAIN$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FA MAIN]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FA MAIN'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FacilityTypeDescriptions].[FacilityType1]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FacilityTypeDescriptions', @level2type=N'COLUMN',@level2name=N'FacilityType1'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FacilityTypeDescriptions].[FacilityTypeDescription1]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FacilityTypeDescriptions', @level2type=N'COLUMN',@level2name=N'FacilityTypeDescription1'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FacilityTypeDescriptions].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FacilityTypeDescriptions', @level2type=N'CONSTRAINT',@level2name=N'FacilityTypeDescriptions$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[FacilityTypeDescriptions]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FacilityTypeDescriptions'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Geologist Listing].[Investigator]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Geologist Listing', @level2type=N'COLUMN',@level2name=N'Investigator'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Geologist Listing].[County]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Geologist Listing', @level2type=N'COLUMN',@level2name=N'County'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Geologist Listing]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Geologist Listing'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GIS].[PermitNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'PermitNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GIS].[Latitude]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'Latitude'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GIS].[Longitude]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'Longitude'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GIS].[GISDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'GISDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GIS].[HorizontalCollectionMethod]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'HorizontalCollectionMethod'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GIS].[Accuracy Measurement Units]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'Accuracy Measurement Units'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GIS].[HorizontalMethodAccuracy]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'HorizontalMethodAccuracy'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GIS].[HorizontalReferencedDatum]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'HorizontalReferencedDatum'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GIS].[RefPointGeographicPosition]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'COLUMN',@level2name=N'RefPointGeographicPosition'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GIS].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS', @level2type=N'CONSTRAINT',@level2name=N'GIS$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GIS]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GIS'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GroundAndSurfaceWater].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GroundAndSurfaceWater].[PermitNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'PermitNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GroundAndSurfaceWater].[ComplianceStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GroundAndSurfaceWater].[GWAndSWMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'GWAndSWMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GroundAndSurfaceWater].[MinorCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'MinorCode'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GroundAndSurfaceWater].[StartDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'StartDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GroundAndSurfaceWater].[DueDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'DueDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GroundAndSurfaceWater].[CompletionDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'CompletionDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GroundAndSurfaceWater].[InvestigatorName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Consent Order Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GroundAndSurfaceWater].[ReferenceNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GroundAndSurfaceWater].[Dollars]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'Dollars'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GroundAndSurfaceWater].[Comments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater', @level2type=N'COLUMN',@level2name=N'Comments'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GroundAndSurfaceWater]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWater'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GroundAndSurfaceWaterMajorCodes].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWaterMajorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GroundAndSurfaceWaterMajorCodes].[GWAndSWMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWaterMajorCodes', @level2type=N'COLUMN',@level2name=N'GWAndSWMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[GroundAndSurfaceWaterMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GroundAndSurfaceWaterMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[InvestigatorListing].[InvestigatorName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvestigatorListing', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[InvestigatorListing].[BranchProgram]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvestigatorListing', @level2type=N'COLUMN',@level2name=N'BranchProgram'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[InvestigatorListing]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InvestigatorListing'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane].[PermitNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'PermitNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane].[ComplianceStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane].[MethaneMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'MethaneMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane].[MinorCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'MinorCode'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane].[StartDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'StartDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane].[DueDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'DueDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane].[CompletionDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'CompletionDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane].[InvestigatorName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Consent Order Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane].[ReferenceNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane].[Dollars]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'Dollars'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane].[Comments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane', @level2type=N'COLUMN',@level2name=N'Comments'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane_ExportErrors].[Error]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane_ExportErrors', @level2type=N'COLUMN',@level2name=N'Error'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane_ExportErrors].[Field]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane_ExportErrors', @level2type=N'COLUMN',@level2name=N'Field'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane_ExportErrors].[Row]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane_ExportErrors', @level2type=N'COLUMN',@level2name=N'Row'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Methane_ExportErrors]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Methane_ExportErrors'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[MethaneMajorCodes].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MethaneMajorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[MethaneMajorCodes].[MethaneMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MethaneMajorCodes', @level2type=N'COLUMN',@level2name=N'MethaneMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[MethaneMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MethaneMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[MinorCodes].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MinorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[MinorCodes].[MinorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MinorCodes', @level2type=N'COLUMN',@level2name=N'MinorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[MinorCodes].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MinorCodes', @level2type=N'CONSTRAINT',@level2name=N'MinorCodes$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[MinorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MinorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Modifications].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Modifications].[PermitNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'PermitNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Modifications].[ComplianceStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Modifications].[MajorCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'MajorCode'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Modifications].[MinorCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'MinorCode'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Modifications].[StartDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'StartDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Modifications].[DueDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'DueDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Modifications].[CompletionDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'CompletionDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Modifications].[InvestigatorName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Consent Order Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Modifications].[ReferenceNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Modifications].[Dollars]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'Dollars'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Modifications].[Comments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'Comments'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Modifications].[Phase(s)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'Phase(s)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Modifications].[Cell(s)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'COLUMN',@level2name=N'Cell(s)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Modifications].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications', @level2type=N'CONSTRAINT',@level2name=N'Modifications$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Modifications]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modifications'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ModificationsMajorCodes].[IDNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModificationsMajorCodes', @level2type=N'COLUMN',@level2name=N'IDNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ModificationsMajorCodes].[ModificationMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModificationsMajorCodes', @level2type=N'COLUMN',@level2name=N'ModificationMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ModificationsMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModificationsMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ModificationsMinorCodes].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModificationsMinorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ModificationsMinorCodes].[MinorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModificationsMinorCodes', @level2type=N'COLUMN',@level2name=N'MinorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[ModificationsMinorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ModificationsMinorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[OperationStatus].[OperationStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationStatus', @level2type=N'COLUMN',@level2name=N'OperationStatus'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[OperationStatus].[Definition]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationStatus', @level2type=N'COLUMN',@level2name=N'Definition'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[OperationStatus].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationStatus', @level2type=N'CONSTRAINT',@level2name=N'OperationStatus$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[OperationStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationStatus'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Permit].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Permit].[PermitNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'PermitNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Permit].[ComplianceStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Permit].[MajorCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'MajorCode'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Permit].[MinorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'MinorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Permit].[StartDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'StartDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Permit].[DueDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'DueDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Permit].[CompletionDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'CompletionDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Permit].[InvestigatorName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Consent Order Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Permit].[ReferenceNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Permit].[Dollars]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'Dollars'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Permit].[Comments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'Comments'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Permit].[Phase(s)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'Phase(s)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Permit].[Cell(s)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'COLUMN',@level2name=N'Cell(s)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Permit].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit', @level2type=N'CONSTRAINT',@level2name=N'Permit$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Permit]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permit'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[PermitMajorCodes].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermitMajorCodes', @level2type=N'COLUMN',@level2name=N'ID'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[PermitMajorCodes].[Description]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermitMajorCodes', @level2type=N'COLUMN',@level2name=N'Description'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[PermitMajorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermitMajorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[PermitMinorCodes].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermitMinorCodes', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[PermitMinorCodes].[MinorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermitMinorCodes', @level2type=N'COLUMN',@level2name=N'MinorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[PermitMinorCodes].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermitMinorCodes', @level2type=N'CONSTRAINT',@level2name=N'PermitMinorCodes$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[PermitMinorCodes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermitMinorCodes'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Products].[ProductsID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ProductsID'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Products].[SerialNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SerialNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Products].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'CONSTRAINT',@level2name=N'Products$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Products]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity].[PermitNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'PermitNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity].[FYReportingYear]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'FYReportingYear'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity].[RemainingCapacity(CY)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'RemainingCapacity(CY)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity].[AverageDailyTons]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'AverageDailyTons'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity].[NetVolPerYear]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'NetVolPerYear'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity].[RateOfFill(CYD)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'RateOfFill(CYD)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity].[Years Remaining]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'Years Remaining'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity].[EstimatedFillDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'EstimatedFillDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity].[MethodOfCalculation]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'MethodOfCalculation'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Consent Order Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity].[ReferenceNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity].[Dollars]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'Dollars'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity].[WasteType]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'WasteType'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity].[Comments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'Comments'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity].[TotalOpDaysYr]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'COLUMN',@level2name=N'TotalOpDaysYr'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity', @level2type=N'CONSTRAINT',@level2name=N'RemainingCapacity$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[RemainingCapacity]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RemainingCapacity'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[SiteAssessment].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[SiteAssessment].[PermitNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'PermitNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[SiteAssessment].[ComplianceStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'ComplianceStatus'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[SiteAssessment].[MajorCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'MajorCode'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[SiteAssessment].[MinorCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'MinorCode'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[SiteAssessment].[StartDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'StartDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[SiteAssessment].[DueDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'DueDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[SiteAssessment].[CompletionDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'CompletionDate'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[SiteAssessment].[InvestigatorName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'InvestigatorName'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Consent Order Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[SiteAssessment].[ReferenceNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[SiteAssessment].[Dollars]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'Dollars'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[SiteAssessment].[Comments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'Comments'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[SiteAssessment].[Phase(s)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'Phase(s)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[SiteAssessment].[Cell(s)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'COLUMN',@level2name=N'Cell(s)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[SiteAssessment].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment', @level2type=N'CONSTRAINT',@level2name=N'SiteAssessment$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[SiteAssessment]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SiteAssessment'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage].[AutoNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'AutoNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage].[PermitNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'PermitNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage].[FY]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'FY'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage].[ReportingYear]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'ReportingYear'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage].[SourceOfWaste]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'SourceOfWaste'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage].[State]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'State'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage].[CountyofOrigin]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'CountyofOrigin'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage].[ReportingQuarter]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'ReportingQuarter'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage].[TonnageReported]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'TonnageReported'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage].[TonsPerDay(365)]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'TonsPerDay(365)'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage].[AnnualFees]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'AnnualFees'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Consent order Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage].[ReferenceNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'ReferenceNumber'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage].[Dollars]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'Dollars'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage].[Comments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'Comments'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage].[WasteType]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'COLUMN',@level2name=N'WasteType'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage', @level2type=N'CONSTRAINT',@level2name=N'Tonnage$PrimaryKey'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'LandDataBase.[Tonnage]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tonnage'
--GO
