USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DRAFT_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DRAFT_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_DRAFT_DET_msg2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DRAFT_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DRAFT_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_DRAFT_DET_currency_id]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DRAFT_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DRAFT_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_DRAFT_DET_payable_to]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DRAFT_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DRAFT_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_DRAFT_DET_title]
GO
/****** Object:  Table [dbo].[DOC_DRAFT_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_DRAFT_DET]
GO
/****** Object:  Table [dbo].[DOC_DRAFT_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DRAFT_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_DRAFT_DET](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_dt] [datetime] NULL,
	[tenor] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[payable_to] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amount] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amount_words] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawn_on] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawer_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[elite_ref] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[currency_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[msg1] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[msg2] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[place_drawing] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[draft_n] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[signagent] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[issuing_bank] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawee_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_DRAFT_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_DRAFT_DET] TO [public] AS [dbo]
GO
