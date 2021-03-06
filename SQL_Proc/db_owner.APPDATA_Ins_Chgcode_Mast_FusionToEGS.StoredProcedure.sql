USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
            
CREATE Proc [APPDATA_Ins_Chgcode_Mast_FusionToEGS]            
as            
Begin            
            
 BEGIN TRY            
  if exists (select * from sys.sysobjects where name ='FusionToEGS_Temp_Chgcode_Mast' and xtype='U')            
     drop table FusionToEGS_Temp_Chgcode_Mast            
            
   

	Select * into  FusionToEGS_Temp_Chgcode_Mast from  (Select * From  Finance.dbo.[Chgcode_MAST]  IMast               
	Where PROCESS_FLAG is NULL and ENVI='APPDATA' and  not exists ( select * from [172.20.200.187].APPDATA.dbo.[Chgcode_MAST] EMast 
	where Imast.CHGCODE_ID= Emast.CHGCODE_ID) ) A  
          
  --select * from FusionToEGS_Temp_Chgcode_Mast a where not exists (select * from [172.20.200.187].APPDATA.dbo.[Chgcode_MAST] b where a.chgcode_id= b.chgcode_id )          
  --select * from [172.20.200.187].APPDATA.dbo.[Chgcode_MAST] a where   exists (select * from  FusionToEGS_Temp_Chgcode_Mast b where a.chgcode_id= b.chgcode_id )          
            
  Insert  [172.20.200.187].APPDATA.dbo.[Chgcode_MAST] (          
 --insert Chgcode_Mast_test(          
 CHGCODE_ID,          
 CHGCODE_DES,          
 CHG_UNIT,          
 GST_TYPE_ID,          
 GST_P,          
 CHG_ACC_ID,          
 CHG_TYPE_ID,          
 CONT_TYPE_ID,          
 FIXED_CHG_A,          
 TRANSPORT_IND,          
 CHG_ACC_ID2,          
 AR_CODE,          
 AB_CODE,          
 WT_M3_IND,          
 GRPCODE_ID,          
 CATEGORY,          
 isunitprice_fixed,          
 hi_autoinvoice_addtlchg,          
 hi_autoinvoice_chgunitq,          
 hi_autoinvoice_tratype,          
 hi_autoinvoice_currency,          
 hi_autoinvoice_chgunita,          
 gst_type_id2,          
 gst_type_id3,          
 --CHGCODE_JP,          
 --CHGCODE_HK,          
 --CHGCODE_ORD_ADD,          
 autoinvcode,          
 cont_size,          
 ACTIVE,          
 F_INVENTORY_ITEM_ID,          
 F_INVENTORY_ORG_ID,          
 F_CATEGORY_ID,          
 F_TAX_CLASIFICATION_CODE,          
 F_INPTAX_CLASIFICATION_CODE          
          
 )            
            
  Select             
 CHGCODE_ID,          
 CHGCODE_DES,          
 CHG_UNIT,          
 GST_TYPE_ID,          
 GST_P,          
 CHG_ACC_ID,          
 CHG_TYPE_ID,          
 CONT_TYPE_ID,          
 FIXED_CHG_A,          
 TRANSPORT_IND,          
 CHG_ACC_ID2,          
 AR_CODE,          
 AB_CODE,          
 WT_M3_IND,          
 GRPCODE_ID,          
 CATEGORY,          
 'N',          
 'N',          
 1,          
 'E',          
  (SELECT CURRENCY_ID FROM [172.20.200.187].APPDATA.dbo.SYS_DEFAULT)   ,--default as envi currency id                  
 0,          
 gst_type_id2,          
 gst_type_id3,          
 --CHGCODE_JP,          
 --CHGCODE_HK,          
 --CHGCODE_ORD_ADD,          
 autoinvcode,          
 cont_size,          
 'Y',          
 F_INVENTORY_ITEM_ID,          
 F_INVENTORY_ORG_ID,          
 F_CATEGORY_ID,          
 F_TAX_CLASIFICATION_CODE,          
 F_ATTRIBUTE2          
          
  From  FusionToEGS_Temp_Chgcode_Mast            
            
  /* Update the Intergartion DB for already moved Customer Master Details to EGS by Setting Process_Flag ='Y'*/            
           
  Update vMast            
  set PROCESS_FLAG='Y'            
  --select *             
  from Finance.dbo.Chgcode_MAST vMast inner join FusionToEGS_Temp_Chgcode_Mast tMast on vMast.ENVI= tMast.ENVI and vMast.Chgcode_ID=tMast.Chgcode_ID            
              
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
