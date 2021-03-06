USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [SCTHA_CustomerMasterUpdate]  
As  
Begin  
BEGIN TRY 
 Begin  
  delete from Finance.dbo.[CUSTOMER_MASTER] where Environment ='SCTHA'  
 end  
 Begin  
  INSERT INTO Finance.dbo.[CUSTOMER_MASTER] (Environment,Parent_ID,Parent_Short_Name,Child_ID,  
  Child_Short_Name,  
  Child_Long_Name,  
  Cust_Inv_Group_ID,  
  Cust_Inv_Bill_Freq,  
  Child_Address_Line_1, Child_Address_Line_2,Child_Address_Line_3,Child_Address_Line_4,Child_Country,  
  Child_ZipCode,Child_Telephone,Child_Fax,Child_Website,Parent_Address_Line_1,  
  Parent_Address_Line_2,Parent_Address_Line_3,Parent_Address_Line_4)  
  SELECT distinct  'SCTHA', dept_id,null,CUST_ID,  
  CASE WHEN CUSTOMER_MAST.CUST_ID = '2543' --AND upper(DB_NAME()) = 'SCTHA'   
  THEN CUSTOMER_MAST.CUST_NAME2 ELSE CUSTOMER_MAST.CUST_NAME END  
  ,CUST_NAME2,  
  '',--customer_inv_group.[billings type],   
  '',--customer_inv_group.frequency,  
  ADD1,ADD2,ADD3,ADD4,COUNTRY_ID,POSTAL_C,TEL1,FAX1,EMAIL_1,ADD1_2,ADD2_2,ADD3_2,ADD4_2  
  FROM [172.20.200.187].SCTHA.dbo.CUSTOMER_MAST    
  
  --left outer  join SCTHA.dbo.cost_centre_mast on CUSTOMER_MAST.dept_id = cost_centre_mast.COST_CENTRE_C  
  ----left outer join singapore.dbo.customer_inv_group on CUSTOMER_MAST.CUST_ID = customer_inv_group.[egs cust_id] --and CUSTOMER_MAST.parentAcctid = customer_inv_group.[customer group]  
  ----and customer_inv_group.[EGS Cust_name] ='singapore' and  
  -- where CUSTOMER_MAST.dept_id in (select distinct dept_id from SCTHA.dbo.customer_mast)  
  
  -- --select * from [172.20.2.68].finance.dbo.[CUSTOMER_MASTER]  
 End  
 Begin  
   update f_cust  
  set Parent_Short_Name = cost_centre_mast.COST_CENTRE_DES  
  --select *   
  from Finance.dbo.[CUSTOMER_MASTER] f_cust left outer join [172.20.200.187].SCTHA.dbo.cost_centre_mast on f_cust.Parent_ID = cost_centre_mast.COST_CENTRE_C  
  where  upper(f_cust.Environment) = 'SCTHA'  
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
