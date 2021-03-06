USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    
CREATE Proc [SCTJN_GenerateVoucherDetailsForIntegartion]                  
AS                  
BEGIN         
BEGIN TRY                 
 --------------------------------------------------------------------                
 /*STEP 3*- Genearte Voucher_DET for Integartion DB*/                
 --------------------------------------------------------------------                
  insert into Finance.dbo.VOUCHER_DET (                
  ENVI,                
  COUNTRY_ID,                
  VOUCHER_N,                
  VOC_LINE_N,                
  CHGCODE_ID,                
  CHG_DES1,                
  CHG_DES2,                
  CHG_DES3,                
  CHG_DES4,                
  LINE_GST_TYPE,                
  LINE_WT_M3_IND,                
  LINE_UNIT_Q,                
  LINE_UNIT_CHG_A,                
  LINE_CHG_UNIT,                
  LINE_EX_RATE,                
  LINE_CURRENCY_ID,                
  LINE_GST_P,                
  LINE_GST_A,                
  LINE_TOT_A,                
  LINE_TOT_GST_A,                
  LINE_CURRENCY,                
  REF_NO,                
  JOB_NO,                
  JOB_TYPE,                
  DOC_NO,                
  PAYTYPE,                
  LINE_EX_RATE_USER_ID,                
  LINE_EX_RATE_ENTRY_D,                
  SY_GST_AMT,                
  OP_ENTRY_D,                
  OP_USER_ID,                
  IS_APPROVE,                
  PROCESS_FLAG,                
  PROCESS_DATE,                
  ERROR_ID,                
  ERROR_MSG,                
  F_INVENTORY_ITEM_ID,                
  F_INVENTORY_ORG_ID,                
  F_CATEGORY_ID,                
  F_TAX_CLASIFICATION_CODE,                
  F_ATTRIBUTE1,                
  F_ATTRIBUTE2,                
  F_ATTRIBUTE3,                
  F_ATTRIBUTE4,                
  F_ATTRIBUTE5,                
  F_ATTRIBUTE6,                
  F_ATTRIBUTE7,                
  F_ATTRIBUTE8,                
  F_ATTRIBUTE9,                
  F_ATTRIBUTE10                
                
  )                
  select distinct                
  'SCTJN',--upper(db_name()),                
  (select country_id from [172.20.200.187].SCTJN.dbo.sys_default),--isnull(vmast.COUNTRY_ID,''),                
  VOC_D.VOUCHER_N,                
  VOC_D.VOC_LINE_N,                
  VOC_D.CHGCODE_ID,                
  VOC_D.CHG_DES1,                
  VOC_D.CHG_DES2,                
  VOC_D.CHG_DES3,                
  VOC_D.CHG_DES4,                
  VOC_D.LINE_GST_TYPE,                
  VOC_D.LINE_WT_M3_IND,                
  VOC_D.LINE_UNIT_Q,                
  VOC_D.LINE_UNIT_CHG_A,                
  case when len(rtrim(ltrim(VOC_D.LINE_CHG_UNIT)))=0 then 'Ea' else VOC_D.LINE_CHG_UNIT end,---if Blank then 'Ea'                
  VOC_D.LINE_EX_RATE,                
  VOC_D.LINE_CURRENCY_ID,                
  VOC_D.LINE_GST_P,                
  VOC_D.LINE_GST_A,                
  VOC_D.LINE_TOT_A,                
  VOC_D.LINE_TOT_GST_A,                
  VOC_D.LINE_CURRENCY,                
  VOC_D.REF_NO,                
  VOC.VOC_JOB_N,---changes done                
  VOC_D.JOB_TYPE,                
  VOC.DOC_NO, --changes done                
  VOC_D.PAYTYPE,                
  VOC_D.LINE_EX_RATE_USER_ID,                
  VOC_D.LINE_EX_RATE_ENTRY_D,                
  VOC_D.sy_gst_amt,                
  VOC.ENTRY_D,                
  VOC.USER_ID,                
  case when VOC.APPROVED_BY is not null then 'Y' end,  --IS_APPROVE,,                
  Null,                
  Null,                
  Null,                
  Null,                
  cmast.F_INVENTORY_ITEM_ID,                
  cmast.F_INVENTORY_ORG_ID,                
  cmast.F_CATEGORY_ID,                
  cmast.F_INPTAX_CLASIFICATION_CODE,                
  Null,                
  Null,                
  Null,                
  Null,                
  Null,                
  Null,                
  Null,                
  Null,                
  Null,                
  Null                
                
  from [172.20.200.187].SCTJN.dbo.voucher_det VOC_D inner join [172.20.200.187].SCTJN.dbo.VOUCHER VOC on VOC.voucher_n = VOC_D.voucher_n                
  inner join [172.20.200.187].SCTJN.dbo.vendor_mast vmast on vmast.VENDOR_ID = VOC.VENDOR_ID                
  inner join [172.20.200.187].SCTJN.dbo.chgcode_mast cmast on cmast.CHGCODE_ID = VOC_D.CHGCODE_ID                
  inner join finance.dbo.ProtalToEGSControl PEC on VOC.VOUCHER_N =PEC.Voucher_Number  and VOC.INVOICE_N= PEC.INVOICE_NUMBER --and VOC.VOC_JOB_N = PEC.JOB_NUMBER  -- Aisa made some jobnumber as 0                
  where vmast.F_PARTY_NUMBER is not null --and cmast.f_inventory_item_ID is not null /* commented as per Aisa recommendation*/
  and VOC.CONTROL_FLAG='Y'                 
  and PEC.Inv_type= 'VOUCHER' and VOC.APPROVED_BY is not null and PEC.Inv_Status ='Submitted'  and isnull(PEC.ISNewAppVoc,'1') = 0 and isnull(PEC.ISNewAppInv,'1') = 1                 
  and upper(PEC.[Environment])='SCTJN'  and exists  ( select * from voucher IDBVoc where IDBVoc.VOUCHER_N =PEC.voucher_number)                
                
END TRY        
BEGIN CATCH        
 IF @@TRANCOUNT > 0        
  ROLLBACK TRANSACTION;        
 DECLARE @ErrorNumber INT = ERROR_NUMBER();        
    DECLARE @ErrorLine INT = ERROR_LINE();        
    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();        
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();        
    DECLARE @ErrorState INT = ERROR_STATE();        
 DECLARE @ErrorProcedure NVARCHAR(100) = ERROR_PROCEDURE();        
    set @ErrorMessage = 'ERROR_NUMBER: '+ CAST(@ErrorNumber AS VARCHAR(10)) +' | ERROR_LINE: '+         
       CAST(@ErrorLine AS VARCHAR(10))+ ' | PROCEDURE_NAME: '+ @ErrorProcedure+' | ERROR_MESSAGE: '+ @ErrorMessage        
 RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);        
END CATCH             
End          
GO
