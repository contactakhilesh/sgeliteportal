USE [Finance]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
    
CREATE  Proc [SAUDI_2B_Proforma_PL_Import]                      
as                      
Begin 
BEGIN TRY           
 Begin          
 insert into finance.dbo.[Proforma_PL](                      
 Environment,Parent_ID,Child_ID,FromPartyName,Customer_Inv_Group_ID,          
 Job_Number,[Invoice_Number],          
 ToPartyID,[ToPartyName],Invoice_Line_Number,CHGCODE_ID,          
 [Details],[Type],          
 [CostUSD],                      
 [CostLocalCurrency],          
 [SellUSD],          
 [SellLocalCurrency],                      
 LocalCurrency,          
 Sell_SGD,           
 [Currency],[Amount],                      
 [LocalAmount],[TotalGST],SysCurrency, Control_Flag )                       
             
          
          
          
 ---------------------------------------INVOICE------------------------------------------------------------------          
          
 SELECT     distinct                    
 CUSTOMER_MASTER.Environment,isnull(CUSTOMER_MASTER.Parent_ID,''),CUSTOMER_MASTER.Child_ID,CUSTOMER_MASTER.Child_Short_Name,CUSTOMER_MASTER.Cust_Inv_Group_ID,isnull(IMPORT.IMPORT_N,''),INVOICE.INVOICE_N as Invoice,           
 customer_master.Child_ID, customer_master.Child_Short_Name,INVOICE_DET.INV_LINE_N, INVOICE_DET.CHGCODE_ID,                      
 RTRIM(LTRIM(isnull(INVOICE_DET.chg_des1,'')+'|'+isnull(INVOICE_DET.chg_des2,''))) as chg_des, 'INVOICE' Type,           
          
 0 AS cost_ttl_amt_usd,           
 0 as cost_ttl_amt_sgd,           
 ( INVOICE_DET.LINE_TOT_A  * invoice.inv_ex_rate_usd) AS sell_ttl_amt_usd,           
 0 as sell_ttl_amt_sgd,           
 invoice_det.line_tot_a *  invoice.inv_ex_rate as local_curr,           
 invoice_det.line_tot_a *  invoice.inv_ex_rate as sell_sgd,          
          
 INVOICE.CURRENCY_ID, INVOICE_DET.LINE_TOT_A,                                 
 INVOICE_DET.LINE_TOT_A * INVOICE.INV_EX_RATE ,                                                    
 invoice_det.line_tot_gst_a as TOTAL_GST ,(select currency_id from [172.20.200.187].SAUDI.dbo.sys_default ),invoice.control_flag              
          
 FROM [172.20.200.187].SAUDI.dbo.import inner join [172.20.200.187].SAUDI.dbo.import_ref on import.import_REF_N = import_REF.import_REF_N          
 inner join [172.20.200.187].SAUDI.dbo.invoice on  ( import.import_N = INVOICE.INV_JOB_N )          
 inner join [172.20.200.187].SAUDI.dbo.invoice_det on ( INVOICE.INVOICE_N = INVOICE_DET.INVOICE_N )          
 inner join finance.dbo.CUSTOMER_MASTER on  IMPORT.CUST_ID = CUSTOMER_MASTER.Child_ID           
            
 WHERE             
 ( INVOICE.currency_id <> (SELECT CURRENCY_ID FROM [172.20.200.187].SAUDI.dbo.SYS_DEFAULT) ) AND ( INVOICE.INV_TRA_TYPE = 'I' )           
 --and INVOICE.CONTROL_FLAG ='Y'                   
   and upper(CUSTOMER_MASTER.Environment) = 'SAUDI' --and INVOICE.APPROVED_BY IS NULL                      
   and exists ( select distinct invoice_n from [172.20.200.187].SAUDI.dbo.INVOICE_det INVOICE_det                       
   where INVOICE.INVOICE_N = INVOICE_det.INVOICE_N and  INVOICE.INV_D >'2016-12-31' and                       
   isnull(invoice.export_ind,'N') <>'Y' )--and CONTROL_FLAG='Y' )           
            
 UNION ALL           
          
 SELECT     distinct                    
 CUSTOMER_MASTER.Environment,isnull(CUSTOMER_MASTER.Parent_ID,''),CUSTOMER_MASTER.Child_ID,CUSTOMER_MASTER.Child_Short_Name,CUSTOMER_MASTER.Cust_Inv_Group_ID,isnull(IMPORT.IMPORT_N,''),INVOICE.INVOICE_N as Invoice,           
 customer_master.Child_ID, customer_master.Child_Short_Name,INVOICE_DET.INV_LINE_N, INVOICE_DET.CHGCODE_ID,                      
 RTRIM(LTRIM(isnull(INVOICE_DET.chg_des1,'')+'|'+isnull(INVOICE_DET.chg_des2,''))) as chg_des, 'INVOICE' Type,           
          
 0 AS cost_ttl_amt_usd,           
 0 as cost_ttl_amt_sgd,           
 0 AS sell_ttl_amt_usd,           
 INVOICE_DET.LINE_TOT_A AS sell_ttl_amt_sgd,           
 invoice_det.line_tot_a *  invoice.inv_ex_rate as local_curr,           
 0 as sell_sgd ,          
          
 INVOICE.CURRENCY_ID, INVOICE_DET.LINE_TOT_A,                                 
 INVOICE_DET.LINE_TOT_A * INVOICE.INV_EX_RATE ,                                  
 invoice_det.line_tot_gst_a as TOTAL_GST ,(select currency_id from [172.20.200.187].SAUDI.dbo.sys_default ),invoice.control_flag              
          
 FROM [172.20.200.187].SAUDI.dbo.import inner join [172.20.200.187].SAUDI.dbo.import_ref on import.import_REF_N = import_REF.import_REF_N          
 inner join [172.20.200.187].SAUDI.dbo.invoice on  ( import.import_N = INVOICE.INV_JOB_N )          
 inner join [172.20.200.187].SAUDI.dbo.invoice_det on ( INVOICE.INVOICE_N = INVOICE_DET.INVOICE_N )          
 inner join finance.dbo.CUSTOMER_MASTER on  IMPORT.CUST_ID = CUSTOMER_MASTER.Child_ID           
          
 WHERE             
 ( INVOICE.currency_id = (SELECT CURRENCY_ID FROM [172.20.200.187].SAUDI.dbo.SYS_DEFAULT) ) AND ( INVOICE.INV_TRA_TYPE = 'I' )           
 --and INVOICE.CONTROL_FLAG ='Y'                   
   and upper(CUSTOMER_MASTER.Environment) = 'SAUDI' --and INVOICE.APPROVED_BY IS NULL                      
   and exists ( select distinct invoice_n from [172.20.200.187].SAUDI.dbo.INVOICE_det INVOICE_det                       
   where INVOICE.INVOICE_N = INVOICE_det.INVOICE_N and  INVOICE.INV_D >'2016-12-31' and                       
   isnull(invoice.export_ind,'N') <>'Y' )--and CONTROL_FLAG='Y' )            
          
 ---------------------------------------DR NOTE------------------------------------------------------------------          
 UNION ALL          
          
 SELECT     distinct                    
 CUSTOMER_MASTER.Environment,isnull(CUSTOMER_MASTER.Parent_ID,''),CUSTOMER_MASTER.Child_ID,CUSTOMER_MASTER.Child_Short_Name,CUSTOMER_MASTER.Cust_Inv_Group_ID,          
 IMPORT.IMPORT_N,DR_NOTE.INVOICE_N as Invoice,           
 customer_master.Child_ID,CUSTOMER_MASTER.Child_Short_Name,DR_NOTE_DET.INV_LINE_N, DR_NOTE_DET.CHGCODE_ID,                                  
 RTRIM(LTRIM(isnull(DR_NOTE_DET.chg_des1,'')+'|'+isnull(DR_NOTE_DET.chg_des2,''))) as chg_des,   'DR NOTE' Type,            
          
 0 AS cost_ttl_amt_usd,           
 0 as cost_ttl_amt_sgd,           
 (DR_NOTE_DET.LINE_TOT_A * dr_note.inv_ex_rate_usd) AS sell_ttl_amt_usd,           
 0 as sell_ttl_amt_sgd,           
 dr_note_det.line_tot_a   *  dr_note.inv_ex_rate as local_curr,           
 dr_note_det.line_tot_a   *  dr_note.inv_ex_rate as sell_sgd ,          
          
 DR_NOTE.CURRENCY_ID, DR_NOTE_DET.LINE_TOT_A,                                 
 DR_NOTE_DET.LINE_TOT_A * DR_NOTE.INV_EX_RATE ,                                                    
 DR_NOTE_DET.line_tot_gst_a as TOTAL_GST ,(select currency_id from [172.20.200.187].SAUDI.dbo.sys_default ) ,DR_NOTE.CONTROL_FLAG             
          
 FROM [172.20.200.187].SAUDI.dbo.import_ref inner join [172.20.200.187].SAUDI.dbo.DR_NOTE on ( import_ref.import_ref_n = DR_NOTE.INV_REF_N )            
 inner join [172.20.200.187].SAUDI.dbo.DR_NOTE_DET on ( DR_NOTE.INVOICE_N = DR_NOTE_DET.INVOICE_N ) and ( DR_NOTE.FY = DR_NOTE_DET.FY )          
 inner join [172.20.200.187].SAUDI.dbo.IMPORT on  IMPORT.IMPORT_REF_N = IMPORT_REF.IMPORT_REF_N                
 inner join finance.dbo.CUSTOMER_MASTER on DR_NOTE.CUST_ID = CUSTOMER_MASTER.Child_ID            
            
 WHERE             
 ( DR_NOTE.currency_id <> (SELECT CURRENCY_ID FROM [172.20.200.187].SAUDI.dbo.SYS_DEFAULT) ) AND ( DR_NOTE.INV_TRA_TYPE = 'I' )            
   and upper(CUSTOMER_MASTER.Environment) = 'SAUDI' and DR_NOTE.INV_D >'2016-12-31'                                 
   and isnull(DR_NOTE.export_ind,'N') <>'Y' --and DR_NOTE.CONTROL_FLAG='Y'                                        
   and exists ( select * from [172.20.200.187].SAUDI.dbo.INVOICE INVOICE where DR_NOTE.INVOICE_N = INVOICE.INVOICE_N  )           
            
 UNION ALL           
          
 SELECT     distinct                    
 CUSTOMER_MASTER.Environment,isnull(CUSTOMER_MASTER.Parent_ID,''),CUSTOMER_MASTER.Child_ID,CUSTOMER_MASTER.Child_Short_Name,CUSTOMER_MASTER.Cust_Inv_Group_ID,          
 IMPORT.IMPORT_N,DR_NOTE.INVOICE_N as Invoice,           
 customer_master.Child_ID,CUSTOMER_MASTER.Child_Short_Name,DR_NOTE_DET.INV_LINE_N, DR_NOTE_DET.CHGCODE_ID,                                  
 RTRIM(LTRIM(isnull(DR_NOTE_DET.chg_des1,'')+'|'+isnull(DR_NOTE_DET.chg_des2,''))) as chg_des,   'DR NOTE' Type,            
          
 0 AS cost_ttl_amt_usd,           
 0 as cost_ttl_amt_sgd,           
 0 AS sell_ttl_amt_usd,           
 DR_NOTE_DET.LINE_TOT_A AS sell_ttl_amt_sgd,           
 dr_note_det.line_tot_a   *  dr_note.inv_ex_rate as local_curr,           
 0 as sell_sgd ,          
 DR_NOTE.CURRENCY_ID, DR_NOTE_DET.LINE_TOT_A,           
 DR_NOTE_DET.LINE_TOT_A * DR_NOTE.INV_EX_RATE ,                                                    
 DR_NOTE_DET.line_tot_gst_a as TOTAL_GST ,(select currency_id from [172.20.200.187].SAUDI.dbo.sys_default ) ,DR_NOTE.CONTROL_FLAG            
          
 FROM [172.20.200.187].SAUDI.dbo.import_ref inner join [172.20.200.187].SAUDI.dbo.DR_NOTE on ( import_ref.import_ref_n = DR_NOTE.INV_REF_N )            
 inner join [172.20.200.187].SAUDI.dbo.DR_NOTE_DET on ( DR_NOTE.INVOICE_N = DR_NOTE_DET.INVOICE_N ) and ( DR_NOTE.FY = DR_NOTE_DET.FY )          
 inner join [172.20.200.187].SAUDI.dbo.IMPORT on  IMPORT.IMPORT_REF_N = IMPORT_REF.IMPORT_REF_N                
 inner join finance.dbo.CUSTOMER_MASTER on DR_NOTE.CUST_ID = CUSTOMER_MASTER.Child_ID            
          
 WHERE           
 ( DR_NOTE.currency_id = (SELECT CURRENCY_ID FROM [172.20.200.187].SAUDI.dbo.SYS_DEFAULT) ) AND ( DR_NOTE.INV_TRA_TYPE = 'I' )           
 and upper(CUSTOMER_MASTER.Environment) = 'SAUDI' and DR_NOTE.INV_D >'2016-12-31'                                 
 and isnull(DR_NOTE.export_ind,'N') <>'Y' --and DR_NOTE.CONTROL_FLAG='Y'                                        
 and exists ( select * from [172.20.200.187].SAUDI.dbo.INVOICE INVOICE where DR_NOTE.INVOICE_N = INVOICE.INVOICE_N  )          
          
 ---------------------------------------CR Note------------------------------------------------------------------          
 UNION ALL           
          
 SELECT     distinct                    
 CUSTOMER_MASTER.Environment,isnull(CUSTOMER_MASTER.Parent_ID,''),CUSTOMER_MASTER.Child_ID,CUSTOMER_MASTER.Child_Short_Name,CUSTOMER_MASTER.Cust_Inv_Group_ID ,            
 IMPORT.IMPORT_N,CR_NOTE.INVOICE_N as Invoice,          
 customer_master.Child_ID, CUSTOMER_MASTER.Child_Short_Name,CR_NOTE_DET.INV_LINE_N, CR_NOTE_DET.CHGCODE_ID,                                 
 RTRIM(LTRIM(isnull(CR_NOTE_DET.chg_des1,'')+' '+ isnull(CR_NOTE_DET.chg_des2,''))) as chg_des, 'CR NOTE' Type,            
          
 ( CR_NOTE_DET.LINE_TOT_A * cr_note.inv_ex_rate_usd) AS cost_ttl_amt_usd,           
 0 as cost_ttl_amt_sgd,           
 0 AS sell_ttl_amt_usd,           
 0 as sell_ttl_amt_sgd,           
 (cr_note_det.line_tot_a  * cr_note.inv_ex_rate * -1) as local_curr,           
 0 as sell_sgd ,          
          
 CR_NOTE.CURRENCY_ID, CR_NOTE_DET.LINE_TOT_A,                                 
 CR_NOTE_DET.LINE_TOT_A * CR_NOTE.INV_EX_RATE ,                                                    
 CR_NOTE_DET.line_tot_gst_a as TOTAL_GST  ,(select currency_id from [172.20.200.187].SAUDI.dbo.sys_default ),CR_NOTE.CONTROL_FLAG             
            
 FROM [172.20.200.187].SAUDI.dbo.import_ref inner join [172.20.200.187].SAUDI.dbo.CR_NOTE on ( import_ref.import_ref_n = CR_NOTE.INV_REF_N )            
 inner join [172.20.200.187].SAUDI.dbo.CR_NOTE_DET on ( CR_NOTE.FY = CR_NOTE_DET.FY ) and  ( CR_NOTE.INVOICE_N = CR_NOTE_DET.INVOICE_N )          
 inner join [172.20.200.187].SAUDI.dbo.IMPORT on  IMPORT.IMPORT_REF_N = IMPORT_REF.IMPORT_REF_N               
 inner join finance.dbo.CUSTOMER_MASTER on  CR_NOTE.CUST_ID = CUSTOMER_MASTER.Child_ID              
          
 WHERE             
 ( CR_NOTE.currency_id <> (SELECT CURRENCY_ID FROM [172.20.200.187].SAUDI.dbo.SYS_DEFAULT) ) AND ( CR_NOTE.INV_TRA_TYPE = 'I' )          
 and upper(CUSTOMER_MASTER.Environment) = 'SAUDI' and CR_NOTE.INV_D >'2016-12-31'                                 
 and isnull(CR_NOTE.export_ind,'N') <>'Y' --and CR_NOTE.CONTROL_FLAG='Y'                                                     
 and exists ( select * from [172.20.200.187].SAUDI.dbo.INVOICE INVOICE where CR_NOTE.INVOICE_N = INVOICE.INVOICE_N  )          
            
 UNION ALL           
          
 SELECT     distinct                    
 CUSTOMER_MASTER.Environment,isnull(CUSTOMER_MASTER.Parent_ID,''),CUSTOMER_MASTER.Child_ID,CUSTOMER_MASTER.Child_Short_Name,CUSTOMER_MASTER.Cust_Inv_Group_ID ,            
 IMPORT.IMPORT_N,CR_NOTE.INVOICE_N as Invoice,          
 customer_master.Child_ID, CUSTOMER_MASTER.Child_Short_Name,CR_NOTE_DET.INV_LINE_N, CR_NOTE_DET.CHGCODE_ID,                                 
 RTRIM(LTRIM(isnull(CR_NOTE_DET.chg_des1,'')+' '+ isnull(CR_NOTE_DET.chg_des2,''))) as chg_des, 'CR NOTE' Type,            
          
 0 AS cost_ttl_amt_usd,           
 CR_NOTE_DET.LINE_TOT_A AS cost_ttl_amt_sgd,           
 0 AS sell_ttl_amt_usd,           
 0 AS sell_ttl_amt_sgd,           
 (cr_note_det.line_tot_a  * cr_note.inv_ex_rate * -1) as local_curr,           
 0 as sell_sgd ,          
          
 CR_NOTE.CURRENCY_ID, CR_NOTE_DET.LINE_TOT_A,                                 
 CR_NOTE_DET.LINE_TOT_A * CR_NOTE.INV_EX_RATE ,                                                    
 CR_NOTE_DET.line_tot_gst_a as TOTAL_GST  ,(select currency_id from [172.20.200.187].SAUDI.dbo.sys_default ),CR_NOTE.CONTROL_FLAG            
          
 FROM [172.20.200.187].SAUDI.dbo.import_ref inner join [172.20.200.187].SAUDI.dbo.CR_NOTE on ( import_ref.import_ref_n = CR_NOTE.INV_REF_N )            
 inner join [172.20.200.187].SAUDI.dbo.CR_NOTE_DET on ( CR_NOTE.FY = CR_NOTE_DET.FY ) and  ( CR_NOTE.INVOICE_N = CR_NOTE_DET.INVOICE_N )          
 inner join [172.20.200.187].SAUDI.dbo.IMPORT on  IMPORT.IMPORT_REF_N = IMPORT_REF.IMPORT_REF_N               
 inner join finance.dbo.CUSTOMER_MASTER on  CR_NOTE.CUST_ID = CUSTOMER_MASTER.Child_ID            
          
 WHERE           
 ( CR_NOTE.currency_id = (SELECT CURRENCY_ID FROM [172.20.200.187].SAUDI.dbo.SYS_DEFAULT) ) AND ( CR_NOTE.INV_TRA_TYPE = 'I' )                
 and upper(CUSTOMER_MASTER.Environment) = 'SAUDI' and CR_NOTE.INV_D >'2016-12-31'                                 
 and isnull(CR_NOTE.export_ind,'N') <>'Y' --and CR_NOTE.CONTROL_FLAG='Y'                                                     
 and exists ( select * from [172.20.200.187].SAUDI.dbo.INVOICE INVOICE where CR_NOTE.INVOICE_N = INVOICE.INVOICE_N  )          
 End          
 Begin          
  update [Proforma_PL] set [PLAmountUSD] =([SellUSD] - [CostUSD]),                                     
  [PLAmountLocalCurrency]=([SellLocalCurrency] - [CostLocalCurrency]),            
  [PLPercentageUSD] = (([SellUSD] - [CostUSD])/  case when [SellUSD] =0 then 1 end)*100,                                 
  [PLPercentageLocalCurrency]= (([SellLocalCurrency] - [CostLocalCurrency])/case when [SellLocalCurrency]= 0 then 1 end)*100                                    
  where upper([Proforma_PL].Environment) = 'SAUDI'            
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
          
-- ---------------------------------------EXPORT T/S CHARGES------------------------------------------------------------------          
-- union all           
          
-- SELECT              
-- 'EXPORT T/S CHARGES' as chg_des,           
          
-- (case when import.f_m3_wt = 0 then 1 else isnull(import.f_m3_wt,1) end ) * isnull(import.i_rate,0) as cost_ttl_amt_usd,           
-- 0 as cost_ttl_amt_sgd,           
-- 0 as sell_ttl_amt_usd,           
-- 0 as sell_ttl_amt_sgd,           
-- ((case when import.f_m3_wt = 0 then 1 else isnull(import.f_m3_wt,1) end ) * isnull(import.i_rate,0) *  ISNULL(import_REF.REF_EX_RATE_CR,0) * -1) as local_curr,           
-- 0 as sell_sgd           
-- FROM [172.20.200.187].SAUDI.dbo.import_ref inner join  [172.20.200.187].SAUDI.dbo.import on ( import.import_REF_N = import_REF.import_REF_N )             
          
-- WHERE           
-- --( import.import_ref_n = :ls_ret ) AND            
-- ( import.i_rate is not null  ) AND  ( import.i_rate <> 0 )               
          
-- ---------------------------------------T/S AGENT CHARGES------------------------------------------------------------------          
-- union all           
-- SELECT              
-- 'T/S AGENT CHARGES' as chg_des,           
          
-- 0 as cost_ttl_amt_usd,           
-- 0 as cost_ttl_amt_sgd,           
-- (case when import.f_m3_wt = 0 then 1 else isnull(import.f_m3_wt,1) end ) * isnull(import.t_rates,0) as sell_ttl_amt_usd,           
-- 0 as sell_ttl_amt_sgd,           
-- ((case when import.f_m3_wt = 0 then 1 else isnull(import.f_m3_wt,1) end ) * isnull(import.t_rates,0) *  ISNULL(import_REF.REF_EX_RATE_CR,0) * -1) as local_curr,           
-- 0 as sell_sgd           
          
-- FROM [172.20.200.187].SAUDI.dbo.import_ref inner join  [172.20.200.187].SAUDI.dbo.import on ( import.import_REF_N = import_REF.import_REF_N )          
          
-- WHERE           
-- --( import.import_ref_n = :ls_ret ) AND            
-- ( import.t_rates is not null  ) AND  ( import.t_rates <> 0 )            
-- ---------------------------------------T/S FREIGHT COLLECT------------------------------------------------------------------          
-- union all           
          
-- SELECT              
-- 'T/S FREIGHT COLLECT' as chg_des,           
          
-- 0 as cost_ttl_amt_usd,           
-- 0 as cost_ttl_amt_sgd,           
-- IMPORT.COLLECT_A as sell_ttl_amt_usd,           
-- 0 as sell_ttl_amt_sgd,           
-- (IMPORT.COLLECT_A  *  ISNULL(import_REF.REF_EX_RATE_CR,0)) as local_curr,           
-- 0 as sell_sgd           
-- FROM [172.20.200.187].SAUDI.dbo.import_ref inner join [172.20.200.187].SAUDI.dbo.import on ( IMPORT.IMPORT_REF_N = IMPORT_REF.IMPORT_REF_N )           
-- WHERE           
-- --( import.import_ref_n = :LS_RET ) AND            
-- ( import.fr_collect_ind = 'Y' ) AND ( import.t_ship_ind = 'Y' ) AND  ( IMPORT.COLLECT_A > 0 )   
  

GO
