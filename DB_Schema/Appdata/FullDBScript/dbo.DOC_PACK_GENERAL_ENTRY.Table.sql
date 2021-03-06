USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_footer_right]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_footer_left]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_comp_logo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_address_logo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_gst_reg_no]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_header_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_tot_net_wt_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_tot_gross_wt_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_certify_clause]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_template_type]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_precarriage]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_invoice_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_comp_stamp_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_signature_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_exporter_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_clauses_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_tot_cont_measurement_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_tot_cont_net_wt_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_tot_cont_gross_wt_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_tot_cont_pkgs_no_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_seal_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_container_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_line_measurement_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_line_net_wt_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_line_gross_wt_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_goods_des_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_num_of_pkgs_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_mkgs_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_notify_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_consignee_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_bill_to_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_print_ship_to_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_addres_to_print_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_shipper_ref_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACK_GENERAL_ENTRY] DROP CONSTRAINT IF EXISTS [DF_DOC_PACK_GENERAL_ENTRY_doc_creation_dt]
GO
/****** Object:  Table [dbo].[DOC_PACK_GENERAL_ENTRY]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_PACK_GENERAL_ENTRY]
GO
/****** Object:  Table [dbo].[DOC_PACK_GENERAL_ENTRY]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_PACK_GENERAL_ENTRY](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[scc_ref_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[scc_ref_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_creation_dt] [datetime] NULL,
	[po_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sailing_dt] [datetime] NULL,
	[eta] [datetime] NULL,
	[precarriage] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pol] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pod] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[elite_ref_no] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_ref_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_adl_ref1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_adl_ref2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_adl_ref3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[other_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[addres_to_print_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_ship_to_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_bill_to_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_consignee_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_notify_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_mkgs_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_num_of_pkgs_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_goods_des_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_line_gross_wt_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_line_net_wt_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_line_measurement_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_container_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_seal_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_tot_cont_pkgs_no_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_tot_cont_gross_wt_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_tot_cont_net_wt_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_tot_cont_measurement_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_clauses_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_exporter_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_signature_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_comp_stamp_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_invoice_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_ref_no] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_dt] [datetime] NULL,
	[price_terms] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[price_terms_port] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[product_co] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remit_to_bank] [varchar](3000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bank_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_rec_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_del_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_date] [datetime] NULL,
	[print_precarriage] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comp_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comp_name_as] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[template_type] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[date_shipped] [datetime] NULL,
	[dest_control_stmt] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[certify_clause] [varchar](600) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[carrier_alpha_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nvo_carrier] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[collect_charges] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dest_control_stmt_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_gross_wt_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_net_wt_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[header_ind] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_gst_reg_no] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_address_logo] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_comp_logo] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_footer_left] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_footer_right] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pay_due_dt] [datetime] NULL,
	[start_loading] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[end_loading] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mlo_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contract_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_opt] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bill_to_party] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[signagent] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fob_price] [decimal](18, 2) NULL,
	[docs_description] [varchar](600) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_to_whom_concern] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Packtext] [varchar](3000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipmentvalue] [decimal](20, 0) NULL,
	[lcissuedt] [datetime] NULL,
	[coverno] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[insurance_agent] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIP_ON_BRD_D] [datetime] NULL,
 CONSTRAINT [PK_DOC_PACK_GENERAL_ENTRY] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_PACK_GENERAL_ENTRY] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_PACK_GENERAL_ENTRY] TO [public] AS [dbo]
GO
