USE [appdata]
GO
/****** Object:  Trigger [postupdate_opschart]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_opschart]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[opschart]') AND type in (N'U'))
ALTER TABLE [dbo].[opschart] DROP CONSTRAINT IF EXISTS [DF__opschart__create__6ECC298B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[opschart]') AND type in (N'U'))
ALTER TABLE [dbo].[opschart] DROP CONSTRAINT IF EXISTS [DF_opschart_status]
GO
/****** Object:  Table [dbo].[opschart]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[opschart]
GO
/****** Object:  Table [dbo].[opschart]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[opschart]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[opschart](
	[export_n] [numeric](10, 0) NOT NULL,
	[line_n] [numeric](10, 0) NOT NULL,
	[exim_ind] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[status] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[laycan_dt] [datetime] NULL,
	[FFI] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ATP] [datetime] NULL,
	[MAD] [datetime] NULL,
	[location_id] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_20] [int] NULL,
	[cont_40] [int] NULL,
	[pack_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_dt] [datetime] NOT NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_opschart] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC,
	[line_n] ASC,
	[exim_ind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[opschart] TO  SCHEMA OWNER 
GO
