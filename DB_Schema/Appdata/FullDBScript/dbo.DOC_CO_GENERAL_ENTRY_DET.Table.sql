USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_print_com_doc_st]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_print_hbl_n]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_print_chamber_words]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_print_footer_right]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_print_footer_left]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_print_comp_logo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_print_address_logo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_print_shipper_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_hide_header]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_marks_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_print_tot_cont_net_wt_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_print_tot_cont_gross_wt_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_print_comp_stamp]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_print_markings]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_add_ref_no]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_create_dt]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_CO_GENERAL_ENTRY_DET_header_option_ind]
GO
/****** Object:  Table [dbo].[DOC_CO_GENERAL_ENTRY_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_CO_GENERAL_ENTRY_DET]
GO
/****** Object:  Table [dbo].[DOC_CO_GENERAL_ENTRY_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CO_GENERAL_ENTRY_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[header_option_ind] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_dt] [datetime] NULL,
	[elite_refno] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_ref] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[add_ref_no] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_ref1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_ref2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_ref3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[other_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sailing_dt] [datetime] NULL,
	[eta] [datetime] NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyer] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pol] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pod] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_consignee] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_notify] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_markings] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_origin] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks1] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks5] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks6] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks7] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks8] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks9] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks10] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_sign] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_comp_stamp] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[po_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_goods_des_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_container_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_seal_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_tot_cont_pkgs_no_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_tot_cont_gross_wt_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_tot_cont_net_wt_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_tot_cont_measurement_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_invoice_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_del_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_rec_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_logo_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_address_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_chamber_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sign_party] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[marks_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hide_header] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_shipper_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_address_logo] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_comp_logo] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_footer_left] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_footer_right] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_chamber_clause] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_chamber_words] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_hbl_n] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[signagent] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_add_status] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_com_doc_st] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_to_whom_concern] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIP_ON_BRD_D] [datetime] NULL,
	[shipped_status_flag] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_CO_GENERAL_ENTRY_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_CO_GENERAL_ENTRY_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_CO_GENERAL_ENTRY_DET] TO [public] AS [dbo]
GO
