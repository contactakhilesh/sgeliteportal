USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [UpdateEGSVoucherFlagFromPortal]    
  AS    
 Begin      
  --------------------------------------------------------------------  
  /*STEP 1*- Update Flag to Invoice Table from Control File*/  
  --------------------------------------------------------------------  
  update VOC   
  set   
  VOC.Approved_By = case when upper(PEC.Inv_Status) = 'SUBMITTED' then PEC.Approved_By end,  
  VOC.APPROVED_DATE = case when upper(PEC.Inv_Status) = 'SUBMITTED' then PEC.CreateOn_UTC end,  
  VOC.Rejected_flag = case when upper(PEC.Inv_Status) = 'REJECTED' then 'Y' end,  
  VOC.CONTROL_FLAG = case when upper(PEC.Inv_Status) = 'REJECTED' then 'N' else voc.CONTROL_FLAG end  
  
  --select pec.Invoice_Number,case when upper(PEC.Inv_Status) = 'SUBMITTED' then PEC.Approved_By end,  
  --case when upper(PEC.Inv_Status) = 'SUBMITTED' then PEC.CreateOn_UTC end  
  --,case when upper(PEC.Inv_Status) = 'REJECTED' then 'Y' end,    
  --case when upper(PEC.Inv_Status) = 'REJECTED' then 'N' else VOC.CONTROL_FLAG end  
  from [172.20.200.187].appdata.dbo.VOUCHER VOC  inner join finance.dbo.ProtalToEGSControl PEC  
  on VOC.VOUCHER_N =PEC.Voucher_Number  and VOC.INVOICE_N= PEC.INVOICE_NUMBER-- and VOC.VOC_JOB_N = PEC.JOB_NUMBER --Aisa made some 0   
  where  PEC.Inv_type= 'VOUCHER' and isnull(PEC.ISNewAppInv,1)= 1 and upper(PEC.Environment)='APPDATA'   
 End
GO
