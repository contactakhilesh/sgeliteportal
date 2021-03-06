USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DOCUMENTARY_COLLECTION]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DOCUMENTARY_COLLECTION] DROP CONSTRAINT IF EXISTS [DF_DOC_DOCUMENTARY_COLLECTION_create_dt]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DOCUMENTARY_COLLECTION]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DOCUMENTARY_COLLECTION] DROP CONSTRAINT IF EXISTS [DF_DOC_DOCUMENTARY_COLLECTION_head_remarks]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DOCUMENTARY_COLLECTION]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DOCUMENTARY_COLLECTION] DROP CONSTRAINT IF EXISTS [DF_DOC_DOCUMENTARY_COLLECTION_right_add5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DOCUMENTARY_COLLECTION]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DOCUMENTARY_COLLECTION] DROP CONSTRAINT IF EXISTS [DF_DOC_DOCUMENTARY_COLLECTION_right_add4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DOCUMENTARY_COLLECTION]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DOCUMENTARY_COLLECTION] DROP CONSTRAINT IF EXISTS [DF_DOC_DOCUMENTARY_COLLECTION_right_add3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DOCUMENTARY_COLLECTION]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DOCUMENTARY_COLLECTION] DROP CONSTRAINT IF EXISTS [DF_DOC_DOCUMENTARY_COLLECTION_right_add2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DOCUMENTARY_COLLECTION]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DOCUMENTARY_COLLECTION] DROP CONSTRAINT IF EXISTS [DF_DOC_DOCUMENTARY_COLLECTION_right_add1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DOCUMENTARY_COLLECTION]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DOCUMENTARY_COLLECTION] DROP CONSTRAINT IF EXISTS [DF_DOC_DOCUMENTARY_COLLECTION_title]
GO
/****** Object:  Table [dbo].[DOC_DOCUMENTARY_COLLECTION]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_DOCUMENTARY_COLLECTION]
GO
/****** Object:  Table [dbo].[DOC_DOCUMENTARY_COLLECTION]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DOCUMENTARY_COLLECTION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_DOCUMENTARY_COLLECTION](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[left_add1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[left_add2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[left_add3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[left_add4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[left_add5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[right_add1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[right_add2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[right_add3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[right_add4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[right_add5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[head_remarks] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[collecting_bank1] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[collecting_bank2] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[collecting_bank3] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[collecting_bank4] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawee_add1] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawee_add2] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawee_add3] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawee_add4] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawee_add5] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawee_add6] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawer_add1] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawer_add2] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawer_add3] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawer_add4] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawer_add5] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawer_add6] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dir_collect_nr] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tenor] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amount] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drafts] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bls] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoices] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[plist] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[msds] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[eur1] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[atr] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[analyse1] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[analyse2] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_from] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_to] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst1] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst2] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst3] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst4] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst5] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst6] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst7] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst8] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst9] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remit1] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remit2] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remit3] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remit4] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remit5] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[special_inst] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_dt] [datetime] NULL,
	[due_date] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[etd] [datetime] NULL,
	[shipper_ref] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[elite_ref] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_DOCUMENTARY_COLLECTION] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_DOCUMENTARY_COLLECTION] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_DOCUMENTARY_COLLECTION] TO [public] AS [dbo]
GO
