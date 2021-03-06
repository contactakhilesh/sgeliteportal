USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  Proc [UpdEGSVoucherControlToStopSendingDataToIntegration]  
as  
Begin  
		--------------------------------------------------------------------
		/*STEP 4*- Update Control Table to avoid sending the records to Integration and EGS tables*/
		--------------------------------------------------------------------
		update PEC 
		set ISNewAppInv =0
		--select *
		from finance.dbo.ProtalToEGSControl PEC
		where PEC.Inv_type= 'VOUCHER' and isnull(PEC.ISNewAppInv,1)= 1  and upper(PEC.[Environment])='APPDATA'  
		
End
GO
