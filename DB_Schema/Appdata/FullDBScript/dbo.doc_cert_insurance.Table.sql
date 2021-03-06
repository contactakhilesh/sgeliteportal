USE [appdata]
GO
/****** Object:  Trigger [trg_update_cert_range]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_update_cert_range]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_cert_insurance]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_cert_insurance] DROP CONSTRAINT IF EXISTS [DF_doc_cert_insurance_type]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_cert_insurance]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_cert_insurance] DROP CONSTRAINT IF EXISTS [DF_doc_cert_insurance_print_po]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_cert_insurance]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_cert_insurance] DROP CONSTRAINT IF EXISTS [DF_doc_cert_insurance_duplicate_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_cert_insurance]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_cert_insurance] DROP CONSTRAINT IF EXISTS [DF_doc_cert_insurance_header_ind]
GO
/****** Object:  Index [doc_cert_insurance_idx2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [doc_cert_insurance_idx2] ON [dbo].[doc_cert_insurance]
GO
/****** Object:  Index [doc_cert_insurance_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [doc_cert_insurance_idx1] ON [dbo].[doc_cert_insurance]
GO
/****** Object:  Table [dbo].[doc_cert_insurance]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[doc_cert_insurance]
GO
/****** Object:  Table [dbo].[doc_cert_insurance]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_cert_insurance]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[doc_cert_insurance](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_n] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[policy_n] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[premium_amt] [decimal](12, 3) NULL,
	[premium_rate] [decimal](12, 3) NULL,
	[premium_date] [datetime] NULL,
	[premium_place] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[header_ind] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_of_load] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_of_discharge] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[product_desc] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[num_of_packages] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cover_text] [varchar](550) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[insured_amt] [decimal](12, 2) NULL,
	[insured_value] [decimal](12, 2) NULL,
	[currency_id] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[assured] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[marks_and_num] [varchar](600) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_no] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_desc] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cause_text] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_rec_name] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_del_name] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duplicate_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fin_dest] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[certagent] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[signagent] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[po_no] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_po] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[type] [int] NULL,
	[lc_issuing_bank] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_lc_issuing_bank] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_dated] [datetime] NULL,
	[print_lc_dated] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_doc_cert_insurance] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[doc_cert_insurance] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[doc_cert_insurance] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [doc_cert_insurance_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[doc_cert_insurance]') AND name = N'doc_cert_insurance_idx1')
CREATE NONCLUSTERED INDEX [doc_cert_insurance_idx1] ON [dbo].[doc_cert_insurance]
(
	[cert_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [doc_cert_insurance_idx2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[doc_cert_insurance]') AND name = N'doc_cert_insurance_idx2')
CREATE NONCLUSTERED INDEX [doc_cert_insurance_idx2] ON [dbo].[doc_cert_insurance]
(
	[doc_head_no] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
