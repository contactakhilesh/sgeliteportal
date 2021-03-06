USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oop_template_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[oop_template_v3] DROP CONSTRAINT IF EXISTS [DF_oop_template_v3_withGST]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oop_template_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[oop_template_v3] DROP CONSTRAINT IF EXISTS [DF_oop_template_v3_ispayablecreated]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oop_template_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[oop_template_v3] DROP CONSTRAINT IF EXISTS [DF_oop_template_v3_amount]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oop_template_v3]') AND type in (N'U'))
ALTER TABLE [dbo].[oop_template_v3] DROP CONSTRAINT IF EXISTS [DF_oop_template_v3_created_dt]
GO
/****** Object:  Table [dbo].[oop_template_v3]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[oop_template_v3]
GO
/****** Object:  Table [dbo].[oop_template_v3]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oop_template_v3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[oop_template_v3](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[batch_id] [numeric](18, 0) NOT NULL,
	[user_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[po_n] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
	[export] [numeric](18, 0) NULL,
	[export_ref_n] [numeric](18, 0) NULL,
 CONSTRAINT [PK_oop_template_v3] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[oop_template_v3] TO  SCHEMA OWNER 
GO
GRANT DELETE ON [dbo].[oop_template_v3] TO [public] AS [dbo]
GO
GRANT INSERT ON [dbo].[oop_template_v3] TO [public] AS [dbo]
GO
GRANT SELECT ON [dbo].[oop_template_v3] TO [public] AS [dbo]
GO
GRANT UPDATE ON [dbo].[oop_template_v3] TO [public] AS [dbo]
GO
