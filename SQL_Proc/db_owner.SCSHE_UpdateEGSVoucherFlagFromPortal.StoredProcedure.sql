USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    
     
CREATE Proc [SCSHE_UpdateEGSVoucherFlagFromPortal]          
  AS          
Begin    
BEGIN TRY      
          
  --------------------------------------------------------------------        
  /*STEP 1*- Update Flag to Invoice Table from Control File*/        
  --------------------------------------------------------------------        
   Begin    
    update VOC         
    set         
    VOC.Approved_By = case when upper(PEC.Inv_Status) = 'SUBMITTED' then PEC.Approved_By end,        
    VOC.APPROVED_DATE = case when upper(PEC.Inv_Status) = 'SUBMITTED' then PEC.CreateOn_UTC end,        
    VOC.Rejected_flag = case when upper(PEC.Inv_Status) = 'REJECTED' then 'Y' end,        
    VOC.CONTROL_FLAG = case when upper(PEC.Inv_Status) = 'REJECTED' then 'N' else VOC.CONTROL_FLAG end        
        
    --select pec.Invoice_Number,case when upper(PEC.Inv_Status) = 'SUBMITTED' then PEC.Approved_By end,        
    --case when upper(PEC.Inv_Status) = 'SUBMITTED' then PEC.CreateOn_UTC end        
    --,case when upper(PEC.Inv_Status) = 'REJECTED' then 'Y' end,          
    --case when upper(PEC.Inv_Status) = 'REJECTED' then 'N' else VOC.CONTROL_FLAG end        
    from [172.20.200.187].SCSHE.dbo.VOUCHER VOC  inner join finance.dbo.ProtalToEGSControl PEC        
    on VOC.VOUCHER_N =PEC.Voucher_Number  and VOC.INVOICE_N= PEC.INVOICE_NUMBER-- and VOC.VOC_JOB_N = PEC.JOB_NUMBER --Aisa made some 0         
    where  PEC.Inv_type= 'VOUCHER' and isnull(PEC.ISNewAppInv,1)= 1 and  isnull(PEC.ISNewAppVoc,1)= 1 and upper(PEC.Environment)='SCSHE'      
     
   End    
    --------------------------------------------------------------------        
  /* Update Control Table to avoid update the EGS multiple times */        
  --------------------------------------------------------------------        
  Begin    
   update PEC         
   set ISNewAppVoc =0      
   --select *        
   from finance.dbo.ProtalToEGSControl PEC        
   where PEC.Inv_type= 'VOUCHER' and isnull(PEC.ISNewAppInv,1)= 1  and upper(PEC.[Environment])='SCSHE'     
     
   
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
