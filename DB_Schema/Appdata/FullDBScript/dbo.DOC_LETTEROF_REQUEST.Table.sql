USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_LETTEROF_REQUEST]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_LETTEROF_REQUEST] DROP CONSTRAINT IF EXISTS [DF_DOC_LETTEROF_REQUEST_create_dt]
GO
/****** Object:  Table [dbo].[DOC_LETTEROF_REQUEST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_LETTEROF_REQUEST]
GO
/****** Object:  Table [dbo].[DOC_LETTEROF_REQUEST]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_LETTEROF_REQUEST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_LETTEROF_REQUEST](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[report_title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[messers] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[attention] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fax] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[req_days] [numeric](18, 0) NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[etd] [datetime] NULL,
	[bl_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[period] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[detention_det] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comp_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_20] [numeric](10, 0) NULL,
	[cont_40] [numeric](10, 0) NULL,
	[cont_45] [numeric](10, 0) NULL,
	[iso] [numeric](10, 0) NULL,
	[create_dt] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_LETTEROF_REQUEST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_LETTEROF_REQUEST] TO [public] AS [dbo]
GO
