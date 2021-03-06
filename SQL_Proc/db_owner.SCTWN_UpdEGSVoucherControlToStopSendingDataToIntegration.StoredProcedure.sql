USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  Proc [SCTWN_UpdEGSVoucherControlToStopSendingDataToIntegration]            
as            
Begin     
BEGIN TRY           
  --------------------------------------------------------------------          
  /*STEP 4*- Update Control Table to avoid sending the records to Integration and EGS tables*/          
  --------------------------------------------------------------------          
  ----update PEC           
  ----set ISNewAppInv =0  ,UpdatedOn_UTC= GETUTCDATE()        
  ------select *          
  ----from finance.dbo.ProtalToEGSControl PEC          
  ----where PEC.Inv_type= 'VOUCHER' and isnull(PEC.ISNewAppInv,1)= 1  and upper(PEC.[Environment])='SCTWN'  
  
  /* Commented Above upate to make sure only records sent to IDB is mmaked as comleted */  
 update PEC           
 set ISNewAppInv =0  ,UpdatedOn_UTC= GETUTCDATE()  
 -- select *   
 from [172.20.200.187].SCTWN.dbo.VOUCHER VOC inner join  [172.20.200.187].SCTWN.dbo.vendor_mast vmast on vmast.VENDOR_ID = VOC.VENDOR_ID            
 inner join finance.dbo.ProtalToEGSControl PEC on VOC.VOUCHER_N =PEC.Voucher_Number  and VOC.INVOICE_N= PEC.INVOICE_NUMBER   
 where (vmast.F_PARTY_NUMBER is not null OR vmast.TO_ENVI is not null) and VOC.CONTROL_FLAG ='Y' and PEC.Inv_type= 'VOUCHER'             
 and isnull(PEC.ISNewAppInv,1)= 1 and VOC.approved_by is not null and upper(PEC.[Environment])='SCTWN'   and  isnull(PEC.ISNewAppVoc,1)= 0  
  
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
