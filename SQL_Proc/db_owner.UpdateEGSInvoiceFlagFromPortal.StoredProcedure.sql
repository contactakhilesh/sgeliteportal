USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [UpdateEGSInvoiceFlagFromPortal]
		as
		Begin
		--------------------------------------------------------------------
		/*STEP 1*- Update Flag to Invoice Table from Control File*/
		--------------------------------------------------------------------
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
			from [172.20.200.187].appdata.dbo.INVOICE INV inner join finance.dbo.ProtalToEGSControl PEC
			on INV.CUST_ID = PEC.[Child_ID] and  INV.INVOICE_N= PEC.Invoice_Number and INV.INV_JOB_N = isnull(PEC.[Job_Number],1)
			--inner join finance.dbo.Proforma pro  on PRO.Environment = PEC.[Environment] and PRO.Parent_ID = PEC.[Parent_ID] and PRO.Child_ID = PEC.[Child_ID] and isnull(PRO.[Job_Number],1) = isnull(PEC.[Job_Number],1)
			where PEC.Inv_type= 'INVOICE' and  isnull(PEC.ISNewAppInv,1)= 1 and PEC.Environment='APPDATA'
		End
GO
