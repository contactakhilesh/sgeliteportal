USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[loading_summary]') AND type in (N'U'))
ALTER TABLE [dbo].[loading_summary] DROP CONSTRAINT IF EXISTS [DF__loading_s__marin__63F9955D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[loading_summary]') AND type in (N'U'))
ALTER TABLE [dbo].[loading_summary] DROP CONSTRAINT IF EXISTS [DF_loading_summary_created_dt]
GO
/****** Object:  Table [dbo].[loading_summary]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[loading_summary]
GO
/****** Object:  Table [dbo].[loading_summary]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[loading_summary]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[loading_summary](
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[export_n_hd] [numeric](18, 0) NOT NULL,
	[export_n_dt] [numeric](18, 0) NOT NULL,
	[tare_wt] [numeric](18, 3) NULL,
	[dnno] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[unno] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipping_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipment_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[portload_dt] [datetime] NULL,
	[portload_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NOT NULL,
	[marine_pollutant] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_loading_summary] PRIMARY KEY CLUSTERED 
(
	[export_n_hd] ASC,
	[export_n_dt] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[loading_summary] TO  SCHEMA OWNER 
GO
