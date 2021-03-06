USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [SCTJN_GenerateInvoiceDetailsForIntegartion]  
AS        
BEGIN      
BEGIN TRY      
  insert into finance.dbo.invoice_det(        
  ENVI,        
  COUNTRY_ID,        
  INVOICE_N,        
  INV_LINE_N,        
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
  LINE_GST_P,        
  LINE_GST_A,        
  LINE_TOT_A,        
  LINE_TOT_GST_A,        
  LINE_CURRENCY,        
  LINE_EX_RATE_USER_ID,        
  LINE_EX_RATE_ENTRY_D,        
  LINE_COST_CENTRE,        
  TRN_VOUCHER_N,        
  TRN_ENVIRONMENT,        
  OP_ENTRY_D,        
  OP_USER_ID,        
  IS_APPROVE,        
  ERROR_ID,        
  ERROR_MSG,        
  PROCESS_FLAG,        
  PROCESS_DATE,        
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
  (select country_id from [172.20.200.187].SCTJN.dbo.sys_default),--c_mast.COUNTRY_ID,        
  INV_D.INVOICE_N,        
  INV_D.INV_LINE_N,        
  INV_D.CHGCODE_ID,        
  INV_D.CHG_DES1,        
  INV_D.CHG_DES2,        
  INV_D.CHG_DES3,        
  INV_D.CHG_DES4,        
  INV_D.LINE_GST_TYPE,        
  INV_D.LINE_WT_M3_IND,        
  INV_D.LINE_UNIT_Q,        
  INV_D.LINE_UNIT_CHG_A,        
  case when len(rtrim(ltrim(INV_D.LINE_CHG_UNIT)))=0 then 'Ea' else INV_D.LINE_CHG_UNIT end,--INV_D.LINE_CHG_UNIT,        
  INV_D.LINE_EX_RATE,        
  INV_D.LINE_GST_P,        
  INV_D.LINE_GST_A,        
  INV_D.LINE_TOT_A,        
  INV_D.LINE_TOT_GST_A,        
  INV_D.LINE_CURRENCY,        
  INV_D.LINE_EX_RATE_USER_ID,        
  INV_D.LINE_EX_RATE_ENTRY_D,        
  INV_D.LINE_COST_CENTRE,        
  INV_D.trn_voucher_n,        
  INV_D.trn_environment,        
  case when (INV. modified_dt) is not null then INV. modified_dt else INV.ENTRY_D end, --op_entry_d  INV. modified_dt, if null then INV. ENTRY_D ,        
  case when (INV. modified_user) is not null then INV. modified_user else INV.USER_ID end  , --OP_USER_ID  INV. modified_user, if null then INV.USER_ID (basically this is the verifier),        
  case when INV.APPROVED_BY is not null then 'Y' end,        
  Null,        
  Null,        
  Null,        
  Null,        
  chg_mast.F_INVENTORY_ITEM_ID,        
  chg_mast.F_INVENTORY_ORG_ID,        
  chg_mast.F_CATEGORY_ID,        
  chg_mast.F_TAX_CLASIFICATION_CODE,        
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
 
  from [172.20.200.187].SCTJN.dbo.invoice INV inner join [172.20.200.187].SCTJN.dbo.invoice_det INV_D on        
  INV.INVOICE_N = INV_D.INVOICE_N and INV.approved_by is not null        
  inner join [172.20.200.187].SCTJN.dbo.Chgcode_mast CHG_MAST on  CHG_MAST.CHGCODE_ID = INV_D.CHGCODE_ID        
  inner join [172.20.200.187].SCTJN.dbo.customer_mast C_MAST on  INV.CUST_ID = C_MAST.cust_id         
  inner join finance.dbo.ProtalToEGSControl PEC on  INV_D.INVOICE_N= PEC.INVOICE_NUMBER 
  Where  PEC.Inv_Status ='Submitted' and isnull(PEC.ISNewAppVoc,'1') = 0 and isnull(PEC.ISNewAppInv,'1') = 1         
  and PEC.Inv_type= 'INVOICE' and upper(PEC.[Environment])='SCTJN'   
  and exists( select * from invoice IDBInv where IDBInv.INVOICE_N = PEC.invoice_number)  
       
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
END    


GO
