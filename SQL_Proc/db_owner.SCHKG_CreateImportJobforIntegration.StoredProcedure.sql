USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
      
CREATE Proc [SCHKG_CreateImportJobforIntegration]      
as      
Begin      
BEGIN TRY      
 if exists (select *      
  FROM [172.20.200.187].SCHKG.dbo.Import inner join [172.20.200.187].SCHKG.dbo.IMPORT_REF on  Import.IMPORT_REF_N  = IMPORT_REF.IMPORT_REF_N       
  inner join  [172.20.200.187].SCHKG.dbo.INVOICE on invoice.INV_JOB_N = Import.IMPORT_N and  isnull(invoice.export_ind,'N') <>'Y' and invoice.CONTROL_FLAG='Y'          
  inner join [172.20.200.187].SCHKG.dbo.CUSTOMER_MAST on CUSTOMER_MAST.CUST_ID = import.CUST_ID       
  where  not exists( select * from Finance.dbo.JOB  where JOB.JOB_N = import.import_n and job.ENVI ='SCHKG'))      
      
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
   'SCHKG',--upper(db_name()),      
   (select country_id from [172.20.200.187].SCHKG.dbo.sys_default),--CUSTOMER_MAST.COUNTRY_ID,      
   Import.CUST_ID,      
   Import.IMPORT_N,      
   Import.IMPORT_REF_N,      
   isnull(IMPORT.CUST_ORD_NO,''),      
   IMPORT.shipper_02,      
   Import.PORT_LOAD_NAME,      
   Import.PORT_DISC_NAME,      
   Import.PORT_REC_NAME,      
   Import.PORT_DEL_NAME,      
   Import.HBL_N,      
   Import.ACTUAL_SAIL_D,      
   Import_Ref.ETD,      
   Import_Ref.ETA,      
   Import_Ref.ATA,      
   Import_Ref.VESSEL,      
   Import_Ref.VOYAGE,      
   IMPORT_REF.CR_AGENT_ID,      
   '',--IMport.ACTUAL_CT_ID is ''      
   '',--select top 1 Prod_id from  export inner join EXPORT_PRODUCT on export.export_n = EXPORT_PRODUCT.PROD_EXPORT_N      
   '',-- select top 1 PROD_NAME from  export inner join EXPORT_PRODUCT on export.export_n = EXPORT_PRODUCT.PROD_EXPORT_N      
   '', --SELECT CONVERT(VARCHAR(20), COUNT(CONT.CONT_N)) + ' x '  + MAX(CONT.CONT_SIZE) + '''' FROM EXPORT_REF_CONT CONT inner join EXPORT on CONT.IMPORT_N =EXPORT.IMPORT_N WHERE SELECT_IND = 'Y'      
   Import.DOCS_SENT_TO_BANK_D,      
   Import.DOCS_SENT_TO_CUST_D,      
   Null,      
   Null,      
   getdate(),      
   Null,      
   Null,      
   Null,      
   Null,      
   'IMPORT',      
   CUSTOMER_MAST.DEPT_ID,      
   CUSTOMER_MAST.F_PARTY_NUMBER,      
   CUSTOMER_MAST.F_CUST_ACCOUNT_NUMBER,      
   CUSTOMER_MAST.F_CUST_SITE_NUMBER,      
    import. shipper_1,      
   '',      
   '',      
   '',      
   '',      
   '',      
   '',      
   '',      
   '',      
   ''      
   --select distinct import_n      
   FROM [172.20.200.187].SCHKG.dbo.Import inner join [172.20.200.187].SCHKG.dbo.IMPORT_REF on  Import.IMPORT_REF_N  = IMPORT_REF.IMPORT_REF_N       
   inner join  [172.20.200.187].SCHKG.dbo.INVOICE on invoice.INV_JOB_N = Import.IMPORT_N and  isnull(invoice.export_ind,'N') <>'Y' and invoice.CONTROL_FLAG='Y'          
   inner join [172.20.200.187].SCHKG.dbo.CUSTOMER_MAST on CUSTOMER_MAST.CUST_ID = import.CUST_ID       
   where  not exists( select * from Finance.dbo.JOB  where JOB.JOB_N = import.import_n and job.ENVI ='SCHKG')      
   Begin --To upadte the Product_ID              
    update Job      
    set PRODUCT_ID = Prod_id      
    from  finance.dbo.Job job inner join [172.20.200.187].SCHKG.dbo.IMPORT_PRODUCT on job.JOB_N = IMPORT_PRODUCT.PROD_IMPORT_N   
 and job.ENVI ='SCHKG'      
   End      
   Begin --To upadte the Product_ID      
    update Job      
    set PRODUCT_NAME = PROD_NAME      
    from  finance.dbo.Job job inner join [172.20.200.187].SCHKG.dbo.IMPORT_PRODUCT on job.JOB_N = IMPORT_PRODUCT.PROD_IMPORT_N    
 and job.ENVI ='SCHKG'     
   End      
   Begin-- To update total TOT_CONTAINER      
    update job      
    set TOT_CONTAINER = cont.TOT_CONTAINER      
    FROM finance.dbo.job job ,  (select CONVERT(VARCHAR(20), COUNT(CONT.CONT_N)) + ' x '  + MAX(CONT.CONT_SIZE) + '''' as TOT_CONTAINER,IMPORT_N       
    from [172.20.200.187].SCHKG.dbo.IMPORT_REF_CONT cont where SELECT_IND = 'Y' group by IMPORT_N ) CONT      
    where CONT.IMPORT_N =job.JOB_N and job.ENVI ='SCHKG'  
   End      
 End      
 else       
 print 'No New Import Job to Push to Integration'      
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
