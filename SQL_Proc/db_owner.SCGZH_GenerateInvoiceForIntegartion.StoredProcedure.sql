USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [SCGZH_GenerateInvoiceForIntegartion]                            
 as                            
Begin                    
BEGIN TRY                           
  --------------------------------------------------------------------                            
  /*STEP 2*- Genearte Invoice for Integartion DB*/                            
  --------------------------------------------------------------------                            
   insert into finance.dbo.invoice(                            
   ENVI,                            
   COUNTRY_ID,                            
   INVOICE_N,                            
   INV_D,                            
   CUST_ID,                            
   INV_JOB_N,                            
   INV_TRA_TYPE,                            
   CURRENCY_ID,                            
   INV_EX_RATE,                            
   REF_EX_RATE,                            
   ETA,                            
   ETD,                            
   TERM_ID,                            
   COST_CENTRE_C,                            
   GD_DES1,                            
   GD_DES2,                            
   GD_DES3,                            
   GD_DES4,                            
   GD_DES5,                            
   GD_DES6,                            
   GD_DES7,                            
   GD_DES8,                            
   INV_GST_A,                            
   INV_TOT_STD_RATE_A,                            
   INV_TOT_ZERO_RATE_A,                            
   INV_TOT_A,                            
   INV_TOT_GST_A,                            
   INV_TYPE,                            
   INV_EX_RATE_USER_ID,                            
   INV_EX_RATE_ENTRY_D,                            
   INV_EX_RATE_USD,                            
   INV_OTH_REF,                            
   WITHHOLD_TAX,                            
   REV_CRINV_N,                            
   ENTITY_ROWID,                            
   YY_INVOICE_NO,                            
   YY_INVOICE_DT,                            
   TYPE,                            
   LSR_NO,                            
   OP_ENTRY_D,                            
   OP_USER_ID,                            
   APPROVED_D,                            
   APPROVED_BY,                            
   IS_APPROVE,                            
   REJ_REASON,                            
   FIN_TRANSTYPE,                            
   PROCESS_FLAG,                            
   PROCESS_DATE,                            
   ERROR_ID,                            
   ERROR_MSG,                            
   GROUP_NO,                            
   TO_ENVI,                            
   TO_ENVI_JOB,                            
   IS_GROUP,                            
   F_PARTY_NUMBER,                            
   F_CUST_ACCOUNT_NUMBER,                            
   F_CUST_SITE_NUMBER,                            
   F_ATTRIBUTE1,                            
   F_ATTRIBUTE2,                            
   F_ATTRIBUTE3,                            
   F_ATTRIBUTE4,                            
   F_ATTRIBUTE5,                            
   F_ATTRIBUTE6,                            
   F_ATTRIBUTE7,                            
   F_ATTRIBUTE8,                            
   F_ATTRIBUTE9,                            
   F_ATTRIBUTE10,                            
   F_BILLING_PARTY_NUMBER,                            
   F_BILLING_CUST_ACCT_NUMBER,                            
   F_BILLING_CUST_SITE_NUMBER                            
                            
   )                            
                             
   select distinct                             
   'SCGZH', --upper(db_name()),                            
   (select country_id from [172.20.200.187].SCGZH.dbo.sys_default),--c_mast.COUNTRY_ID,                            
   INV.INVOICE_N,                            
   INV.INV_D,                            
   INV.CUST_ID,                            
   INV.INV_JOB_N,                          
   INV.INV_TRA_TYPE,                            
   INV.CURRENCY_ID,                            
   INV.INV_EX_RATE,                            
   INV.REF_EX_RATE,                            
   INV.ETA,                            
   INV.ETD,                            
   INV.TERM_ID,                            
   INV.COST_CENTRE_C,         
   INV.GD_DES1,                            
   INV.GD_DES2,           
   SUBSTRING(                        
   case  when len(isnull(INV.GD_DES3,'')) <= 0 then '' else  INV.GD_DES3 end +                        
   case  when len(isnull(INV.GD_DES4,''))= 0 then '' else  +'/'+INV.GD_DES4 end +                        
   case  when len(isnull(INV.GD_DESC5,''))= 0 then '' else  +'/'+INV.GD_DESC5 end +                        
   case  when len(isnull(INV.GD_DESC6,''))= 0 then '' else  +'/'+INV.GD_DESC6 end +                        
   case  when len(isnull(INV.GD_DESC7,''))= 0 then '' else  +'/'+INV.GD_DESC7 end,1,150), --(isnull(INV.GD_DES3,'' + ‘/ ‘ + INV.GD_DES4 + ‘/ ‘ +  INV.GD_DESC5 + ‘/ ‘ +  INV.GD_DESC6 + ‘/ ‘ +  INV.GD_DESC7 ,  --INV.GD_DES3,                          
   INV.GD_DES4,                            
   INV.GD_DES5,                          
   INV.GD_DESC5,                            
   INV.GD_DESC6,                            
   INV.GD_DESC7,                            
   INV.INV_GST_A,                            
   INV.INV_TOT_STD_RATE_A,                            
   INV.INV_TOT_ZERO_RATE_A,                            
   INV.INV_TOT_A,                            
   INV.INV_TOT_GST_A,                          
   INV.INV_TYPE,                            
   INV.INV_EX_RATE_USER_ID,                            
   INV.INV_EX_RATE_ENTRY_D,                            
   INV.INV_EX_RATE_USD,                            
   INV.INV_OTH_REF,                            
   INV.WITHHOLD_TAX,                            
   INV.REV_CRINV_N,                            
 INV.entity_rowid,                            
   INV.yy_invoice_no,                            
   INV.yy_invoice_dt,                            
   INV.type,                            
   INV.lsr_no,                            
   case when (INV. modified_dt) is not null then INV. modified_dt else INV. ENTRY_D end, --op_entry_d  INV. modified_dt, if null then INV. ENTRY_D                             
   case when (INV. modified_user) is not null then INV. modified_user else INV.USER_ID end  , --OP_USER_ID  INV. modified_user, if null then INV.USER_ID (basically this is the verifier)                            
 INV.APPROVED_DATE,                            
   INV.APPROVED_BY,                            
   case when INV.APPROVED_BY is not null then 'Y' end,  --IS_APPROVE                            
   null,                            
   -- case when c_mast.to_envi is null then 'SalesOrder' else 'Intercompany' end,--FIN_TRANSTYPE        
   case when isnull(c_mast.TO_ENVI,'') = ''  then    'SalesOrder' else 'Intercompany' end, --FIN_TRANSTYPE                          
   null,                            
   null,--inv.bill_to_party,                            
   null,                            
   null,                            
   INV.GROUP_NO,                            
   c_mast.TO_ENVI,--INV.TO_ENVI,                            
   INV.TO_ENVI_JOB,                            
   INV.IS_GROUP,                             
   c_mast.F_PARTY_NUMBER,                            
   c_mast.F_CUST_ACCOUNT_NUMBER,                            
   c_mast.F_CUST_SITE_NUMBER,                            
   null,                            
   null,                            
   null,                            
   null,                            
   null,                            
   null,                            
   null,                            
   null,                            
   null,                            
   null,                            
   null,                            
   null,                            
   Null                     
   from [172.20.200.187].SCGZH.dbo.INVOICE INV inner join finance.dbo.ProtalToEGSControl PEC                            
   on INV.CUST_ID = PEC.[Child_ID]  and INV.INVOICE_N= PEC.Invoice_Number and INV.INV_JOB_N = isnull(PEC.[Job_Number],1)                            
   inner join [172.20.200.187].SCGZH.dbo.customer_mast C_MAST  on INV.cust_id= C_MAST.cust_id                            
   where PEC.Inv_type= 'INVOICE' and INV.Approved_By is not null and  isnull(PEC.ISNewAppVoc,1)= 0 and PEC.Inv_Status ='Submitted' and  isnull(PEC.ISNewAppInv,1)= 1                              
   and   ( C_MAST.F_PARTY_NUMBER is not null OR c_mast.TO_ENVI is not null)  and upper(PEC.[Environment])='SCGZH' --and INV.CONTROL_FLAG ='Y'                             
                              
  /* To Update the Bill To Party Details in Intergartion Invoice Table*/                            
  Begin               
                            
   update INVI  set                             
   INVI.F_BILLING_PARTY_NUMBER  = Cbill.F_PARTY_NUMBER,                            
   INVI.F_BILLING_CUST_ACCT_NUMBER = Cbill.F_CUST_ACCOUNT_NUMBER,                
   INVI.F_BILLING_CUST_SITE_NUMBER = Cbill.F_CUST_SITE_NUMBER                             
   --,INVI.GROUP_NO = case when len(isnull(INVI.lsr_no,''))>0 then INVI.LSR_NO else INVI.GROUP_NO end       ,                    
   --INVI.IS_GROUP = case when len(isnull(INVI.lsr_no,''))>0 then 'Y'  end                      
                            
   -- select inv.bill_to_party,Cbill.F_PARTY_NUMBER,Cbill.F_CUST_ACCOUNT_NUMBER,Cbill.F_CUST_SITE_NUMBER ,case when len(isnull(INVI.lsr_no,''))>0 then INVI.LSR_NO else INVI.GROUP_NO end ,  case when len(isnull(INVI.lsr_no,''))>0 then 'Y'  end            
   
   
                 
   from INVOICE INVI inner join [172.20.200.187].SCGZH.dbo.INVOICE INV on INVI.invoice_n=INV.invoice_n                            
   and INVI.inv_job_n = INV.inv_job_n and INVI.ENVI = 'SCGZH' --and invi.lsr_no = inv.lsr_no                             
   inner join [172.20.200.187].SCGZH.dbo.customer_mast Cbill on cbill.cust_id = case when len(ltrim(rtrim(isnull(INV.bill_to_party,''))))=0 then inv.cust_id  else INV.bill_to_party end                            
   inner join finance.dbo.ProtalToEGSControl PEC                            
    on INV.CUST_ID = PEC.[Child_ID]  and INV.INVOICE_N= PEC.Invoice_Number and INV.INV_JOB_N = isnull(PEC.[Job_Number],1) 
	and  isnull(PEC.ISNewAppInv,1)= 1 and  isnull(PEC.ISNewAppVoc,1)= 0  and PEC.Inv_Status ='Submitted'                 
               
 /* To Update LSR_NO even Bill_To _Party is Null */                        
                
   update INVI  set                                        
   INVI.GROUP_NO = case when len(isnull(INVI.lsr_no,''))>0 then INVI.LSR_NO else INVI.GROUP_NO end       ,                    
   INVI.IS_GROUP = case when len(isnull(INVI.lsr_no,''))>0 then 'Y'  end                      
                            
   -- select case when len(isnull(INVI.lsr_no,''))>0 then INVI.LSR_NO else INVI.GROUP_NO end ,  case when len(isnull(INVI.lsr_no,''))>0 then 'Y'  end                          
                
   from INVOICE INVI inner join [172.20.200.187].SCGZH.dbo.INVOICE INV on INVI.invoice_n=INV.invoice_n                            
   and INVI.inv_job_n = INV.inv_job_n and INVI.ENVI = 'SCGZH' and invi.lsr_no = inv.lsr_no                             
   inner join finance.dbo.ProtalToEGSControl PEC                            
   on INV.CUST_ID = PEC.[Child_ID]  and INV.INVOICE_N= PEC.Invoice_Number and INV.INV_JOB_N = isnull(PEC.[Job_Number],1) and  isnull(PEC.ISNewAppInv,1)= 1 
   and  isnull(PEC.ISNewAppVoc,1)= 0   and PEC.Inv_Status ='Submitted'             
   where len(isnull(INVI.lsr_no,''))>0               
  End               
              
                     
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
