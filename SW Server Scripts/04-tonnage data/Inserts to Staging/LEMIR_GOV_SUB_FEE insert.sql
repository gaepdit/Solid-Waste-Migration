USE [LEMIR_Stage]
GO
--INSERT INTO [GOV].[SUB_FEE]
--       ([SUB_FEE_RID],
--        [SUBMISSION_RID],
--        [SUB_FORM_RID],
--        [FEE_NAME],
--        [CONTACT_RID],
--        [STATUS_CD],
--        [COMMENT],
--        [DESCRIPTION],
--        [CREATED_BY],
--        [CREATED_DATE],
--        [UPDATED_BY],
--        [UPDATED_DATE],
--        [DUE_AMOUNT],
--        [CALCULATED_AMOUNT],
--        [FEE_STATUS_RID],
--        [FEE_ITEM_RID],
--        [PAYMENT_RID],
--        [FEE_TYPE_RID],
--        [PAID_AMOUNT],
--        [EXTRA_INFO],
--        [MINIMUM_PERMITFEE_BYGROUP_IND],
--        [SYN_IND],
--        [SYN_DATE])
SELECT [SUB_FEE_RID],
       [SUBMISSION_RID],
       [SUB_FORM_RID],
       [FEE_NAME],
       [CONTACT_RID],
       [STATUS_CD],
       [COMMENT],
       [DESCRIPTION],
       [CREATED_BY],
       [CREATED_DATE],
       [UPDATED_BY],
       [UPDATED_DATE],
       [DUE_AMOUNT],
       [CALCULATED_AMOUNT],
       [FEE_STATUS_RID],
       [FEE_ITEM_RID],
       [PAYMENT_RID],
       [FEE_TYPE_RID],
       [PAID_AMOUNT],
       [EXTRA_INFO],
       [MINIMUM_PERMITFEE_BYGROUP_IND],
       [SYN_IND],
       [SYN_DATE]
FROM [GOV].[SUB_FEE]
GO




