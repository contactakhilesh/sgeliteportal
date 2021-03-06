USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [SCSHE_CreateExportJobforIntegration]      
as      
Begin  
BEGIN TRY    
 If exists (select *       
    FROM [172.20.200.187].SCSHE.dbo.Export inner join [172.20.200.187].SCSHE.dbo.export_ref on Export.export_ref_n  = export_REF.export_REF_N       
    inner join [172.20.200.187].SCSHE.dbo.INVOICE on invoice.INV_JOB_N = Export.EXPORT_N and  isnull(invoice.export_ind,'N') <>'Y' and invoice.CONTROL_FLAG='Y'          
    inner join [172.20.200.187].SCSHE.dbo.CUSTOMER_MAST on CUSTOMER_MAST.CUST_ID = Export.CUST_ID       
    where  not exists( select * from Finance.dbo.JOB  where JOB.JOB_N = export.export_n and job.envi='SCSHE'))      
 Begin      
  insert into finance.dbo.job      
   (ENVI,      
   COUNTRY_ID,      
   CUST_ID,      
   JOB_N,      
   JOB_REF_N,      
   SHIPPER_REF,      
   CONSIGNEE,      
   PORT_LOAD_NAME,      
   PORT_DISC_NAME,      
   PORT_REC_NAME,      
   PORT_DEL_NAME,      
   HBL_N,      
   ACTUAL_SAIL_D,      
   ETD,      
   ETA,      
   ATA,      
   VESSEL,      
   VOYAGE,      
   CARRIER_AGENT_ID,      
   ACTUAL_CARRIER_ID,      
   PRODUCT_ID,      
   PRODUCT_NAME,      
   TOT_CONTAINER,      
   DOCS_SENT_TO_BANK_D,      
   DOCS_SENT_TO_CUST_D,      
   BUSI_TYPE,      
   BUSI_LINE,      
   DATE_CREATED,      
   PROCESS_FLAG,      
   PROCESS_DATE,      
   ERROR_ID,      
   ERROR_MSG,      
   ORDERTYPE,      
   dept_id,      
   F_PARTY_NUMBER,      
   F_CUST_ACCOUNT_NUMBER,      
   F_CUST_SITE_NUMBER,      
   F_ATTRIBUTE1,      
   F_ATTRIBUTE2,      
   F_ATTRIBUTE3,      
   F_ATTRIBUTE4,      
   F_ATTRIBUTE5,      
   F_ATTRIBUTE6,      
   F_ATTRIBUTE7,      
   F_ATTRIBUTE8,      
   F_ATTRIBUTE9,      
   F_ATTRIBUTE10      
  )      
      
  select       
   distinct      
   'SCSHE', --upper(db_name()),      
   (select country_id from [172.20.200.187].SCSHE.dbo.sys_default),--CUSTOMER_MAST.COUNTRY_ID,      
   Export.CUST_ID,      
   Export.EXPORT_N,      
   Export.EXPORT_REF_N,      
   isnull(EXPORT.CUST_ORD_NO,''),      
   EXPORT.S_CON1,      
   Export.PORT_LOAD_NAME,      
   Export.PORT_DISC_NAME,      
   Export.PORT_REC_NAME,      
   Export.PORT_DEL_NAME,      
   Export.HBL_N,      
   Export.ACTUAL_SAIL_D,      
   EXPORT_Ref.ETD,      
   EXPORT_Ref.ETA,      
   EXPORT_Ref.ATA,      
   EXPORT_Ref.VESSEL,      
   EXPORT_Ref.VOYAGE,      
   EXPORT_REF.CR_AGENT_ID,      
   Export_ref.Actual_cr_id,--EXPORT.ACTUAL_CT_ID not foun in db,      
   '',--select top 1 Prod_id from  export inner join EXPORT_PRODUCT on export.export_n = EXPORT_PRODUCT.PROD_EXPORT_N      
   '',-- select top 1 PROD_NAME from  export inner join EXPORT_PRODUCT on export.export_n = EXPORT_PRODUCT.PROD_EXPORT_N      
   '', --SELECT CONVERT(VARCHAR(20), COUNT(CONT.CONT_N)) + ' x '  + MAX(CONT.CONT_SIZE) + '''' FROM EXPORT_REF_CONT CONT inner join EXPORT on CONT.EXPORT_N =EXPORT.EXPORT_N WHERE SELECT_IND = 'Y'      
   Export.DOCS_SENT_TO_BANK_D,      
   Export.DOCS_SENT_TO_CUST_D,      
   Null,      
   Null,      
   getdate(),      
   Null,      
   Null,      
   Null,      
   Null,      
   'EXPORT',      
   CUSTOMER_MAST.DEPT_ID,      
   CUSTOMER_MAST.F_PARTY_NUMBER,      
   CUSTOMER_MAST.F_CUST_ACCOUNT_NUMBER,      
   CUSTOMER_MAST.F_CUST_SITE_NUMBER,      
   export.s_shipper1,      
   '',      
   '',      
   '',      
   '',      
   '',      
   '',      
   '',      
   '',      
   ''      
  -- select count(*)       
  FROM [172.20.200.187].SCSHE.dbo.Export inner join [172.20.200.187].SCSHE.dbo.export_ref on Export.export_ref_n  = export_REF.export_REF_N       
  inner join [172.20.200.187].SCSHE.dbo.INVOICE on invoice.INV_JOB_N = Export.EXPORT_N and  isnull(invoice.export_ind,'N') <>'Y' and invoice.CONTROL_FLAG='Y'          
  inner join [172.20.200.187].SCSHE.dbo.CUSTOMER_MAST on CUSTOMER_MAST.CUST_ID = Export.CUST_ID       
  where  not exists( select * from Finance.dbo.JOB  where JOB.JOB_N = export.export_n and job.envi='SCSHE')      
      
  Begin--To upadte the Product_ID               
	   update Job      
	   set PRODUCT_ID = Prod_id      
	   from  finance.dbo.Job Job inner join [172.20.200.187].SCSHE.dbo.EXPORT_PRODUCT on job.JOB_N = EXPORT_PRODUCT.PROD_EXPORT_N   
	   and  job.envi='SCSHE'      
  End       
  Begin--To upadte the Product_ID               
	   update Job      
	   set PRODUCT_NAME = PROD_NAME      
	   from  finance.dbo.Job job inner join [172.20.200.187].SCSHE.dbo.EXPORT_PRODUCT on job.JOB_N = EXPORT_PRODUCT.PROD_EXPORT_N   
	   and  job.envi='SCSHE'             
  End      
  Begin -- To update total TOT_CONTAINER               
	   update job      
	   set TOT_CONTAINER = cont.TOT_CONTAINER      
	   FROM finance.dbo.job job ,  (select CONVERT(VARCHAR(20), COUNT(CONT.CONT_N)) + ' x '  + MAX(CONT.CONT_SIZE) + '''' as TOT_CONTAINER,EXPORT_N       
	   from [172.20.200.187].SCSHE.dbo.EXPORT_REF_CONT cont where SELECT_IND = 'Y' group by EXPORT_N ) CONT      
	   where CONT.EXPORT_N =job.JOB_N    and  job.envi='SCSHE'          
  End      
 End      
 else       
 print 'No New Export Job to Push to Integration'      

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
