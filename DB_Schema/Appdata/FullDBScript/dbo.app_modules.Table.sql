USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[app_modules]') AND type in (N'U'))
ALTER TABLE [dbo].[app_modules] DROP CONSTRAINT IF EXISTS [DF__app_modul__isfor__41CF65E2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[app_modules]') AND type in (N'U'))
ALTER TABLE [dbo].[app_modules] DROP CONSTRAINT IF EXISTS [DF__app_modul__appli__40DB41A9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[app_modules]') AND type in (N'U'))
ALTER TABLE [dbo].[app_modules] DROP CONSTRAINT IF EXISTS [DF_app_modules_created_dt]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[app_modules]') AND type in (N'U'))
ALTER TABLE [dbo].[app_modules] DROP CONSTRAINT IF EXISTS [DF_app_modules_hide]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[app_modules]') AND type in (N'U'))
ALTER TABLE [dbo].[app_modules] DROP CONSTRAINT IF EXISTS [DF_app_modules_mod_order_no]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[app_modules]') AND type in (N'U'))
ALTER TABLE [dbo].[app_modules] DROP CONSTRAINT IF EXISTS [DF_app_modules_grp_order_no]
GO
/****** Object:  Table [dbo].[app_modules]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[app_modules]
GO
/****** Object:  Table [dbo].[app_modules]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[app_modules]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[app_modules](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[group_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[grp_order_no] [int] NOT NULL,
	[module_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[mod_order_no] [int] NOT NULL,
	[hide] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[application] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[isforhistory] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[window] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[datawindow] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_app_modules] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[app_modules] TO  SCHEMA OWNER 
GO
