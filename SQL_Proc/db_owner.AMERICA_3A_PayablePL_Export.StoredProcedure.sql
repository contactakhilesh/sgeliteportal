USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
      
CREATE Proc [AMERICA_3A_PayablePL_Export]                              
                              
As                              
Begin                              
BEGIN TRY                             
 Begin              
  Delete from Payable_PL where Environment='AMERICA'              
 End             
 /** HEADER- Export P and L  **/           
 /* SELECT              
 RTRIM(LTRIM(voucher_det.chg_des1)) as chg_des,           
 0 AS cost_ttl_amt_usd,           
 0 as cost_ttl_amt_sgd,           
 0 as sell_ttl_amt_usd,           
 0 as sell_ttl_amt_sgd,           
 0 as local_curr,           
 0 as sell_sgd           
 FROM [172.20.200.187].AMERICA.dbo.export_ref,           
 [172.20.200.187].AMERICA.dbo.voucher,             
 [172.20.200.187].AMERICA.dbo.voucher_det           
 WHERE ( export_ref.export_ref_n = voucher.voc_ref_n ) and           
 ( voucher.voucher_n = voucher_det.voucher_n ) and            
 ( VOUCHER.VOC_REF_N = :LS_RET ) AND            
 ( VOUCHER.VOC_TRA_TYPE = 'E' ) AND            
 ( VOUCHER.TERM_IND = 'C' ) AND           
 ( VOUCHER.currency_id <> (SELECT CURRENCY_ID FROM [172.20.200.187].AMERICA.dbo.SYS_DEFAULT) ) AND           
 VOUCHER_DET.CHGCODE_ID <> 'GSTPAY'           
 UNION ALL  */          
 Begin          
  insert into finance.dbo.[Payable_PL](                              
 Environment,Parent_ID,Child_ID,FromPartyName,Customer_Inv_Group_ID,                  
 Job_Number,Voucher_Number, [Invoice_Number],                  
 ToPartyID,[ToPartyName],Invoice_Line_Number,CHGCODE_ID,          
 [Details],[Type],                  
 [CostUSD],          
 [CostLocalCurrency],          
 [SellUSD],          
 [SellLocalCurrency],          
 LocalCurrency,          
 [Currency],                  
 [Amount],[LocalAmount],[TotalGST],[SupplierInv],DOC_DATE,Attachment_URL,Payable_Status,                              
 Submit_User,                              
 Review_User,                              
 Approve_User,                              
 Reject_User,                              
 Reject_Remarks,                              
 IsVocEGSUpdated,                              
 [prepared_by],                              
 NC_Type,SysCurrency, control_flag, GST_Percent,GST_Amount )           
          
 SELECT    distinct           
 CUSTOMER_MASTER.Environment, CUSTOMER_MASTER.Parent_ID, CUSTOMER_MASTER.Child_ID,CUSTOMER_MASTER.Child_Short_Name, CUSTOMER_MASTER.Cust_Inv_Group_ID,                    
 EXPORT.EXPORT_N,  VOUCHER.VOUCHER_N,VOUCHER.INVOICE_N as Invoice,                         
 VENDOR_MAST.VENDOR_ID, VENDOR_MAST.VENDOR_NAME,VOUCHER_DET.VOC_LINE_N,VOUCHER_DET.CHGCODE_ID,                               
 RTRIM(LTRIM(isnull(voucher_det.chg_des1,'') +'|'+ isnull(voucher_det.chg_des2,''))) as chg_des,  'VOUCHER' Type,           
          
 (voucher_det.line_tot_a * voucher.voc_ex_rate_usd ) AS cost_ttl_amt_usd,           
 0 as cost_ttl_amt_sgd,           
 0 as sell_ttl_amt_usd,           
 0 as sell_ttl_amt_sgd,           
 isnull((voucher.voc_ex_rate  *  voucher_det.line_tot_a * -1),0) as local_curr,           
          
 --0 as sell_sgd , -- required for DR Note          
 VOUCHER.CURRENCY_ID, --For Invoice we should take Line_currency          
 voucher_det.LINE_TOT_A, --Not Required          
 isnull( voucher_det.LINE_TOT_A,1) * isnull( voucher.VOC_EX_RATE,1) ,--Not Required                                     
 VOUCHER_DET.line_tot_gst_a as TOTAL_GST ,          
 VOUCHER.DOC_NO, VOUCHER.DOC_DATE, '','New','','','','','',0                
 ,voucher.USER_ID,'', (select currency_id from [172.20.200.187].AMERICA.dbo.sys_default ),  voucher.control_flag ,voucher_det.LINE_GST_P, voucher_det.LINE_GST_A
          
           
 FROM [172.20.200.187].AMERICA.dbo.voucher inner join [172.20.200.187].AMERICA.dbo.export_ref on ( export_ref.export_ref_n = voucher.voc_ref_n )          
 inner join [172.20.200.187].AMERICA.dbo.voucher_det on ( voucher.voucher_n = voucher_det.voucher_n )          
 inner join [172.20.200.187].AMERICA.dbo.export on export.export_ref_n  = EXPORT_REF.EXPORT_REF_N                   
 inner join finance.dbo.CUSTOMER_MASTER   on export.cust_id = CUSTOMER_MASTER.Child_ID                            
 inner join [172.20.200.187].AMERICA.dbo.vendor_mast on VOUCHER.VENDOR_ID = VENDOR_MAST.VENDOR_ID           
          
 WHERE             
 ( VOUCHER.VOC_TRA_TYPE = 'E' ) AND  ( VOUCHER.TERM_IND = 'C' )           
 AND ( VOUCHER.currency_id <> (SELECT CURRENCY_ID FROM [172.20.200.187].AMERICA.dbo.SYS_DEFAULT) ) AND VOUCHER_DET.CHGCODE_ID <> 'GSTPAY'           
  and upper(CUSTOMER_MASTER.Environment) = 'AMERICA'   and voucher.approved_by is null --and voucher.control_flag ='Y'         
 and voucher.voucher_n in                               
 (                              
 select voucher_n from [172.20.200.187].AMERICA.dbo.voucher voucher                               
 where  exists(select voucher_n from [172.20.200.187].AMERICA.dbo.voucher_det voucher_det                               
 where voucher.voucher_N = voucher_det.voucher_N)                              
 and voucher.VOUCHER_D >'2016-12-31' and   isnull(voucher.export_ind,'N') <>'Y')            
          
 union all           
 SELECT    distinct           
 CUSTOMER_MASTER.Environment, CUSTOMER_MASTER.Parent_ID, CUSTOMER_MASTER.Child_ID,CUSTOMER_MASTER.Child_Short_Name, CUSTOMER_MASTER.Cust_Inv_Group_ID,                    
 EXPORT.EXPORT_N,  VOUCHER.VOUCHER_N,VOUCHER.INVOICE_N as Invoice,                         
 VENDOR_MAST.VENDOR_ID, VENDOR_MAST.VENDOR_NAME,VOUCHER_DET.VOC_LINE_N,VOUCHER_DET.CHGCODE_ID,                               
 RTRIM(LTRIM(isnull(voucher_det.chg_des1,'') +'|'+ isnull(voucher_det.chg_des2,''))) as chg_des,  'VOUCHER' Type,           
          
 0 as cost_ttl_amt_usd,           
 voucher_det.line_tot_a AS cost_ttl_amt_sgd,           
 0 as sell_ttl_amt_usd,           
 0 as sell_ttl_amt_sgd,           
 isnull((voucher.voc_ex_rate  *  voucher_det.line_tot_a * -1),0) as local_curr,          
           
 --0 as sell_sgd , -- required for DR Note          
 VOUCHER.CURRENCY_ID, --For Invoice we should take Line_currency          
 voucher_det.LINE_TOT_A, --Not Required          
 isnull( voucher_det.LINE_TOT_A,1) * isnull( voucher.VOC_EX_RATE,1) ,--Not Required                                     
 VOUCHER_DET.line_tot_gst_a as TOTAL_GST ,          
 VOUCHER.DOC_NO, VOUCHER.DOC_DATE, '','New','','','','','',0                
 ,voucher.USER_ID,'', (select currency_id from [172.20.200.187].AMERICA.dbo.sys_default )  ,voucher.control_flag  ,voucher_det.LINE_GST_P, voucher_det.LINE_GST_A      
           
 FROM [172.20.200.187].AMERICA.dbo.voucher inner join [172.20.200.187].AMERICA.dbo.export_ref on ( export_ref.export_ref_n = voucher.voc_ref_n )          
 inner join [172.20.200.187].AMERICA.dbo.voucher_det on ( voucher.voucher_n = voucher_det.voucher_n )          
 inner join [172.20.200.187].AMERICA.dbo.export on export.export_ref_n  = EXPORT_REF.EXPORT_REF_N                            
 inner join finance.dbo.CUSTOMER_MASTER   on export.cust_id = CUSTOMER_MASTER.Child_ID                            
 inner join [172.20.200.187].AMERICA.dbo.vendor_mast on VOUCHER.VENDOR_ID = VENDOR_MAST.VENDOR_ID           
          
          
 WHERE            
 ( VOUCHER.VOC_TRA_TYPE = 'E' ) AND ( VOUCHER.TERM_IND = 'C' ) AND           
 ( VOUCHER.currency_id = (SELECT CURRENCY_ID FROM [172.20.200.187].AMERICA.dbo.SYS_DEFAULT) ) AND VOUCHER_DET.CHGCODE_ID <> 'GSTPAY'                
 and upper(CUSTOMER_MASTER.Environment) = 'AMERICA'   and voucher.approved_by is null --and voucher.control_flag ='Y'         
 and voucher.voucher_n in                               
 (                              
 select voucher_n from [172.20.200.187].AMERICA.dbo.voucher voucher                               
 where  exists(select voucher_n from [172.20.200.187].AMERICA.dbo.voucher_det voucher_det                               
 where voucher.voucher_N = voucher_det.voucher_N)                              
 and voucher.VOUCHER_D >'2016-12-31' and   isnull(voucher.export_ind,'N') <>'Y')            
          
 union all           
      
 SELECT    distinct           
 CUSTOMER_MASTER.Environment, CUSTOMER_MASTER.Parent_ID, CUSTOMER_MASTER.Child_ID,CUSTOMER_MASTER.Child_Short_Name, CUSTOMER_MASTER.Cust_Inv_Group_ID,                    
 EXPORT.EXPORT_N,  VOUCHER.VOUCHER_N,VOUCHER.INVOICE_N as Invoice,                         
 VENDOR_MAST.VENDOR_ID, VENDOR_MAST.VENDOR_NAME,VOUCHER_DET.VOC_LINE_N,VOUCHER_DET.CHGCODE_ID,                               
 RTRIM(LTRIM(isnull(voucher_det.chg_des1,'') +'|'+ isnull(voucher_det.chg_des2,''))) as chg_des,  'VOUCHER' Type,           
          
 CASE WHEN voucher.doc_ind <> 'SC' THEN (voucher.voc_ex_rate_usd * voucher_det.line_tot_a ) ELSE ( voucher.voc_ex_rate_usd * voucher_det.line_tot_a * -1 ) END AS cost_ttl_amt_usd,           
 0 as cost_ttl_amt_sgd,           
 0 as sell_ttl_amt_usd,           
 0 as sell_ttl_amt_sgd,           
 CASE WHEN voucher.doc_ind <> 'SC' THEN isnull((voucher.voc_ex_rate  *  voucher_det.line_tot_a * -1 ),0) ELSE isnull((voucher.voc_ex_rate  *  voucher_det.line_tot_a),0) END AS local_curr,           
          
 --0 as sell_sgd , -- required for DR Note          
 VOUCHER.CURRENCY_ID, --For Invoice we should take Line_currency          
 voucher_det.LINE_TOT_A, --Not Required          
 isnull( voucher_det.LINE_TOT_A,1) * isnull( voucher.VOC_EX_RATE,1) ,--Not Required                                     
 VOUCHER_DET.line_tot_gst_a as TOTAL_GST ,          
 VOUCHER.DOC_NO, VOUCHER.DOC_DATE, '','New','','','','','',0                
 ,VOUCHER.USER_ID,'', (select currency_id from [172.20.200.187].AMERICA.dbo.sys_default ) ,voucher.control_flag   ,voucher_det.LINE_GST_P, voucher_det.LINE_GST_A    
          
 FROM [172.20.200.187].AMERICA.dbo.voucher inner join [172.20.200.187].AMERICA.dbo.export_ref on ( export_ref.export_ref_n = voucher.voc_ref_n )          
 inner join [172.20.200.187].AMERICA.dbo.voucher_det on ( voucher.voucher_n = voucher_det.voucher_n )          
 inner join [172.20.200.187].AMERICA.dbo.export on export.export_ref_n  = EXPORT_REF.EXPORT_REF_N                            
 inner join finance.dbo.CUSTOMER_MASTER   on export.cust_id = CUSTOMER_MASTER.Child_ID                            
 inner join [172.20.200.187].AMERICA.dbo.vendor_mast on VOUCHER.VENDOR_ID = VENDOR_MAST.VENDOR_ID           
          
 WHERE           
 ( VOUCHER.VOC_TRA_TYPE = 'E' ) AND ( VOUCHER_DET.CHGCODE_ID <> 'GSTPAY' ) AND           
 ( VOUCHER.currency_id <> (SELECT CURRENCY_ID FROM [172.20.200.187].AMERICA.dbo.SYS_DEFAULT) ) AND ( voucher.term_ind = 'D' )            
  and upper(CUSTOMER_MASTER.Environment) = 'AMERICA'   and voucher.approved_by is null --and voucher.control_flag ='Y'         
 and voucher.voucher_n in                               
 (                              
 select voucher_n from [172.20.200.187].AMERICA.dbo.voucher voucher                               
 where  exists(select voucher_n from [172.20.200.187].AMERICA.dbo.voucher_det voucher_det                               
 where voucher.voucher_N = voucher_det.voucher_N)                              
 and voucher.VOUCHER_D >'2016-12-31' and   isnull(voucher.export_ind,'N') <>'Y')            
            
 UNION ALL           
          
 SELECT    distinct           
 CUSTOMER_MASTER.Environment, CUSTOMER_MASTER.Parent_ID, CUSTOMER_MASTER.Child_ID,CUSTOMER_MASTER.Child_Short_Name, CUSTOMER_MASTER.Cust_Inv_Group_ID,                    
 EXPORT.EXPORT_N,  VOUCHER.VOUCHER_N,VOUCHER.INVOICE_N as Invoice,                         
 VENDOR_MAST.VENDOR_ID, VENDOR_MAST.VENDOR_NAME,VOUCHER_DET.VOC_LINE_N,VOUCHER_DET.CHGCODE_ID,                               
 RTRIM(LTRIM(isnull(voucher_det.chg_des1,'') +'|'+ isnull(voucher_det.chg_des2,''))) as chg_des,  'VOUCHER' Type,            
          
 CASE WHEN voucher.doc_ind <> 'SC' THEN ( voucher.voc_ex_rate_usd * voucher_det.line_tot_a )  ELSE ( voucher.voc_ex_rate_usd * voucher_det.line_tot_a * -1 ) END AS cost_ttl_amt_usd,           
 0 as cost_ttl_amt_sgd,           
 0 as sell_ttl_amt_usd,           
 0 as sell_ttl_amt_sgd ,           
 CASE WHEN voucher.doc_ind <> 'SC' THEN isnull((voucher.voc_ex_rate  *  voucher_det.line_tot_a * -1),0)  ELSE isnull((voucher.voc_ex_rate  *  voucher_det.line_tot_a),0) END AS local_curr,           
          
 --0 as sell_sgd , -- required for DR Note          
 VOUCHER.CURRENCY_ID, --For Invoice we should take Line_currency          
 voucher_det.LINE_TOT_A, --Not Required          
 isnull( voucher_det.LINE_TOT_A,1) * isnull( voucher.VOC_EX_RATE,1) ,--Not Required                                     
 VOUCHER_DET.line_tot_gst_a as TOTAL_GST ,          
 VOUCHER.DOC_NO, VOUCHER.DOC_DATE, '','New','','','','','',0                
 ,voucher.USER_ID,'', (select currency_id from [172.20.200.187].AMERICA.dbo.sys_default ) ,voucher.control_flag   ,voucher_det.LINE_GST_P, voucher_det.LINE_GST_A     
                    
 FROM [172.20.200.187].AMERICA.dbo.voucher inner join [172.20.200.187].AMERICA.dbo.export_ref on ( export_ref.export_ref_n = voucher.voc_ref_n )          
 inner join [172.20.200.187].AMERICA.dbo.voucher_det on ( voucher.voucher_n = voucher_det.voucher_n )          
 inner join [172.20.200.187].AMERICA.dbo.export on export.export_ref_n  = EXPORT_REF.EXPORT_REF_N                            
 inner join finance.dbo.CUSTOMER_MASTER   on export.cust_id = CUSTOMER_MASTER.Child_ID                            
 inner join [172.20.200.187].AMERICA.dbo.vendor_mast on VOUCHER.VENDOR_ID = VENDOR_MAST.VENDOR_ID           
          
 WHERE           
 ( VOUCHER_det.job_type = 'E' ) AND ( VOUCHER_DET.CHGCODE_ID <> 'GSTPAY' ) AND            
 ( VOUCHER.currency_id <> (SELECT CURRENCY_ID FROM [172.20.200.187].AMERICA.dbo.SYS_DEFAULT) ) AND ( voucher.term_ind = 'M' )           
  and upper(CUSTOMER_MASTER.Environment) = 'AMERICA'   and voucher.approved_by is null --and voucher.control_flag ='Y'          
 and voucher.voucher_n in                               
 (              
 select voucher_n from [172.20.200.187].AMERICA.dbo.voucher voucher                               
 where  exists(select voucher_n from [172.20.200.187].AMERICA.dbo.voucher_det voucher_det                               
 where voucher.voucher_N = voucher_det.voucher_N)                              
 and voucher.VOUCHER_D >'2016-12-31' and   isnull(voucher.export_ind,'N') <>'Y')            
           
 UNION ALL           
          
 SELECT    distinct           
 CUSTOMER_MASTER.Environment, CUSTOMER_MASTER.Parent_ID, CUSTOMER_MASTER.Child_ID,CUSTOMER_MASTER.Child_Short_Name, CUSTOMER_MASTER.Cust_Inv_Group_ID,                    
 EXPORT.EXPORT_N,  VOUCHER.VOUCHER_N,VOUCHER.INVOICE_N as Invoice,                         
 VENDOR_MAST.VENDOR_ID, VENDOR_MAST.VENDOR_NAME,VOUCHER_DET.VOC_LINE_N,VOUCHER_DET.CHGCODE_ID,                               
 RTRIM(LTRIM(isnull(voucher_det.chg_des1,'') +'|'+ isnull(voucher_det.chg_des2,''))) as chg_des,  'VOUCHER' Type,           
          
 0 as cost_ttl_amt_usd,           
 CASE WHEN voucher.doc_ind <> 'SC' THEN voucher_det.line_tot_a   ELSE (voucher_det.line_tot_a * voucher.voc_ex_rate * -1 ) END AS cost_ttl_amt_sgd,           
 0 as sell_ttl_amt_usd,           
 0 as sell_ttl_amt_sgd,           
 CASE WHEN voucher.doc_ind <> 'SC' THEN isnull((voucher.voc_ex_rate  *  voucher_det.line_tot_a * -1),0)  ELSE isnull((voucher.voc_ex_rate  *  voucher_det.line_tot_a ),0) END AS local_curr,           
          
 --0 as sell_sgd , -- required for DR Note          
 VOUCHER.CURRENCY_ID, --For Invoice we should take Line_currency          
 voucher_det.LINE_TOT_A, --Not Required          
 isnull( voucher_det.LINE_TOT_A,1) * isnull( voucher.VOC_EX_RATE,1) ,--Not Required                                     
 VOUCHER_DET.line_tot_gst_a as TOTAL_GST ,          
 VOUCHER.DOC_NO, VOUCHER.DOC_DATE, '','New','','','','','',0                
 ,voucher.USER_ID,'', (select currency_id from [172.20.200.187].AMERICA.dbo.sys_default )  ,voucher.control_flag ,voucher_det.LINE_GST_P, voucher_det.LINE_GST_A      
          
 FROM [172.20.200.187].AMERICA.dbo.voucher inner join [172.20.200.187].AMERICA.dbo.export_ref on ( export_ref.export_ref_n = voucher.voc_ref_n )          
 inner join [172.20.200.187].AMERICA.dbo.voucher_det on ( voucher.voucher_n = voucher_det.voucher_n )          
 inner join [172.20.200.187].AMERICA.dbo.export on export.export_ref_n  = EXPORT_REF.EXPORT_REF_N                            
 inner join finance.dbo.CUSTOMER_MASTER   on export.cust_id = CUSTOMER_MASTER.Child_ID                            
 inner join [172.20.200.187].AMERICA.dbo.vendor_mast on VOUCHER.VENDOR_ID = VENDOR_MAST.VENDOR_ID           
          
 WHERE            
 ( VOUCHER.VOC_TRA_TYPE = 'E' ) AND ( VOUCHER_DET.CHGCODE_ID <> 'GSTPAY' ) AND           
 ( VOUCHER.currency_id = (SELECT CURRENCY_ID FROM [172.20.200.187].AMERICA.dbo.SYS_DEFAULT) ) AND ( voucher.term_ind = 'D' )           
  and upper(CUSTOMER_MASTER.Environment) = 'AMERICA'   and voucher.approved_by is null --and voucher.control_flag ='Y'          
 and voucher.voucher_n in                               
 (                              
 select voucher_n from [172.20.200.187].AMERICA.dbo.voucher voucher                               
 where  exists(select voucher_n from [172.20.200.187].AMERICA.dbo.voucher_det voucher_det                               
 where voucher.voucher_N = voucher_det.voucher_N)                              
 and voucher.VOUCHER_D >'2016-12-31' and   isnull(voucher.export_ind,'N') <>'Y')            
          
 UNION ALL           
          
 SELECT    distinct           
 CUSTOMER_MASTER.Environment, CUSTOMER_MASTER.Parent_ID, CUSTOMER_MASTER.Child_ID,CUSTOMER_MASTER.Child_Short_Name, CUSTOMER_MASTER.Cust_Inv_Group_ID,                    
 EXPORT.EXPORT_N,  VOUCHER.VOUCHER_N,VOUCHER.INVOICE_N as Invoice,                    VENDOR_MAST.VENDOR_ID, VENDOR_MAST.VENDOR_NAME,VOUCHER_DET.VOC_LINE_N,VOUCHER_DET.CHGCODE_ID,                               
 RTRIM(LTRIM(isnull(voucher_det.chg_des1,'') +'|'+ isnull(voucher_det.chg_des2,''))) as chg_des,  'VOUCHER' Type,           
          
 0 as cost_ttl_amt_usd,           
 CASE WHEN voucher.doc_ind <> 'SC' THEN voucher_det.line_tot_a   ELSE (voucher_det.line_tot_a * voucher.voc_ex_rate * -1 ) END AS cost_ttl_amt_sgd,           
 0 as sell_ttl_amt_usd,           
 0 as sell_ttl_amt_sgd,           
 CASE WHEN voucher.doc_ind <> 'SC' THEN isnull((voucher.voc_ex_rate  *  voucher_det.line_tot_a * -1),0)  ELSE isnull((voucher.voc_ex_rate  *  voucher_det.line_tot_a ),0) END AS local_curr,           
          
 --0 as sell_sgd , -- required for DR Note          
 VOUCHER.CURRENCY_ID, --For Invoice we should take Line_currency          
 voucher_det.LINE_TOT_A, --Not Required          
 isnull( voucher_det.LINE_TOT_A,1) * isnull( voucher.VOC_EX_RATE,1) ,--Not Required                                     
 VOUCHER_DET.line_tot_gst_a as TOTAL_GST ,          
 VOUCHER.DOC_NO, VOUCHER.DOC_DATE, '','New','','','','','',0                
 ,voucher.USER_ID,'', (select currency_id from [172.20.200.187].AMERICA.dbo.sys_default )  ,voucher.control_flag   ,voucher_det.LINE_GST_P, voucher_det.LINE_GST_A     
                    
 FROM [172.20.200.187].AMERICA.dbo.voucher inner join [172.20.200.187].AMERICA.dbo.export_ref on ( export_ref.export_ref_n = voucher.voc_ref_n )          
 inner join [172.20.200.187].AMERICA.dbo.voucher_det on ( voucher.voucher_n = voucher_det.voucher_n )          
 inner join [172.20.200.187].AMERICA.dbo.export on export.export_ref_n  = EXPORT_REF.EXPORT_REF_N                            
 inner join finance.dbo.CUSTOMER_MASTER   on export.cust_id = CUSTOMER_MASTER.Child_ID                            
 inner join [172.20.200.187].AMERICA.dbo.vendor_mast on VOUCHER.VENDOR_ID = VENDOR_MAST.VENDOR_ID           
          
 WHERE            
 ( VOUCHER_det.job_type = 'E' ) AND ( VOUCHER_DET.CHGCODE_ID <> 'GSTPAY' ) AND           
 ( VOUCHER.currency_id = (SELECT CURRENCY_ID FROM [172.20.200.187].AMERICA.dbo.SYS_DEFAULT) ) AND ( voucher.term_ind = 'M' )           
  and upper(CUSTOMER_MASTER.Environment) = 'AMERICA'   and voucher.approved_by is null --and voucher.control_flag ='Y'          
 and voucher.voucher_n in                               
 (                              
 select voucher_n from [172.20.200.187].AMERICA.dbo.voucher voucher                               
 where  exists(select voucher_n from [172.20.200.187].AMERICA.dbo.voucher_det voucher_det                               
 where voucher.voucher_N = voucher_det.voucher_N)                              
 and voucher.VOUCHER_D >'2016-12-31' and   isnull(voucher.export_ind,'N') <>'Y')            
 End          
   
 Begin          
   update [Payable_PL] set [PLAmountUSD] =([SellUSD] - [CostUSD]),                               
   [PLAmountLocalCurrency]=([SellLocalCurrency] - [CostLocalCurrency]),                              
   [PLPercentageUSD] = (([SellUSD] - [CostUSD])/ case when [SellUSD]=0 then 1 end )*100,                              
   [PLPercentageLocalCurrency]= (([SellLocalCurrency] - [CostLocalCurrency])/ case when [SellLocalCurrency] =0 then 1 End )*100                              
   where upper([Payable_PL].Environment) = 'AMERICA'           
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
-- -------------------T/S FREIGHT COLLECT---------------------------------------------------------------------          
-- union all           
-- SELECT              
-- 'T/S FREIGHT COLLECT' as chg_des,           
          
-- export_det.fr_collect_tot as cost_ttl_amt_usd,           
-- 0 as cost_ttl_amt_sgd,           
-- 0 as sell_ttl_amt_usd,           
-- 0 as sell_ttl_amt_sgd,           
-- (export_det.fr_collect_tot   *  ISNULL(EXPORT_REF.REF_EX_RATE_CR,0) * -1) as local_curr,           
-- 0 as sell_sgd           
-- FROM [172.20.200.187].AMERICA.dbo.export_ref,           
-- [172.20.200.187].AMERICA.dbo.export,             
-- [172.20.200.187].AMERICA.dbo.export_det           
-- WHERE                EXPORT.EXPORT_N = EXPORT_DET.EXPORT_N AND           
-- EXPORT.EXPORT_REF_N = EXPORT_REF.EXPORT_REF_N            
-- AND                      EXPORT.T_SHIP_IND = 'Y'           
-- AND      EXPORT.EXPORT_REF_N = :LS_RET           
-- AND      EXPORT_DET.FR_COLLECT_TOT IS NOT NULL            
-- AND      EXPORT_DET.FR_COLLECT_TOT <> 0              
          
-- -------------------INVOICE---------------------------------------------------------------------          
-- UNION ALL           
-- SELECT              
-- RTRIM(LTRIM(INVOICE_DET.CHG_DES1)) as chg_des,           
          
-- 0 AS cost_ttl_amt_usd,           
-- 0 as cost_ttl_amt_sgd,           
-- (INVOICE_DET.LINE_TOT_A * invoice.inv_ex_rate_usd) AS sell_ttl_amt_usd,           
-- 0 as sell_ttl_amt_sgd,           
-- invoice_det.line_tot_a *  invoice.inv_ex_rate as local_curr,           
-- invoice_det.line_tot_a *  invoice.inv_ex_rate as sell_sgd           
-- FROM [172.20.200.187].AMERICA.dbo.export_ref,           
-- [172.20.200.187].AMERICA.dbo.export,           
-- [172.20.200.187].AMERICA.dbo.invoice,             
-- [172.20.200.187].AMERICA.dbo.invoice_det           
          
-- WHERE  EXPORT.EXPORT_REF_N = EXPORT_REF.EXPORT_REF_N and           
-- ( EXPORT.EXPORT_N = INVOICE.INV_JOB_N ) and            
-- ( INVOICE.INVOICE_N = INVOICE_DET.INVOICE_N ) and           
-- ( ( export.export_ref_n = :LS_RET ) AND            
-- ( INVOICE.currency_id <> (SELECT CURRENCY_ID FROM [172.20.200.187].AMERICA.dbo.SYS_DEFAULT) ) AND           
-- ( INVOICE.INV_TRA_TYPE = 'E' ) )             
          
-- UNION ALL           
-- SELECT              
-- RTRIM(LTRIM(INVOICE_DET.CHG_DES1)) as chg_des,           
     
-- 0 AS cost_ttl_amt_usd,           
-- 0 as cost_ttl_amt_sgd,           
-- 0 AS sell_ttl_amt_usd,           
-- INVOICE_DET.LINE_TOT_A AS sell_ttl_amt_sgd,           
-- invoice_det.line_tot_a *  invoice.inv_ex_rate as local_curr,           
-- 0 as sell_sgd           
-- FROM [172.20.200.187].AMERICA.dbo.export_ref,           
-- [172.20.200.187].AMERICA.dbo.export,           
-- [172.20.200.187].AMERICA.dbo.invoice,             
-- [172.20.200.187].AMERICA.dbo.invoice_det           
          
-- WHERE  EXPORT.EXPORT_REF_N = EXPORT_REF.EXPORT_REF_N and           
-- ( EXPORT.EXPORT_N = INVOICE.INV_JOB_N ) and            
-- ( INVOICE.INVOICE_N = INVOICE_DET.INVOICE_N ) and           
-- ( ( export.export_ref_n = :LS_RET ) AND            
-- ( INVOICE.currency_id = (SELECT CURRENCY_ID FROM [172.20.200.187].AMERICA.dbo.SYS_DEFAULT) ) AND           
-- ( INVOICE.INV_TRA_TYPE = 'E' ) )            
          
-- -------------------DR NOTE---------------------------------------------------------------------          
-- UNION ALL           
-- SELECT              
-- RTRIM(LTRIM(DR_NOTE_DET.CHG_DES1)) as chg_des,           
          
-- 0 AS cost_ttl_amt_usd,           
-- 0 as cost_ttl_amt_sgd,           
-- (DR_NOTE_DET.LINE_TOT_A * dr_note.inv_ex_rate_usd) AS sell_ttl_amt_usd,           
-- 0 as sell_ttl_amt_sgd,           
-- dr_note_det.line_tot_a   *  dr_note.inv_ex_rate as local_curr,           
-- dr_note_det.line_tot_a   *  dr_note.inv_ex_rate as sell_sgd           
-- FROM [172.20.200.187].AMERICA.dbo.export_ref,           
-- [172.20.200.187].AMERICA.dbo.DR_NOTE,             
-- [172.20.200.187].AMERICA.dbo.DR_NOTE_DET           
          
-- WHERE ( export_ref.export_ref_n = DR_NOTE.INV_REF_N ) and           
-- ( DR_NOTE.FY = DR_NOTE_DET.FY ) and            
-- ( DR_NOTE.INVOICE_N = DR_NOTE_DET.INVOICE_N ) and            
-- ( DR_NOTE.INV_REF_N = EXPORT_REF.EXPORT_REF_N ) and            
-- ( ( DR_NOTE.INV_REF_N = :LS_RET ) AND            
-- ( DR_NOTE.currency_id <> (SELECT CURRENCY_ID FROM [172.20.200.187].AMERICA.dbo.SYS_DEFAULT) ) AND           
-- ( DR_NOTE.INV_TRA_TYPE = 'E' ) )            
          
-- UNION ALL           
-- SELECT              
-- RTRIM(LTRIM(DR_NOTE_DET.CHG_DES1)) as chg_des,           
          
-- 0 AS cost_ttl_amt_usd,           
-- 0 as cost_ttl_amt_sgd,           
-- 0 AS sell_ttl_amt_usd,           
-- DR_NOTE_DET.LINE_TOT_A AS sell_ttl_amt_sgd,           
-- dr_note_det.line_tot_a   *  dr_note.inv_ex_rate as local_curr,           
-- 0  as sell_sgd           
-- FROM [172.20.200.187].AMERICA.dbo.export_ref,           
-- [172.20.200.187].AMERICA.dbo.DR_NOTE,             
-- [172.20.200.187].AMERICA.dbo.DR_NOTE_DET           
          
-- WHERE ( export_ref.export_ref_n = DR_NOTE.INV_REF_N ) and           
-- ( DR_NOTE.FY = DR_NOTE_DET.FY ) and            
-- ( DR_NOTE.INVOICE_N = DR_NOTE_DET.INVOICE_N ) and            
-- ( DR_NOTE.INV_REF_N = EXPORT_REF.EXPORT_REF_N ) and            
-- ( ( DR_NOTE.INV_REF_N = :LS_RET ) AND            
-- ( DR_NOTE.currency_id = (SELECT CURRENCY_ID FROM [172.20.200.187].AMERICA.dbo.SYS_DEFAULT) ) AND           
-- ( DR_NOTE.INV_TRA_TYPE = 'E' ) )           
          
-- -------------------CR NOTE---------------------------------------------------------------------          
-- UNION ALL           
-- SELECT              
-- RTRIM(LTRIM(CR_NOTE_DET.CHG_DES1)) as chg_des,           
          
-- 0 AS cost_ttl_amt_usd,           
-- 0 as cost_ttl_amt_sgd,           
-- (CR_NOTE_DET.LINE_TOT_A * cr_note.inv_ex_rate_usd * -1) AS sell_ttl_amt_usd,           
-- 0 as sell_ttl_amt_sgd,           
-- (cr_note_det.line_tot_a  * cr_note.inv_ex_rate * -1) as local_curr,           
-- 0  as sell_sgd           
-- FROM [172.20.200.187].AMERICA.dbo.export_ref,           
-- [172.20.200.187].AMERICA.dbo.CR_NOTE,             
-- [172.20.200.187].AMERICA.dbo.CR_NOTE_DET           
          
-- WHERE ( export_ref.export_ref_n = CR_NOTE.INV_REF_N ) and           
-- ( CR_NOTE.FY = CR_NOTE_DET.FY ) and            
-- ( CR_NOTE.INVOICE_N = CR_NOTE_DET.INVOICE_N ) and            
-- ( CR_NOTE.INV_REF_N = EXPORT_REF.EXPORT_REF_N ) and            
-- ( ( CR_NOTE.INV_REF_N = :LS_RET ) AND            
-- ( CR_NOTE.currency_id <> (SELECT CURRENCY_ID FROM [172.20.200.187].AMERICA.dbo.SYS_DEFAULT) ) AND           
-- ( CR_NOTE.INV_TRA_TYPE = 'E' ) )            
          
-- UNION ALL           
-- SELECT              
-- RTRIM(LTRIM(CR_NOTE_DET.CHG_DES1)) as chg_des,           
          
-- 0 AS cost_ttl_amt_usd,           
-- 0 AS cost_ttl_amt_sgd,           
-- 0 AS sell_ttl_amt_usd,           
-- CR_NOTE_DET.LINE_TOT_A * -1 AS sell_ttl_amt_sgd,           
-- (cr_note_det.line_tot_a  * cr_note.inv_ex_rate * -1) as local_curr,           
-- 0  as sell_sgd           
-- FROM [172.20.200.187].AMERICA.dbo.export_ref,           
-- [172.20.200.187].AMERICA.dbo.CR_NOTE,             
-- [172.20.200.187].AMERICA.dbo.CR_NOTE_DET           
          
-- WHERE ( export_ref.export_ref_n = CR_NOTE.INV_REF_N ) and           
-- ( CR_NOTE.FY = CR_NOTE_DET.FY ) and            
-- ( CR_NOTE.INVOICE_N = CR_NOTE_DET.INVOICE_N ) and            
-- ( CR_NOTE.INV_REF_N = EXPORT_REF.EXPORT_REF_N ) and            
-- ( ( CR_NOTE.INV_REF_N = :LS_RET ) AND            
-- ( CR_NOTE.currency_id = (SELECT CURRENCY_ID FROM [172.20.200.187].AMERICA.dbo.SYS_DEFAULT) ) AND           
-- ( CR_NOTE.INV_TRA_TYPE = 'E' ) )                
          
-- -------------------IMPORT T/S CHARGES---------------------------------------------------------------------          
-- union all           
-- SELECT              
-- 'IMPORT T/S CHARGES' as chg_des,           
          
-- 0 as cost_ttl_amt_usd,           
-- 0 as cost_ttl_amt_sgd,           
-- EXPORT.I_RATE as sell_ttl_amt_usd,           
-- 0 as sell_ttl_amt_sgd,           
-- (EXPORT.I_RATE   *  ISNULL(EXPORT_REF.REF_EX_RATE_CR,0) * -1) as local_curr,           
-- 0  as sell_sgd           
-- FROM [172.20.200.187].AMERICA.dbo.export_ref,           
-- [172.20.200.187].AMERICA.dbo.export            
          
-- WHERE ( EXPORT.EXPORT_REF_N = EXPORT_REF.EXPORT_REF_N ) and            
-- ( ( export.export_ref_n = :ls_ret ) AND            
-- ( export.i_rate is not null  ) AND            
-- ( export.i_rate <> 0 ) )              
          
-------------------GST---------------------------------------------------------------------          
/****** GST **************/           
          
/* SELECT              
(voucher.voc_ex_rate  *  voucher_det.line_tot_gst_a) as local_gst           
FROM [172.20.200.187].AMERICA.dbo.export_ref,           
[172.20.200.187].AMERICA.dbo.voucher,             
[172.20.200.187].AMERICA.dbo.voucher_det          
WHERE ( export_ref.export_ref_n = voucher.voc_ref_n ) and           
( voucher.voucher_n = voucher_det.voucher_n ) and            
( VOUCHER.VOC_REF_N = :LS_RET ) AND            
( VOUCHER.VOC_TRA_TYPE = 'E' ) AND            
( VOUCHER.TERM_IND = 'C' ) AND           
VOUCHER_DET.CHGCODE_ID = 'GSTPAY'           
          
union           
SELECT              
(voucher.voc_ex_rate  *  voucher_det.line_tot_gst_a) AS local_gst           
FROM [172.20.200.187].AMERICA.dbo.export_ref,           
[172.20.200.187].AMERICA.dbo.voucher,             
[172.20.200.187].AMERICA.dbo.voucher_det          
WHERE ( export_ref.export_ref_n = voucher.voc_ref_n ) and           
( voucher.voucher_n = voucher_det.voucher_n ) and            
( ( VOUCHER.VOC_REF_N = :LS_RET ) AND            
( VOUCHER.VOC_TRA_TYPE = 'E' ) AND           
( VOUCHER_DET.CHGCODE_ID = 'GSTPAY' ) AND           
( voucher.term_ind = 'D' ) )              
UNION           
SELECT            
(voucher.voc_ex_rate  *  voucher_det.line_tot_gst_a ) AS local_gst            
          
FROM [172.20.200.187].AMERICA.dbo.export_ref,           
[172.20.200.187].AMERICA.dbo.voucher,             
[172.20.200.187].AMERICA.dbo.voucher_det          
WHERE ( export_ref.export_ref_n = voucher.voc_ref_n ) and           
( voucher.voucher_n = voucher_det.voucher_n ) and            
( ( VOUCHER_det.ref_no = :LS_RET ) AND            
( VOUCHER_det.job_type = 'E' ) AND           
( VOUCHER_DET.CHGCODE_ID = 'GSTPAY' ) AND            
( voucher.term_ind = 'M' ) )            
          
          
UNION           
SELECT              
(invoice_det.line_gst_a *  invoice.inv_ex_rate) as local_gst           
FROM [172.20.200.187].AMERICA.dbo.export_ref,           
[172.20.200.187].AMERICA.dbo.export,           
[172.20.200.187].AMERICA.dbo.invoice,             
[172.20.200.187].AMERICA.dbo.invoice_det           
          
WHERE  EXPORT.EXPORT_REF_N = EXPORT_REF.EXPORT_REF_N and           
( EXPORT.EXPORT_N = INVOICE.INV_JOB_N ) and            
( INVOICE.INVOICE_N = INVOICE_DET.INVOICE_N ) and           
( ( export.export_ref_n = :LS_RET ) AND            
( INVOICE.INV_TRA_TYPE = 'E' ) )             
          
          
UNION           
SELECT              
(dr_note_det.line_gst_a   *  dr_note.inv_ex_rate) as local_gst           
FROM [172.20.200.187].AMERICA.dbo.export_ref,           
[172.20.200.187].AMERICA.dbo.DR_NOTE,             
[172.20.200.187].AMERICA.dbo.DR_NOTE_DET           
          
WHERE ( export_ref.export_ref_n = DR_NOTE.INV_REF_N ) and           
( DR_NOTE.FY = DR_NOTE_DET.FY ) and            
( DR_NOTE.INVOICE_N = DR_NOTE_DET.INVOICE_N ) and            
( DR_NOTE.INV_REF_N = EXPORT_REF.EXPORT_REF_N ) and            
( ( DR_NOTE.INV_REF_N = :LS_RET ) AND            
( DR_NOTE.INV_TRA_TYPE = 'E' ) )            
          
          
          
UNION           
SELECT              
(cr_note_det.line_gst_a  * cr_note.inv_ex_rate) as local_gst           
FROM [172.20.200.187].AMERICA.dbo.export_ref,           
[172.20.200.187].AMERICA.dbo.CR_NOTE,             
[172.20.200.187].AMERICA.dbo.CR_NOTE_DET      
          
WHERE ( export_ref.export_ref_n = CR_NOTE.INV_REF_N ) and           
( CR_NOTE.FY = CR_NOTE_DET.FY ) and            
( CR_NOTE.INVOICE_N = CR_NOTE_DET.INVOICE_N ) and            
( CR_NOTE.INV_REF_N = EXPORT_REF.EXPORT_REF_N ) and            
( ( CR_NOTE.INV_REF_N = :LS_RET ) AND            
( CR_NOTE.INV_TRA_TYPE = 'E' ) )  */       


GO
