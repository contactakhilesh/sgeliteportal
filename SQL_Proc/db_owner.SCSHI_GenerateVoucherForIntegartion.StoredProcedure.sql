USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  
CREATE Proc [SCSHI_GenerateVoucherForIntegartion]              
 as              
Begin                
BEGIN TRY            
  --------------------------------------------------------------------            
  /*STEP 2*- Generate Voucher for Integartion DB*/            
  --------------------------------------------------------------------            
  Insert into Finance.dbo.VOUCHER (            
  ENVI,            
  COUNTRY_ID,            
  VOUCHER_N,            
  VOC_TRA_TYPE,            
  VOC_REF_N,            
  VOC_JOB_N,            
  VOUCHER_D,            
  COST_CENTRE_C,            
  VENDOR_ID,            
  VESSEL,            
  VOYAGE,            
  ETA,            
  ETD,            
  REF_EX_RATE,            
  VOC_EX_RATE,            
  CURRENCY_ID,            
  PORT_LOAD_ID,            
  PORT_DISC_ID,            
  REMARKS1,            
  REMARKS2,            
  REMARKS3,            
  REMARKS4,            
  REMARKS5,            
  DOC_IND,            
  VOID_IND,            
  EXPORT_IND,            
  TERM_IND,            
  CHQ_NO,            
  BANK,            
  DOC_NO,            
  DOC_NAME,            
  PAY_DATE,            
  DOC_DATE,            
  PO_NO,            
  PO_DATE,            
  DOC_DUE_DATE,            
  CONTROL_FLAG,            
  INVOICE_N,            
  type,            
  VOC_EX_RATE_USER_ID,            
  VOC_EX_RATE_ENTRY_D,            
  VOC_EX_RATE_USD,            
  OP_ENTRY_D,            
  OP_USER_ID,            
  APPROVED_D,            
  APPROVED_BY,            
  IS_APPROVE,            
  REJ_REASON,            
  TRANSSOURCE,            
  DATE_CREATED,            
  PROCESS_FLAG,            
  PROCESS_DATE,            
  ERROR_ID,            
  ERROR_MSG,            
  TO_ENVI,            
  F_PARTY_NUMBER,            
  F_SUPPLIER_NUMBER,            
  F_SUPPLIER_SITE_NUMBER,            
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
 'SCSHI',--Upper(db_name()),            
 (select country_id from [172.20.200.187].SCSHI.dbo.sys_default), --isnull(vmast.COUNTRY_ID,''),            
 VOC.VOUCHER_N,            
 VOC.VOC_TRA_TYPE,            
 VOC.VOC_REF_N,            
 VOC.VOC_JOB_N,            
 VOC.VOUCHER_D,            
 VOC.COST_CENTRE_C,            
 VOC.VENDOR_ID,            
 VOC.VESSEL,            
 VOC.VOYAGE,            
 VOC.ETA,            
 VOC.ETD,            
 VOC.REF_EX_RATE,            
 VOC.VOC_EX_RATE,            
 VOC.CURRENCY_ID,            
 VOC.PORT_LOAD_ID,            
 VOC.PORT_DISC_ID,            
 VOC.REMARKS1,            
 VOC.REMARKS2,            
 VOC.REMARKS3,            
 VOC.REMARKS4,            
 VOC.REMARKS5,            
 VOC.DOC_IND,            
 VOC.VOID_IND,            
 VOC.EXPORT_IND,            
 VOC.TERM_IND,            
 VOC.CHQ_NO,            
 VOC.BANK,            
 VOC.DOC_NO,            
 VOC.DOC_NAME,            
 VOC.PAY_DATE,            
 VOC.DOC_DATE,            
 VOC.PO_NO,            
 VOC.PO_DATE,            
 VOC.DOC_DUE_DATE,            
 VOC.CONTROL_FLAG,            
 VOC.INVOICE_N,            
 VOC.type,            
 VOC.VOC_EX_RATE_USER_ID,            
 VOC.VOC_EX_RATE_ENTRY_D,            
 VOC.VOC_EX_RATE_USD,            
 VOC.ENTRY_D,            
 VOC.USER_ID,            
 VOC.APPROVED_DATE,            
 VOC.APPROVED_BY,            
 case when VOC.APPROVED_BY is not null then 'Y' end,  --IS_APPROVE,            
 Null,            
 'EGS',            
 getdate(),            
 Null,            
 Null,            
 Null,            
 Null,            
 vmast.TO_ENVI,            
 vmast.F_PARTY_NUMBER,            
 vmast.F_SUPPLIER_NUMBER,            
 vmast.F_SUPPLIER_SITE_NUMBER,            
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
     
 from [172.20.200.187].SCSHI.dbo.VOUCHER VOC inner join  [172.20.200.187].SCSHI.dbo.vendor_mast vmast on vmast.VENDOR_ID = VOC.VENDOR_ID            
  inner join finance.dbo.ProtalToEGSControl PEC on VOC.VOUCHER_N =PEC.Voucher_Number  and VOC.INVOICE_N= PEC.INVOICE_NUMBER --and VOC.VOC_JOB_N = PEC.JOB_NUMBER --Aisa mae some jn number as 0            
 where (vmast.F_PARTY_NUMBER is not null OR vmast.TO_ENVI is not null) and VOC.CONTROL_FLAG ='Y' and PEC.Inv_type= 'VOUCHER'             
 and VOC.approved_by is not null and upper(PEC.[Environment])='SCSHI' and  isnull(PEC.ISNewAppVoc,1)= 0 and PEC.Inv_Status ='Submitted' and isnull(PEC.ISNewAppInv,1)= 1 
       
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
