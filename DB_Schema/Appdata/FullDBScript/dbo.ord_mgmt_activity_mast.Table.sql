USE [appdata]
GO
/****** Object:  Index [ord_mgmt_activity_mast_idx]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [ord_mgmt_activity_mast_idx] ON [dbo].[ord_mgmt_activity_mast]
GO
/****** Object:  Table [dbo].[ord_mgmt_activity_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[ord_mgmt_activity_mast]
GO
/****** Object:  Table [dbo].[ord_mgmt_activity_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ord_mgmt_activity_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ord_mgmt_activity_mast](
	[parentAcctid] [numeric](10, 0) NOT NULL,
	[business_unit] [numeric](10, 0) NOT NULL,
	[seq_no] [numeric](10, 0) NOT NULL,
	[activity_desc] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[team] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[screen_related] [numeric](10, 0) NULL,
	[details] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[attachment_link] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[manual_update] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[job_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ord_mgmt_activity_mast] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[ord_mgmt_activity_mast] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ord_mgmt_activity_mast_idx]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ord_mgmt_activity_mast]') AND name = N'ord_mgmt_activity_mast_idx')
CREATE NONCLUSTERED INDEX [ord_mgmt_activity_mast_idx] ON [dbo].[ord_mgmt_activity_mast]
(
	[parentAcctid] ASC,
	[business_unit] ASC,
	[seq_no] ASC,
	[job_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
