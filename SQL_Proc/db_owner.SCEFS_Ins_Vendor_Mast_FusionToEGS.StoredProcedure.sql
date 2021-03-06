USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    
             
CREATE Proc [SCEFS_Ins_Vendor_Mast_FusionToEGS]              
as              
Begin              
              
 BEGIN TRY              
  if exists (select * from sys.sysobjects where name ='FusionToEGS_Temp_Vendor_Mast' and xtype='U')              
     drop table FusionToEGS_Temp_Vendor_Mast              
 
  
  Select * into  FusionToEGS_Temp_Vendor_Mast from  (Select * From  Finance.dbo.[VENDOR_MAST]  IMast               
  Where PROCESS_FLAG is NULL and ENVI='SCEFS' and not exists ( select * from [172.20.200.187].SCEFS.dbo.[VENDOR_MAST] EMast 
			where Imast.VENDOR_ID= Emast.VENDOR_ID) ) A        
              
  Insert  [172.20.200.187].SCEFS.dbo.[VENDOR_MAST] (            
 --insert Vendor_Mast_test(            
 VENDOR_ID,            
 VENDOR_NAME,            
 VENDOR_SHORT_NAME,            
 VEND_TYPE_ID,            
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
 CONTACT1,            
 CONTACT2,            
 EMAIL_1,            
 EMAIL_2,            
 VENDOR_TYPE_SUB_ID,            
 VENDOR_ACC_ID,            
 CURRENCY_ID,            
 TERM_ID,            
 UEN,            
 include_in_consplrpt,            
 TO_ENVI,            
 PAY_GRP,            
 FREIGHT_AUDIT,            
 REMIT_TO_SUPP,            
 F_PARTY_NUMBER,            
 F_SUPPLIER_NUMBER,            
 F_SUPPLIER_SITE_NUMBER            
 )              
              
 Select               
 VENDOR_ID,            
 substring(ltrim(rtrim(VENDOR_NAME)),1,70),            
 '', --VENDOR_SHORT_NAME            
 VEND_TYPE_ID,            
 ADD1,            
 substring(ltrim(rtrim(ADD2)),1,50),           
 ADD3,            
 Ltrim(RTrim(case  when len(isnull(CITY,'')) <= 0 then '' else  City end +  case  when len(isnull(POSTAL_CODE,''))= 0 then '' else  +' '+ POSTAL_CODE end)), --ADD4,            
 COUNTRY_CD,            
 POSTAL_CODE,            
 TEL1,            
 TEL2,            
 FAX1,            
 FAX2,            
 substring(ltrim(rtrim(CONTACT_1)),1,40),             
 substring(ltrim(rtrim(CONTACT_2)),1,40),            
 substring(ltrim(rtrim(EMAIL_1)),1,40),            
 substring(ltrim(rtrim(EMAIL_2)),1,40),            
 VENDOR_TYPE_SUB_ID,            
 VENDOR_ACC_ID,            
 CURRENCY_ID,            
 TERM_ID,            
 UEN,            
 'N', --include_in_consplrpt            
 TO_ENVI,            
 PAY_GRP,            
 freight_audit,            
 remit_to_supp,            
 F_PARTY_NUMBER,            
 F_SUPPLIER_NUMBER,            
 F_SUPPLIER_SITE_NUMBER                
 From  FusionToEGS_Temp_Vendor_Mast              
              
  /* Update the Intergartion DB for already moved Customer Master Details to EGS by Setting Process_Flag ='Y'*/              
             
  Update vMast              
  set PROCESS_FLAG='Y'              
  --select *               
  from Finance.dbo.[VENDOR_MAST] vMast inner join FusionToEGS_Temp_Vendor_Mast tMast on vMast.ENVI= tMast.ENVI and vMast.Vendor_ID=tMast.Vendor_ID              
                
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
