USE [appdata]
GO
/****** Object:  Trigger [trg_post_upd_xml_mt707]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_post_upd_xml_mt707]
GO
/****** Object:  Index [xml_mt707_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [xml_mt707_idx1] ON [dbo].[XML_MT707]
GO
/****** Object:  Table [dbo].[XML_MT707]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[XML_MT707]
GO
/****** Object:  Table [dbo].[XML_MT707]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XML_MT707]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XML_MT707](
	[msg_seq_n] [decimal](10, 0) NOT NULL,
	[msg_dt] [datetime] NOT NULL,
	[document_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[message_type] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[version_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[revision_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[document_d] [datetime] NOT NULL,
	[BankID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ffid] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[bank_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[tag_20] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[tag_21] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[tag_23] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_52a] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_31c] [datetime] NULL,
	[tag_30] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_26e] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_59] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[tag_31e] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_32b] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_33b] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_34b] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_39a] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_39b] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_39c] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44a] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44b] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44c] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44d] [varchar](450) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_79] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_72] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[apply_change_d] [datetime] NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[job_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[scEnv] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_no_separator] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pdf_sent_dt] [datetime] NULL,
	[tag_44e] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_44f] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_XML_MT707] PRIMARY KEY CLUSTERED 
(
	[msg_seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[XML_MT707] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[XML_MT707] TO [public] AS [dbo]
GO
/****** Object:  Index [xml_mt707_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_MT707]') AND name = N'xml_mt707_idx1')
CREATE NONCLUSTERED INDEX [xml_mt707_idx1] ON [dbo].[XML_MT707]
(
	[msg_seq_n] ASC,
	[msg_dt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
