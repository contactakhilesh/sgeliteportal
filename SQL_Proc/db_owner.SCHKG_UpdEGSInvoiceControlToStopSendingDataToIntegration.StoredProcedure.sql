USE [Finance]
GO
/****** Object:  StoredProcedure [SCHKG_UpdEGSInvoiceControlToStopSendingDataToIntegration]    Script Date: 3/22/2018 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  

CREATE  Proc [SCHKG_UpdEGSInvoiceControlToStopSendingDataToIntegration]          
 as          
Begin       
BEGIN TRY        
  --------------------------------------------------------------------          
  /*STEP 4*- Update Control Table to avoid sending the records to Integration and EGS tables*/          
  --------------------------------------------------------------------          
  ----update PEC           
  ----set ISNewAppInv =0, UpdatedOn_UTC= GETUTCDATE()          
  ------select UpdatedOn_UTC,GETUTCDATE()          
  ----from finance.dbo.ProtalToEGSControl PEC          
  ----where PEC.Inv_type= 'INVOICE' and isnull(PEC.ISNewAppInv,1)= 1   and upper(PEC.[Environment])='SCHKG'  
  
  /* Update Below Query to make sure Portal attempts to Resend the Invoice to IDB where Fusion ID is not populated*/  
  update PEC           
  set ISNewAppInv =0, UpdatedOn_UTC= GETUTCDATE()          
  -- select UpdatedOn_UTC,GETUTCDATE()     
  from [172.20.200.187].SCHKG.dbo.INVOICE INV inner join ProtalToEGSControl PEC                        
   on INV.CUST_ID = PEC.[Child_ID]  and INV.INVOICE_N= PEC.Invoice_Number and INV.INV_JOB_N = isnull(PEC.[Job_Number],1)                        
   inner join [172.20.200.187].SCHKG.dbo.customer_mast C_MAST  on INV.cust_id= C_MAST.cust_id                        
   where PEC.Inv_type= 'INVOICE'  and isnull(PEC.ISNewAppInv,1)= 1  and INV.Approved_By is not null and  isnull(PEC.ISNewAppVoc,1)= 0                        
   and   ( C_MAST.F_PARTY_NUMBER is not null OR c_mast.TO_ENVI is not null)  and upper(PEC.[Environment])='SCHKG'  
  
  
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
