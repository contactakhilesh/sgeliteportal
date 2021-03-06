USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE Proc [SAUDI_UpdateEGSInvoiceFlagFromPortal]            
  as            
Begin            
  --------------------------------------------------------------------            
  /*STEP 1*- Update Flag to Invoice Table from Control File*/            
  --------------------------------------------------------------------           
BEGIN TRY       
          
   begin        
   update INV             
   set             
   INV.IS_Group =  case when len(isnull(PEC.Consolidation_ID,''))>0  then 'Y' end,            
   INV.Group_No = PEC.[Consolidation_ID],             
   INV.Approved_By = case when upper(PEC.Inv_Status) = 'SUBMITTED' then PEC.Approved_By end,            
   INV.APPROVED_DATE = case when upper(PEC.Inv_Status) = 'SUBMITTED' then PEC.CreateOn_UTC end,            
   INV.Rejected_flag = case when upper(PEC.Inv_Status) = 'REJECTED' then 'Y' end,            
   INV.CONTROL_FLAG = case when upper(PEC.Inv_Status) = 'REJECTED' then 'N' else INV.CONTROL_FLAG end            
             
   --select distinct INVOICE_N, case when len(isnull(PEC.Consolidation_ID,''))>0  then 'Y' end,            
   --PEC.[Consolidation_ID],case when upper(PEC.Inv_Status) = 'SUBMITTED' then PEC.Approved_By end            
   --,case when upper(PEC.Inv_Status) = 'SUBMITTED' then PEC.CreateOn_UTC end,            
   --case when upper(PEC.Inv_Status) = 'REJECTED' then 'Y' end,            
   --case when upper(PEC.Inv_Status) = 'REJECTED' then 'N' else inv.CONTROL_FLAG end            
   from [172.20.200.187].SAUDI.dbo.INVOICE INV inner join finance.dbo.ProtalToEGSControl PEC            
   on INV.CUST_ID = PEC.[Child_ID] and  INV.INVOICE_N= PEC.Invoice_Number and INV.INV_JOB_N = isnull(PEC.[Job_Number],1)            
   where PEC.Inv_type= 'INVOICE' and  isnull(PEC.ISNewAppInv,1)= 1  and isnull(PEC.ISNewAppVoc,1)= 1 and PEC.Environment='SAUDI'                
       
        
     --------------------------------------------------------------------            
  /* Update Control Table to avoid update the EGS multiple times */            
  --------------------------------------------------------------------            
      
  update PEC             
  set ISNewAppVoc =0          
  --select *            
  --from finance.dbo.ProtalToEGSControl PEC            
  --where PEC.Inv_type= 'INVOICE' and isnull(PEC.ISNewAppInv,1)= 1  and isnull(PEC.ISNewAppVoc,1)= 1 and upper(PEC.[Environment])='SAUDI'   
  
  /* 03/16/2018- To make sure Control flag reset if Invoice flag is updated */  
-- select *     
   from [172.20.200.187].SAUDI.dbo.INVOICE INV inner join finance.dbo.ProtalToEGSControl PEC            
   on INV.CUST_ID = PEC.[Child_ID] and  INV.INVOICE_N= PEC.Invoice_Number and INV.INV_JOB_N = isnull(PEC.[Job_Number],1)            
   where PEC.Inv_type= 'INVOICE' and  isnull(PEC.ISNewAppInv,1)= 1  and isnull(PEC.ISNewAppVoc,1)= 1 and PEC.Environment='SAUDI'   
--   and INV.Approved_by is not null        /* fr Reject Case its repeating*/  
       
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
