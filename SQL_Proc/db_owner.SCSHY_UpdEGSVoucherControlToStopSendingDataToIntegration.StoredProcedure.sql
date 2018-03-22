USE [Finance]
GO
/****** Object:  StoredProcedure [SCSHY_UpdEGSVoucherControlToStopSendingDataToIntegration]    Script Date: 3/22/2018 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  Proc [SCSHY_UpdEGSVoucherControlToStopSendingDataToIntegration]        
as        
Begin 
BEGIN TRY       
  --------------------------------------------------------------------      
  /*STEP 4*- Update Control Table to avoid sending the records to Integration and EGS tables*/      
  --------------------------------------------------------------------      
  update PEC       
  set ISNewAppInv =0  ,UpdatedOn_UTC= GETUTCDATE()    
  --select *      
  from finance.dbo.ProtalToEGSControl PEC      
  where PEC.Inv_type= 'VOUCHER' and isnull(PEC.ISNewAppInv,1)= 1  and upper(PEC.[Environment])='SCSHY'        
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
