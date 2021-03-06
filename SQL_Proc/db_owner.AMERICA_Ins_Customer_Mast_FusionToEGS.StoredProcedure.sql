USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
                    
CREATE Proc [AMERICA_Ins_Customer_Mast_FusionToEGS]                    
as                    
Begin                    
                    
 BEGIN TRY                    
  if exists (select * from sys.sysobjects where name ='FusionToEGS_Temp_Customer_Mast' and xtype='U')                    
     drop table FusionToEGS_Temp_Customer_Mast                    
                    
  Select * into  FusionToEGS_Temp_Customer_Mast from  (Select * From  Finance.dbo.[CUSTOMER_MAST]  IMast                 
  Where PROCESS_FLAG is NULL and ENVI='AMERICA' and not exists ( select * from [172.20.200.187].AMERICA.dbo.Customer_Mast EMast   
   where Imast.CUST_ID= Emast.cust_ID) ) A      --and Process_date >='2018-02-19'              
                    
  Insert  [172.20.200.187].AMERICA.dbo.Customer_Mast (                   
  --insert Customer_Mast_test  (                    
  CUST_ID,                    
  CUST_NAME,                    
  CUST_TYPE_ID,                    
  CUST_TYPE_SUB_ID,                    
  ADD1,                    
  ADD2,                    
  ADD3,                    
  ADD4,                    
  COUNTRY_ID,                    
  POSTAL_C,                    
  TEL1,                    
  TEL2,                    
  FAX1,                    
  FAX2,                    
  EMAIL_1,                    
  EMAIL_2,                    
  CONTACT_1,                    
  CONTACT_2,                    
  CONTACT_3,                    
  CONTACT_4,                    
  CUST_ACC_ID,                    
  CREDIT_LIMIT_A,                    
  INV_TO_DATE_A,                    
  INV_PAID_A,                    
  APPROVED_BY,                    
  CURRENCY_ID,                    
  TERM_ID,                    
  SALESMAN_ID,                    
  REMARKS1,                    
  REMARKS2,                    
  USER_ID,                    
  ENTRY_D,                    
  CREATE_D,                    
  TRA_PORT_ID,                    
  DEPT_ID,                    
  isinvoiceable,                    
  consolidate_inv,                    
  chk_permit_product,                    
  include_in_consplrpt,                    
  TO_ENVI,                    
  F_PARTY_NUMBER,                    
  F_CUST_ACCOUNT_NUMBER,                    
  F_CUST_SITE_NUMBER,    
  iscustomer,
  LIST_IND ,-- Asked by Aisa to add
  PARENTACCTID -- asked by Aisa
  )                    
                    
  Select                     
  CUST_ID,                    
  substring(rtrim(ltrim(CUST_NAME)),1,70),                    
  CUST_TYPE_ID,                    
  CUST_TYPE_SUB_ID,                    
  substring(rtrim(ltrim(add1)),1,40),                    
  substring(rtrim(ltrim(ADD2)),1,40),                    
  ADD3,                    
  Ltrim(RTrim(case  when len(isnull(CITY,'')) <= 0 then '' else  City end +  case  when len(isnull(POSTAL_CODE,''))= 0 then '' else  +' '+ POSTAL_CODE end)), --ADD4,                
  isnull(COUNTRY_CD,''),                    
  isnull(POSTAL_CODE,''),                    
  isnull(TEL1,''),                    
  isnull(TEL2,''),                    
  isnull(FAX1,''),                    
  isnull(FAX2,''),                    
  isnull(EMAIL_1,''),                    
  isnull(EMAIL_2,''),                    
  isnull(CONTACT_1,''),                    
  isnull(CONTACT_2,''),                    
  '',                    
  '',                    
  isnull(CUST_ACC_ID,''),                    
  0,                    
  0,                    
  0,                    
  '',                    
  (SELECT CURRENCY_ID FROM [172.20.200.187].AMERICA.dbo.SYS_DEFAULT)   ,-- isnull(CURRENCY_ID,''), --   as envi currency id                                       
  isnull(TERM_ID,''),                    
  isnull(SALESMAN_ID,''),                    
  '',                    
  '',                    
  'Fusion',                    
  getUTCdate(),                    
  getUTCdate(),                    
  (SELECT PORT_LOAD_ID FROM [172.20.200.187].AMERICA.dbo.SYS_DEFAULT) ,    --  TRA_PORT_ID,                                     
  DEPT_ID,                    
  'Y',--isinvoiceable                    
  'N',--consolidate_inv                    
  'N',--chk_permit_product                    
  'N',--include_in_consplrpt                    
  TO_ENVI,                    
  F_PARTY_NUMBER,                    
  F_CUST_ACCOUNT_NUMBER,                    
  F_CUST_SITE_NUMBER ,    
  'Y', -- ISCustomer
  'Y' , --LIST_IND                 
  ( select PARENTACCTID from [172.20.200.187].AMERICA.dbo.cost_centre_mast where COST_CENTRE_C = DEPT_ID) --PARENTACCTID
  From  FusionToEGS_Temp_Customer_Mast                    
                    
  /* Update the Intergartion DB for already moved Customer Master Details to EGS by Setting Process_Flag ='Y'*/                    
  Update cMast                    
  set PROCESS_FLAG='Y'                    
  --select *                     
  from Finance.dbo.[CUSTOMER_MAST] cMast inner join FusionToEGS_Temp_Customer_Mast tMast on cMast.ENVI= tMast.ENVI and cMast.Cust_ID=tMast.Cust_ID                    
                      
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
