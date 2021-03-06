USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  Proc [SCSHE_UpdEGSInvoiceControlToStopSendingDataToIntegration]      
 as      
Begin   
BEGIN TRY    
  --------------------------------------------------------------------      
  /*STEP 4*- Update Control Table to avoid sending the records to Integration and EGS tables*/      
  --------------------------------------------------------------------      
  update PEC       
  set ISNewAppInv =0, UpdatedOn_UTC= GETUTCDATE()      
  --select UpdatedOn_UTC,GETUTCDATE()      
  from finance.dbo.ProtalToEGSControl PEC      
  where PEC.Inv_type= 'INVOICE' and isnull(PEC.ISNewAppInv,1)= 1   and upper(PEC.[Environment])='SCSHE'    
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
