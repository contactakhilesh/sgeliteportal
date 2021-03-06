USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      
              
CREATE Proc [SCSHI_3C_PayablePL_Others]                            
                            
As                            
BEGIN             
BEGIN TRY         
   insert into finance.dbo.[Payable_PL](                            
   Environment,Parent_ID,Child_ID,FromPartyName,Customer_Inv_Group_ID,                
   Job_Number,Voucher_Number,[Invoice_Number],                
   ToPartyID,[ToPartyName],Invoice_Line_Number,                
   CHGCODE_ID,[Details],[Type],                
   [CostUSD],[CostLocalCurrency],[SellUSD],[SellLocalCurrency],LocalCurrency,                
   [Currency],                
   [Amount],[LocalAmount],                
   [TotalGST],[SupplierInv],DOC_DATE,Attachment_URL,Payable_Status,                            
   Submit_User,                            
   Review_User,                            
   Approve_User,                            
   Reject_User,                            
   Reject_Remarks,                            
   IsVocEGSUpdated,                            
   [prepared_by],                            
   NC_Type,SysCurrency, control_flag , GST_Percent,GST_Amount)                
  SELECT                   
   DISTINCT CUSTOMER_MASTER.Environment, CUSTOMER_MASTER.Parent_ID, INVOICE.CUST_ID,CUSTOMER_MASTER.Child_Short_Name,CUSTOMER_MASTER.Cust_Inv_Group_ID,                
   VOUCHER.VOC_JOB_N, VOUCHER.VOUCHER_N,VOUCHER.INVOICE_N as Invoice,                  
   VENDOR_MAST.VENDOR_ID, VENDOR_MAST.VENDOR_NAME,VOUCHER_DET.VOC_LINE_N,--voucher.voucher_n as ref_no,                 
   VOUCHER_DET.CHGCODE_ID,RTRIM(LTRIM(voucher_det.chg_des1+'|'+voucher_det.chg_des2)) as chg_des,  'VOUCHER' Type,                
                 
   --RTRIM(LTRIM(voucher_det.chg_des1)) as chg_des,                 
   (isnull(voucher_det.line_tot_a,1) * isnull(voucher.voc_ex_rate_usd,1) ) AS cost_ttl_amt_usd,                 
   0 as cost_ttl_amt_sgd,                 
   0 as sell_ttl_amt_usd,                 
   0 as sell_ttl_amt_sgd,                 
   (isnull(voucher.voc_ex_rate,1)  * isnull( voucher_det.line_tot_a,1) * -1) as local_curr,                
                
   VOUCHER.CURRENCY_ID,                
   voucher_det.LINE_TOT_A,isnull(voucher_det.LINE_TOT_A,1) * isnull(voucher.VOC_EX_RATE,1) ,                                         
   VOUCHER_DET.line_tot_gst_a as TOTAL_GST , VOUCHER.DOC_NO, VOUCHER.DOC_DATE, '','New','','','','','',0,                
   voucher.USER_ID,'', (select currency_id from [172.20.200.187].SCSHI.dbo.sys_default ),voucher.CONTROL_FLAG   ,voucher_det.LINE_GST_P, voucher_det.LINE_GST_A               
  FROM [172.20.200.187].SCSHI.dbo.invoice inner join [172.20.200.187].SCSHI.dbo.voucher on invoice.invoice_n = voucher.invoice_n                 
  inner join [172.20.200.187].SCSHI.dbo.voucher_det on voucher.voucher_n = voucher_det.voucher_n                 
  inner join finance.dbo.CUSTOMER_MASTER   on INVOICE.cust_id = CUSTOMER_MASTER.Child_ID                          
  inner join [172.20.200.187].SCSHI.dbo.vendor_mast on VOUCHER.VENDOR_ID = VENDOR_MAST.VENDOR_ID                   
  --WHERE  --voucher.invoice_n = :LS_RET                 
  --voucher.TERM_IND = 'C' --AND VOUCHER.currency_id <> :rs_curr                 
  --AND voucher_DET.CHGCODE_ID <> 'GSTPAY'                 
                
  where upper(CUSTOMER_MASTER.Environment) = 'SCSHI'   and voucher.approved_by is null-- and voucher.control_flag ='Y'                           
  and  voucher.VOC_TRA_TYPE = 'M' and VOUCHER.TERM_IND = 'C' and VOUCHER_DET.CHGCODE_ID <> 'GSTPAY'             
  and VOUCHER.currency_id <> (SELECT CURRENCY_ID FROM [172.20.200.187].SCSHI.dbo.SYS_DEFAULT)            
  and  voucher.voucher_n in                             
  (                            
  select voucher_n from [172.20.200.187].SCSHI.dbo.voucher voucher                             
  where  exists(select voucher_n from [172.20.200.187].SCSHI.dbo.voucher_det voucher_det                             
  where voucher.voucher_N = voucher_det.voucher_N)                            
  and voucher.VOUCHER_D >'2016-12-31' and   isnull(voucher.export_ind,'N') <>'Y')                 
                  
  union all                 
                  
  SELECT                   
   DISTINCT CUSTOMER_MASTER.Environment, CUSTOMER_MASTER.Parent_ID, INVOICE.CUST_ID,CUSTOMER_MASTER.Child_Short_Name,CUSTOMER_MASTER.Cust_Inv_Group_ID,                
   VOUCHER.VOC_JOB_N, VOUCHER.VOUCHER_N,VOUCHER.INVOICE_N as Invoice,                  
   VENDOR_MAST.VENDOR_ID, VENDOR_MAST.VENDOR_NAME,VOUCHER_DET.VOC_LINE_N,                 
   VOUCHER_DET.CHGCODE_ID,RTRIM(LTRIM(voucher_det.chg_des1+'|'+voucher_det.chg_des2)) as chg_des,  'VOUCHER' Type,                  
  /*  invoice.invoice_n as ref_no,                 
     RTRIM(LTRIM(voucher_det.chg_des1)) as chg_des,  */                
     0 as cost_ttl_amt_usd,                 
     voucher_det.line_tot_a AS cost_ttl_amt_sgd,                 
     0 as sell_ttl_amt_usd,                 
     0 as sell_ttl_amt_sgd,                 
     (isnull(voucher.voc_ex_rate,1)  *  isnull( voucher_det.line_tot_a,1) * -1) as local_curr,                 
                   
   VOUCHER.CURRENCY_ID,                
   voucher_det.LINE_TOT_A,isnull(voucher_det.LINE_TOT_A,1) * isnull(voucher.VOC_EX_RATE,1) ,                                         
   VOUCHER_DET.line_tot_gst_a as TOTAL_GST , VOUCHER.DOC_NO, VOUCHER.DOC_DATE, '','New','','','','','',0,                
   voucher.USER_ID,'', (select currency_id from [172.20.200.187].SCSHI.dbo.sys_default ),voucher.CONTROL_FLAG     ,voucher_det.LINE_GST_P, voucher_det.LINE_GST_A                
                   
  FROM [172.20.200.187].SCSHI.dbo.invoice inner join [172.20.200.187].SCSHI.dbo.voucher on invoice.invoice_n = voucher.invoice_n                 
  inner join [172.20.200.187].SCSHI.dbo.voucher_det on voucher.voucher_n = voucher_det.voucher_n                 
  inner join finance.dbo.CUSTOMER_MASTER   on INVOICE.cust_id = CUSTOMER_MASTER.Child_ID                          
  inner join [172.20.200.187].SCSHI.dbo.vendor_mast on VOUCHER.VENDOR_ID = VENDOR_MAST.VENDOR_ID                  
  -- WHERE VOUCHER.VOC_TRA_TYPE = 'M' --AND VOUCHER.INVOICE_N = :LS_RET                 
  -- AND VOUCHER.TERM_IND = 'C'  --AND VOUCHER.currency_id = :rs_curr                 
  -- AND VOUCHER_DET.CHGCODE_ID <> 'GSTPAY'                    
                
                
  where upper(CUSTOMER_MASTER.Environment) = 'SCSHI'   and voucher.approved_by is null-- and voucher.control_flag ='Y'                         
  and  VOUCHER.VOC_TRA_TYPE = 'M'  and VOUCHER.TERM_IND = 'C'  and VOUCHER_DET.CHGCODE_ID <> 'GSTPAY'               
  and VOUCHER.currency_id = (SELECT CURRENCY_ID FROM [172.20.200.187].SCSHI.dbo.SYS_DEFAULT)            
  and  voucher.voucher_n in                             
  (                            
  select voucher_n from [172.20.200.187].SCSHI.dbo.voucher voucher                             
  where  exists(select voucher_n from [172.20.200.187].SCSHI.dbo.voucher_det voucher_det                             
  where voucher.voucher_N = voucher_det.voucher_N)                            
  and voucher.VOUCHER_D >'2016-12-31' and   isnull(voucher.export_ind,'N') <>'Y')                 
                
                  
  union all                 
                  
  SELECT                   
   DISTINCT CUSTOMER_MASTER.Environment, CUSTOMER_MASTER.Parent_ID, INVOICE.CUST_ID,CUSTOMER_MASTER.Child_Short_Name,CUSTOMER_MASTER.Cust_Inv_Group_ID,                
   VOUCHER.VOC_JOB_N, VOUCHER.VOUCHER_N,VOUCHER.INVOICE_N as Invoice,                  
   VENDOR_MAST.VENDOR_ID, VENDOR_MAST.VENDOR_NAME,VOUCHER_DET.VOC_LINE_N,--voucher.voucher_n as ref_no,                 
   VOUCHER_DET.CHGCODE_ID,RTRIM(LTRIM(voucher_det.chg_des1+'|'+voucher_det.chg_des2)) as chg_des,  'VOUCHER' Type,                
   /*  invoice.invoice_n as ref_no,                 
   RTRIM(LTRIM(voucher_det.chg_des1)) as chg_des, */                 
   CASE WHEN voucher.doc_ind <> 'SC' THEN (isnull(voucher.voc_ex_rate_usd,1) * isnull(voucher_det.line_tot_a,1) ) ELSE ( isnull(voucher.voc_ex_rate_usd,1) * isnull(voucher_det.line_tot_a,1) * -1 ) END AS cost_ttl_amt_usd,                 
   0 as cost_ttl_amt_sgd,                 
   0 as sell_ttl_amt_usd,                 
0 as sell_ttl_amt_sgd,                 
   CASE WHEN voucher.doc_ind <> 'SC' THEN (isnull(voucher.voc_ex_rate,1)  *  isnull(voucher_det.line_tot_a,1) * -1 ) ELSE (isnull(voucher.voc_ex_rate,1)  *  isnull(voucher_det.line_tot_a,1)) END AS local_curr,                    
   VOUCHER.CURRENCY_ID,                
   voucher_det.LINE_TOT_A,isnull(voucher_det.LINE_TOT_A,1) * isnull(voucher.VOC_EX_RATE,1) ,                                         
   VOUCHER_DET.line_tot_gst_a as TOTAL_GST , VOUCHER.DOC_NO, VOUCHER.DOC_DATE, '','New','','','','','',0,                
   voucher.USER_ID,'', (select currency_id from [172.20.200.187].SCSHI.dbo.sys_default ),voucher.CONTROL_FLAG  ,voucher_det.LINE_GST_P, voucher_det.LINE_GST_A                 
                   
  FROM [172.20.200.187].SCSHI.dbo.invoice inner join [172.20.200.187].SCSHI.dbo.voucher on invoice.invoice_n = voucher.invoice_n                 
  inner join [172.20.200.187].SCSHI.dbo.voucher_det on voucher.voucher_n = voucher_det.voucher_n                 
  inner join finance.dbo.CUSTOMER_MASTER   on INVOICE.cust_id = CUSTOMER_MASTER.Child_ID                  
  inner join [172.20.200.187].SCSHI.dbo.vendor_mast on VOUCHER.VENDOR_ID = VENDOR_MAST.VENDOR_ID                  
                
  -- WHERE VOUCHER.VOC_TRA_TYPE = 'M' --AND  VOUCHER.invoice_n = :LS_RET                 
  -- AND  VOUCHER_DET.CHGCODE_ID <> 'GSTPAY' -- AND  VOUCHER.currency_id <> :rs_curr                  
  -- AND  voucher.term_ind = 'D'                 
                
  where upper(CUSTOMER_MASTER.Environment) = 'SCSHI'   and voucher.approved_by is null-- and voucher.control_flag ='Y'                         
  and  VOUCHER.VOC_TRA_TYPE = 'M'  and voucher.term_ind = 'D'   and VOUCHER_DET.CHGCODE_ID <> 'GSTPAY'               
  and VOUCHER.currency_id <> (SELECT CURRENCY_ID FROM [172.20.200.187].SCSHI.dbo.SYS_DEFAULT)            
  and  voucher.voucher_n in                             
  (                            
  select voucher_n from [172.20.200.187].SCSHI.dbo.voucher voucher                             
  where  exists(select voucher_n from [172.20.200.187].SCSHI.dbo.voucher_det voucher_det                             
  where voucher.voucher_N = voucher_det.voucher_N)                            
  and voucher.VOUCHER_D >'2016-12-31' and   isnull(voucher.export_ind,'N') <>'Y')                 
                
                  
  UNION ALL                 
                  
  SELECT                  
   DISTINCT CUSTOMER_MASTER.Environment, CUSTOMER_MASTER.Parent_ID, INVOICE.CUST_ID,CUSTOMER_MASTER.Child_Short_Name,CUSTOMER_MASTER.Cust_Inv_Group_ID,                
   VOUCHER.VOC_JOB_N, VOUCHER.VOUCHER_N,VOUCHER.INVOICE_N as Invoice,                  
   VENDOR_MAST.VENDOR_ID, VENDOR_MAST.VENDOR_NAME,VOUCHER_DET.VOC_LINE_N,--voucher.voucher_n as ref_no,                 
   VOUCHER_DET.CHGCODE_ID,RTRIM(LTRIM(voucher_det.chg_des1+'|'+voucher_det.chg_des2)) as chg_des,  'VOUCHER' Type,                
                 
  /*  invoice.invoice_n as ref_no,                 
     RTRIM(LTRIM(VOUCHER_DET.chg_des1)) as chg_des,  */                
     0 as cost_ttl_amt_usd,                 
     CASE WHEN VOUCHER.doc_ind <> 'SC' THEN VOUCHER_DET.line_tot_a   ELSE (isnull(VOUCHER_DET.line_tot_a,1) * isnull(VOUCHER.voc_ex_rate,1) * -1 ) END AS cost_ttl_amt_sgd,                 
     0 as sell_ttl_amt_usd,                 
     0 as sell_ttl_amt_sgd,                 
     CASE WHEN VOUCHER.doc_ind <> 'SC' THEN (isnull(VOUCHER.voc_ex_rate,1)  *  isnull(VOUCHER_DET.line_tot_a,1) * -1)  ELSE (isnull(VOUCHER.voc_ex_rate,1)  * isnull( VOUCHER_DET.line_tot_a,1) ) END AS local_curr,                 
                  
   VOUCHER.CURRENCY_ID,                
   voucher_det.LINE_TOT_A,isnull(voucher_det.LINE_TOT_A,1) * isnull(voucher.VOC_EX_RATE,1) ,                                         
   VOUCHER_DET.line_tot_gst_a as TOTAL_GST , VOUCHER.DOC_NO, VOUCHER.DOC_DATE, '','New','','','','','',0,                
   voucher.USER_ID,'', (select currency_id from [172.20.200.187].SCSHI.dbo.sys_default ) ,voucher.CONTROL_FLAG   ,voucher_det.LINE_GST_P, voucher_det.LINE_GST_A               
                      
  FROM [172.20.200.187].SCSHI.dbo.invoice inner join [172.20.200.187].SCSHI.dbo.voucher on invoice.invoice_n = voucher.invoice_n                 
  inner join [172.20.200.187].SCSHI.dbo.voucher_det on voucher.voucher_n = voucher_det.voucher_n                 
  inner join finance.dbo.CUSTOMER_MASTER   on INVOICE.cust_id = CUSTOMER_MASTER.Child_ID             
  inner join [172.20.200.187].SCSHI.dbo.vendor_mast on VOUCHER.VENDOR_ID = VENDOR_MAST.VENDOR_ID                  
                
  -- WHERE VOUCHER.VOC_TRA_TYPE = 'M' -- AND       VOUCHER.INVOICE_N = :LS_RET                 
  -- AND       VOUCHER_DET.CHGCODE_ID <> 'GSTPAY'  -- AND       VOUCHER.currency_id = :rs_curr                 
  -- AND       VOUCHER.term_ind = 'D'                 
                  
  where upper(CUSTOMER_MASTER.Environment) = 'SCSHI'   and voucher.approved_by is null-- and voucher.control_flag ='Y'                          
  and  VOUCHER.VOC_TRA_TYPE = 'M'  and voucher.term_ind = 'D'   and VOUCHER_DET.CHGCODE_ID <> 'GSTPAY'               
  and VOUCHER.currency_id = (SELECT CURRENCY_ID FROM [172.20.200.187].SCSHI.dbo.SYS_DEFAULT)            
  and  voucher.voucher_n in                         
  (                            
  select voucher_n from [172.20.200.187].SCSHI.dbo.voucher voucher                             
  where  exists(select voucher_n from [172.20.200.187].SCSHI.dbo.voucher_det voucher_det                             
  where voucher.voucher_N = voucher_det.voucher_N)                            
  and voucher.VOUCHER_D >'2016-12-31' and   isnull(voucher.export_ind,'N') <>'Y')                 
                  
  UNION ALL                 
                  
  SELECT                 
   DISTINCT CUSTOMER_MASTER.Environment, CUSTOMER_MASTER.Parent_ID, INVOICE.CUST_ID,CUSTOMER_MASTER.Child_Short_Name,CUSTOMER_MASTER.Cust_Inv_Group_ID,                
   VOUCHER.VOC_JOB_N, VOUCHER.VOUCHER_N,VOUCHER.INVOICE_N as Invoice,                  
   VENDOR_MAST.VENDOR_ID, VENDOR_MAST.VENDOR_NAME,VOUCHER_DET.VOC_LINE_N,--voucher.voucher_n as ref_no,                 
   VOUCHER_DET.CHGCODE_ID,RTRIM(LTRIM(voucher_det.chg_des1+'|'+voucher_det.chg_des2)) as chg_des,  'VOUCHER' Type,                
                 
  /*  invoice.invoice_n as ref_no,                 
     RTRIM(LTRIM(voucher_det.chg_des1)) as chg_des,  */                
     CASE WHEN voucher.doc_ind <> 'SC' THEN ( isnull(voucher.voc_ex_rate_usd,1) * isnull(voucher_det.line_tot_a,1) )  ELSE ( isnull(voucher.voc_ex_rate_usd,1) * isnull(voucher_det.line_tot_a,1) * -1 ) END AS cost_ttl_amt_usd,                 
     0 as cost_ttl_amt_sgd,                 
     0 as sell_ttl_amt_usd,                 
     0 as sell_ttl_amt_sgd ,                 
     CASE WHEN voucher.doc_ind <> 'SC' THEN (isnull(voucher.voc_ex_rate,1)  *  isnull(voucher_det.line_tot_a,1) * -1)  ELSE (isnull(voucher.voc_ex_rate,1)  *  isnull(voucher_det.line_tot_a,1)) END AS                 
    local_curr,                 
   VOUCHER.CURRENCY_ID,                
   voucher_det.LINE_TOT_A,isnull(voucher_det.LINE_TOT_A,1) * isnull(voucher.VOC_EX_RATE,1) ,                                         
   VOUCHER_DET.line_tot_gst_a as TOTAL_GST , VOUCHER.DOC_NO, VOUCHER.DOC_DATE, '','New','','','','','',0,                
   voucher.USER_ID,'', (select currency_id from [172.20.200.187].SCSHI.dbo.sys_default ),voucher.CONTROL_FLAG   ,voucher_det.LINE_GST_P, voucher_det.LINE_GST_A               
                          
  FROM [172.20.200.187].SCSHI.dbo.invoice inner join [172.20.200.187].SCSHI.dbo.voucher on invoice.invoice_n = voucher.invoice_n                 
  inner join [172.20.200.187].SCSHI.dbo.voucher_det on voucher.voucher_n = voucher_det.voucher_n                 
  inner join finance.dbo.CUSTOMER_MASTER   on INVOICE.cust_id = CUSTOMER_MASTER.Child_ID                          
  inner join [172.20.200.187].SCSHI.dbo.vendor_mast on VOUCHER.VENDOR_ID = VENDOR_MAST.VENDOR_ID                  
                
  -- WHERE VOUCHER.VOC_TRA_TYPE = 'M' -- AND  VOUCHER.invoice_n = :LS_RET                 
  -- AND  VOUCHER_DET.CHGCODE_ID <> 'GSTPAY' --AND  VOUCHER.currency_id <> :rs_curr              
  -- AND  voucher.term_ind = 'M'                 
                
                
  where upper(CUSTOMER_MASTER.Environment) = 'SCSHI'   and voucher.approved_by is null-- and voucher.control_flag ='Y'                          
  and  VOUCHER.VOC_TRA_TYPE = 'M'  and voucher.term_ind = 'M'    and VOUCHER_DET.CHGCODE_ID <> 'GSTPAY'               
  and VOUCHER.currency_id <> (SELECT CURRENCY_ID FROM [172.20.200.187].SCSHI.dbo.SYS_DEFAULT)            
  and  voucher.voucher_n in                             
  (                            
  select voucher_n from [172.20.200.187].SCSHI.dbo.voucher voucher                             
  where  exists(select voucher_n from [172.20.200.187].SCSHI.dbo.voucher_det voucher_det                             
  where voucher.voucher_N = voucher_det.voucher_N)                            
  and voucher.VOUCHER_D >'2016-12-31' and   isnull(voucher.export_ind,'N') <>'Y')                 
                
                  
  UNION ALL                 
                  
  SELECT                 
   DISTINCT CUSTOMER_MASTER.Environment, CUSTOMER_MASTER.Parent_ID, INVOICE.CUST_ID,CUSTOMER_MASTER.Child_Short_Name,CUSTOMER_MASTER.Cust_Inv_Group_ID,                
   VOUCHER.VOC_JOB_N, VOUCHER.VOUCHER_N,VOUCHER.INVOICE_N as Invoice,                  
   VENDOR_MAST.VENDOR_ID, VENDOR_MAST.VENDOR_NAME,VOUCHER_DET.VOC_LINE_N,--voucher.voucher_n as ref_no,                 
   VOUCHER_DET.CHGCODE_ID,RTRIM(LTRIM(voucher_det.chg_des1+'|'+voucher_det.chg_des2)) as chg_des,  'VOUCHER' Type,                
                 
  /* INVOICE.INVOICE_N as ref_no,                 
     RTRIM(LTRIM(voucher_det.chg_des1)) as chg_des,  */                
     0 as cost_ttl_amt_usd,                 
     CASE WHEN voucher.doc_ind <> 'SC' THEN voucher_det.line_tot_a   ELSE (isnull(voucher_det.line_tot_a,1) *isnull( voucher.voc_ex_rate,1) * -1 ) END AS cost_ttl_amt_sgd,                 
     0 as sell_ttl_amt_usd,                 
     0 as sell_ttl_amt_sgd,                 
     CASE WHEN voucher.doc_ind <> 'SC' THEN (isnull(voucher.voc_ex_rate,1)  *  isnull(voucher_det.line_tot_a,1) * -1)  ELSE (isnull(voucher.voc_ex_rate,1)  * isnull( voucher_det.line_tot_a,1) ) END AS local_curr,                 
   VOUCHER.CURRENCY_ID,                
   voucher_det.LINE_TOT_A,isnull(voucher_det.LINE_TOT_A,1) * isnull(voucher.VOC_EX_RATE,1) ,                                         
   VOUCHER_DET.line_tot_gst_a as TOTAL_GST , VOUCHER.DOC_NO, VOUCHER.DOC_DATE, '','New','','','','','',0,                
   voucher.USER_ID,'', (select currency_id from [172.20.200.187].SCSHI.dbo.sys_default ),voucher.CONTROL_FLAG  ,voucher_det.LINE_GST_P, voucher_det.LINE_GST_A                   
  FROM [172.20.200.187].SCSHI.dbo.invoice inner join [172.20.200.187].SCSHI.dbo.voucher on invoice.invoice_n = voucher.invoice_n                 
  inner join [172.20.200.187].SCSHI.dbo.voucher_det on voucher.voucher_n = voucher_det.voucher_n                 
  inner join finance.dbo.CUSTOMER_MASTER   on INVOICE.cust_id = CUSTOMER_MASTER.Child_ID                          
  inner join [172.20.200.187].SCSHI.dbo.vendor_mast on VOUCHER.VENDOR_ID = VENDOR_MAST.VENDOR_ID                  
                
  -- WHERE VOUCHER.VOC_TRA_TYPE = 'M'  -- AND VOUCHER.INVOICE_N = :LS_RET                 
  -- AND VOUCHER_DET.CHGCODE_ID <> 'GSTPAY' --AND VOUCHER.currency_id = :rs_curr                 
  -- AND voucher.term_ind = 'M'                 
                
  where upper(CUSTOMER_MASTER.Environment) = 'SCSHI'   and voucher.approved_by is null-- and voucher.control_flag ='Y'                          
  and  VOUCHER.VOC_TRA_TYPE = 'M'  and voucher.term_ind = 'M'    and VOUCHER_DET.CHGCODE_ID <> 'GSTPAY'               
  and VOUCHER.currency_id = (SELECT CURRENCY_ID FROM [172.20.200.187].SCSHI.dbo.SYS_DEFAULT)            
  and  voucher.voucher_n in                             
  (                            
  select voucher_n from [172.20.200.187].SCSHI.dbo.voucher voucher                             
  where  exists(select voucher_n from [172.20.200.187].SCSHI.dbo.voucher_det voucher_det                             
 where voucher.voucher_N = voucher_det.voucher_N)                            
  and voucher.VOUCHER_D >'2016-12-31' and   isnull(voucher.export_ind,'N') <>'Y')                 
                  
                
  Begin                                
                
   update [Payable_PL] set [PLAmountUSD] =([SellUSD] - [CostUSD]),                                 
 [PLAmountLocalCurrency]=([SellLocalCurrency] - [CostLocalCurrency]),                                
 [PLPercentageUSD] = (([SellUSD] - [CostUSD])/ case when [SellUSD]=0 then 1 end )*100,                                
 [PLPercentageLocalCurrency]= (([SellLocalCurrency] - [CostLocalCurrency])/ case when [SellLocalCurrency] =0 then 1 End )*100                                
 where upper([Payable_PL].Environment) = 'SCSHI'                
                       
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
END 

GO
