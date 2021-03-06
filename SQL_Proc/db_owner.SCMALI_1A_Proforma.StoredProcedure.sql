USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
                 
CREATE Proc [SCMALI_1A_Proforma]                        
as                            
Begin          
BEGIN TRY                        
                            
  Begin            
   Delete from finance.dbo.[Proforma]  where  Environment='SCMALI'            
  End            
  insert into finance.dbo.[Proforma]                             
  SELECT                             
   'SCMALI' as environment, --upper(db_name())                            
   CUSTOMER_MASTER.Parent_ID,                             
   CUSTOMER_MASTER.CHILD_ID ,                            
   CUSTOMER_MASTER.Cust_Inv_Group_ID,                            
   customer_master.Child_Short_Name,                            
   isnull(INVOICE.INV_JOB_N,'') ,--export.EXPORT_N,                            
   isnull(INVOICE.INVOICE_N,''),                            
   export.CUST_ORD_NO,    --refernce                            
   INVOICE.INV_D,                              
   rtrim(ltrim(str(INVOICE.INV_REF_N))) +'-'+ rtrim(ltrim(str(INVOICE.INV_JOB_N))),                            
   EXPORT.S_SHIPPER1 ,                             
   case when (invoice.refbl_id = 'H') then invoice.HBL_N else invoice.OCEAN_BL end,                             
   export_ref.vessel +' '+ export_ref.voyage  ,                                  
   export_ref.ETD,                                  
   export.PORT_LOAD_NAME,                                  
   export.PORT_DISC_NAME,                                  
   INVOICE.TOT_WT,--convert(numeric(12,4),INVOICE.TOT_WT),                          
   INVOICE.TOT_M3,--convert(numeric(12,2),INVOICE.TOT_M3),                                  
   INVOICE.TOT_PACKAGES,--convert(numeric(10,0),INVOICE.TOT_PACKAGES) ,                               
   export_ref.job_type,                                                    
   INVOICE.INV_TOT_A,                            
   INVOICE.INV_TOT_GST_A,                            
   invoice.modified_user,                            
  'New'                            
  --,'','' --username,department                            
  ,'', --updated on                            
    'EXPORT',                            
  case when INVOICE.INV_TOT_A> 0 then 'U' else 'D' end ,--'U',                            
  '','',                            
   INVOICE.GD_DES5,                            
   ( INVOICE.GD_DES1+' '+ INVOICE.GD_DES2),                            
   export.PORT_REC_NAME,                            
   export.PORT_DEL_NAME,                            
   isnull(export.DOCS_SENT_TO_BANK_D,''),                            
   isnull(export.DOCS_SENT_TO_CUST_D,''),                            
   actual_sail_d,lsr_no,'','','','','',0,                            
   invoice.currency_id ,                             
   invoice.TERM_ID,                            
   null,                            
   case when len(ltrim(rtrim(isnull(invoice.BILL_TO_PARTY,'')))) =0 then CUSTOMER_MASTER.Child_ID else invoice.BILL_TO_PARTY end   ,          
   INVOICE.CONTROL_FLAG, (select currency_id from [172.20.200.187].SCMALI.dbo.sys_default )                  
             
  FROM [172.20.200.187].SCMALI.dbo.INVOICE left outer JOIN [172.20.200.187].SCMALI.dbo.EXPORT  ON INVOICE.INV_JOB_N = EXPORT.EXPORT_N                             
  INNER JOIN finance.dbo.CUSTOMER_MASTER  CUSTOMER_MASTER ON CUSTOMER_MASTER.CHILD_ID = INVOICE.CUST_ID                            
  left outer join [172.20.200.187].SCMALI.dbo.EXPORT_REF ON EXPORT.EXPORT_REF_N = EXPORT_REF.EXPORT_REF_N                            
                            
  WHERE  upper(CUSTOMER_MASTER.Environment) = 'SCMALI'      --INVOICE.APPROVED_BY IS NULL and                       
  --and INVOICE.INV_D >'2017-12-31' and  isnull(invoice.export_ind,'N') <>'Y'                            
  and exists ( select distinct invoice_n from [172.20.200.187].SCMALI.dbo.INVOICE_det INVOICE_det                             
  where INVOICE.INVOICE_N = INVOICE_det.INVOICE_N and  INVOICE.INV_D >'2016-12-31' and   isnull(invoice.export_ind,'N') <>'Y' )--and CONTROL_FLAG='Y' )     
                             
  
  
                            
           
                      
  /* To update the Import Invoice with Job Number*/                      
                        
  Begin                      
   Update Proforma                      
   set                      
   Proforma.Job_Number = INVOICE.INV_JOB_N,                     
   proforma.Shipper = IMPORT.SHIPPER_1 ,                  
   proforma.VesVoy = IMPORT_ref.vessel +' '+ IMPORT_ref.voyage ,                  
   proforma.Reference_Number= IMPORT.CUST_ORD_NO,                    
   proforma.ETD_ETA=IMPORT_ref.ETA,                   
   proforma.Fr=  IMPORT.PORT_LOAD_NAME,                  
   proforma.[To] =   IMPORT.PORT_DISC_NAME,                  
   --Proforma.WT =IMPORT_REF.total_wt,                      
   --Proforma.Volm3 = IMPORT_REF.total_m3,                      
   --Proforma.PKGS_WT_M3=   Import_REF.total_pkgs,                  
   proforma.Job_Type =   IMPORT_ref.job_type,                   
   proforma.Inv_type='IMPORT'   ,                  
   proforma.DocSentOutDate_Bank = isnull(IMPORT.DOCS_SENT_TO_BANK_D,''),                  
   proforma.DocSentOutDate_Cust = isnull(IMPORT.DOCS_SENT_TO_CUST_D,'')                  
                  
   --select *                       
   from finance.dbo.Proforma   inner join  [172.20.200.187].SCMALI.dbo.INVOICE                       
   on INVOICE.CUST_ID = Proforma.[Child_ID] and  INVOICE.INVOICE_N= Proforma.Invoice_Number and Inv_TRA_type='I' and upper(Proforma.Environment)= 'SCMALI'                      
   left outer JOIN [172.20.200.187].SCMALI.dbo.IMPORT  ON INVOICE.INV_JOB_N = IMPORT.IMPORT_N                       
   left outer JOIN [172.20.200.187].SCMALI.dbo.IMPORT_REF ON IMPORT.IMPORT_REF_N = IMPORT_REF.IMPORT_REF_N                      
                  
  End                      
  Begin    --To update Tot Container for Import                      
     update A                          
     set TOT_CONTAINER = cont.TOT_CONTAINER                          
     FROM finance.dbo.proforma A ,  (select CONVERT(VARCHAR(20), COUNT(CONT.CONT_N)) + ' x '  + MAX(CONT.CONT_SIZE) + '''' as TOT_CONTAINER,IMPORT_N                           
     from [172.20.200.187].SCMALI.dbo.IMPORT_REF_CONT cont where SELECT_IND = 'Y' group by IMPORT_N ) CONT                          
     where CONT.IMPORT_N =A.JOB_NUMBER and upper(a.Environment)='SCMALI'                          
  End                           
  Begin      --To update Tot Container for Export                      
     update A                            
     set TOT_CONTAINER = cont.TOT_CONTAINER                            
     FROM finance.dbo.proforma A ,  (select CONVERT(VARCHAR(20), COUNT(CONT.CONT_N)) + ' x '  + MAX(CONT.CONT_SIZE) + '''' as TOT_CONTAINER,EXPORT_N                             
     from [172.20.200.187].SCMALI.dbo.EXPORT_REF_CONT cont where SELECT_IND = 'Y' group by EXPORT_N ) CONT                            
     where CONT.EXPORT_N =A.JOB_NUMBER and upper(a.Environment)='SCMALI'                            
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
