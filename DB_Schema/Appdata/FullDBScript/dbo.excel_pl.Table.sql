USE [appdata]
GO
/****** Object:  Trigger [post_insert_excel_pl]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[post_insert_excel_pl]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_pl]') AND type in (N'U'))
ALTER TABLE [dbo].[excel_pl] DROP CONSTRAINT IF EXISTS [DF__excel_pl__crt_dt__713E81E2]
GO
/****** Object:  Index [excel_pl_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [excel_pl_idx1] ON [dbo].[excel_pl]
GO
/****** Object:  Table [dbo].[excel_pl]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[excel_pl]
GO
/****** Object:  Table [dbo].[excel_pl]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[excel_pl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[excel_pl](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[mod_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mod_dt] [datetime] NULL,
	[crt_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[crt_dt] [datetime] NOT NULL,
	[batch_id] [numeric](10, 0) NULL,
	[filename] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_ord_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[po_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[etd] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pod] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_excel_pl] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[excel_pl] TO  SCHEMA OWNER 
GO
/****** Object:  Index [excel_pl_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[excel_pl]') AND name = N'excel_pl_idx1')
CREATE NONCLUSTERED INDEX [excel_pl_idx1] ON [dbo].[excel_pl]
(
	[batch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
