USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[laycan]') AND type in (N'U'))
ALTER TABLE [dbo].[laycan] DROP CONSTRAINT IF EXISTS [DF_laycan_created_dt]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[laycan]') AND type in (N'U'))
ALTER TABLE [dbo].[laycan] DROP CONSTRAINT IF EXISTS [DF_laycan_type]
GO
/****** Object:  Table [dbo].[laycan]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[laycan]
GO
/****** Object:  Table [dbo].[laycan]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[laycan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[laycan](
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[export_n_hd] [numeric](18, 0) NOT NULL,
	[export_n_dt] [numeric](18, 0) NOT NULL,
	[ex] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[per] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[surveyor] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[type] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_laycan] PRIMARY KEY CLUSTERED 
(
	[export_n_hd] ASC,
	[export_n_dt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[laycan] TO  SCHEMA OWNER 
GO
