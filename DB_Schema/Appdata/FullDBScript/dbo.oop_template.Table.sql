USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oop_template]') AND type in (N'U'))
ALTER TABLE [dbo].[oop_template] DROP CONSTRAINT IF EXISTS [DF_oop_template_withGST]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oop_template]') AND type in (N'U'))
ALTER TABLE [dbo].[oop_template] DROP CONSTRAINT IF EXISTS [DF_oop_template_ispayablecreated]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oop_template]') AND type in (N'U'))
ALTER TABLE [dbo].[oop_template] DROP CONSTRAINT IF EXISTS [DF_oop_template_amount]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oop_template]') AND type in (N'U'))
ALTER TABLE [dbo].[oop_template] DROP CONSTRAINT IF EXISTS [DF_oop_template_created_dt]
GO
/****** Object:  Index [IX3_oop_template]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX3_oop_template] ON [dbo].[oop_template]
GO
/****** Object:  Index [IX2_oop_template]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX2_oop_template] ON [dbo].[oop_template]
GO
/****** Object:  Index [IX1_oop_template]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX1_oop_template] ON [dbo].[oop_template]
GO
/****** Object:  Table [dbo].[oop_template]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[oop_template]
GO
/****** Object:  Table [dbo].[oop_template]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oop_template]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[oop_template](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[batch_id] [numeric](18, 0) NOT NULL,
	[user_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[cust_ord_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[chgcode_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[currency_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[amount] [decimal](11, 2) NOT NULL,
	[doc_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[doc_date] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vendor_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ispayablecreated] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[filename] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[internal_remarks] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[withGST] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_oop_template] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[oop_template] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX1_oop_template]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[oop_template]') AND name = N'IX1_oop_template')
CREATE NONCLUSTERED INDEX [IX1_oop_template] ON [dbo].[oop_template]
(
	[batch_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX2_oop_template]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[oop_template]') AND name = N'IX2_oop_template')
CREATE NONCLUSTERED INDEX [IX2_oop_template] ON [dbo].[oop_template]
(
	[batch_id] ASC,
	[user_id] ASC,
	[cust_ord_no] ASC,
	[vendor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX3_oop_template]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[oop_template]') AND name = N'IX3_oop_template')
CREATE NONCLUSTERED INDEX [IX3_oop_template] ON [dbo].[oop_template]
(
	[batch_id] ASC,
	[user_id] ASC,
	[cust_ord_no] ASC,
	[vendor_id] ASC,
	[doc_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
