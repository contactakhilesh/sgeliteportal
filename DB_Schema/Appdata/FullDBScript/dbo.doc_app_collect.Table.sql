USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_app_collect] DROP CONSTRAINT IF EXISTS [DF_doc_app_collect_doc5_c]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_app_collect] DROP CONSTRAINT IF EXISTS [DF_doc_app_collect_doc5_o]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_app_collect] DROP CONSTRAINT IF EXISTS [DF_doc_app_collect_doc4_c]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_app_collect] DROP CONSTRAINT IF EXISTS [DF_doc_app_collect_doc4_o]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_app_collect] DROP CONSTRAINT IF EXISTS [DF_doc_app_collect_doc3_c]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_app_collect] DROP CONSTRAINT IF EXISTS [DF_doc_app_collect_doc3_o]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_app_collect] DROP CONSTRAINT IF EXISTS [DF_doc_app_collect_doc2_c]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_app_collect] DROP CONSTRAINT IF EXISTS [DF_doc_app_collect_doc2_o]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_app_collect] DROP CONSTRAINT IF EXISTS [DF_doc_app_collect_doc1_c]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_app_collect] DROP CONSTRAINT IF EXISTS [DF_doc_app_collect_doc1_o]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_app_collect] DROP CONSTRAINT IF EXISTS [DF_doc_app_collect_doc3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_app_collect] DROP CONSTRAINT IF EXISTS [DF_doc_app_collect_doc2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_app_collect] DROP CONSTRAINT IF EXISTS [DF_doc_app_collect_doc1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_app_collect] DROP CONSTRAINT IF EXISTS [DF_doc_app_collect_cover_type]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_app_collect] DROP CONSTRAINT IF EXISTS [DF_doc_app_collect_doc_date]
GO
/****** Object:  Table [dbo].[doc_app_collect]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[doc_app_collect]
GO
/****** Object:  Table [dbo].[doc_app_collect]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_app_collect]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[doc_app_collect](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_date] [datetime] NULL,
	[to_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref_no] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_tel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_fax] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[draft_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[draft_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[draft_tenor] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comm_inv_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comm_inv_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pack_list_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pack_list_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bill_lading_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bill_lading_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[phyto_cert_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[phyto_cert_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_qty_wt_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_qty_wt_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pack_decla_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pack_decla_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[insur_cert_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[insur_cert_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[co_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[co_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fumi_cert_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fumi_cert_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_analysis_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_analysis_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[collect_bank] [varchar](600) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins1] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins2] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins3] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins4] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins4_percent] [numeric](11, 3) NULL,
	[ins4_from] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins4_to] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins5] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins6] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins7] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins8] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins9] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins10] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins10_to] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[company_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_value] [numeric](22, 3) NULL,
	[ship_cert_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_cert_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ben_cert_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ben_cert_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cover_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_heat_treat_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_heat_treat_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_quality_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_quality_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[letter_credit_n] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc5] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc1_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc1_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc2_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc2_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc3_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc3_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc4_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc4_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc5_o] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc5_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[issuing_bank] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[draft_n] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[em_csr] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[currency_id] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receipt_funds_clause] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[std_clause] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[discrepancies_clause] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[clause1] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[business_unit] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bank_ref] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[signagent] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fax_discripancy] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fax_discripancy_HK] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_confirm] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_to] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_pro] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[intnl_stnby] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[san_frdinfo] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INS11] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INS12] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INS13] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_expiry] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawee_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[approval_flag] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[approved_by] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[approved_date] [datetime] NULL,
	[requested_by] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_doc_app_collect] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[doc_app_collect] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[doc_app_collect] TO [public] AS [dbo]
GO
