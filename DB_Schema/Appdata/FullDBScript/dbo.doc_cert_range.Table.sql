USE [appdata]
GO
/****** Object:  Trigger [trg_update_on_update_column_drjobno]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_update_on_update_column_drjobno]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_cert_range]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_cert_range] DROP CONSTRAINT IF EXISTS [DF__doc_cert___isuse__2AB6F660]
GO
/****** Object:  Index [doc_cert_range_idx4]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [doc_cert_range_idx4] ON [dbo].[doc_cert_range]
GO
/****** Object:  Index [doc_cert_range_idx3]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [doc_cert_range_idx3] ON [dbo].[doc_cert_range]
GO
/****** Object:  Index [doc_cert_range_idx2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [doc_cert_range_idx2] ON [dbo].[doc_cert_range]
GO
/****** Object:  Index [doc_cert_range_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [doc_cert_range_idx1] ON [dbo].[doc_cert_range]
GO
/****** Object:  Table [dbo].[doc_cert_range]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[doc_cert_range]
GO
/****** Object:  Table [dbo].[doc_cert_range]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_cert_range]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[doc_cert_range](
	[drid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[drno] [numeric](10, 0) NULL,
	[drinsuranceno] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drcustid] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drbatchid] [numeric](21, 0) NULL,
	[druserid] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drstatus] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drjobno] [numeric](10, 0) NULL,
	[isused] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ENVIRONMENT] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_doc_cert_range] PRIMARY KEY CLUSTERED 
(
	[drid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[doc_cert_range] TO  SCHEMA OWNER 
GO
GRANT DELETE ON [dbo].[doc_cert_range] TO [public] AS [dbo]
GO
GRANT INSERT ON [dbo].[doc_cert_range] TO [public] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[doc_cert_range] TO [public] AS [dbo]
GO
GRANT SELECT ON [dbo].[doc_cert_range] TO [public] AS [dbo]
GO
GRANT UPDATE ON [dbo].[doc_cert_range] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [doc_cert_range_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[doc_cert_range]') AND name = N'doc_cert_range_idx1')
CREATE NONCLUSTERED INDEX [doc_cert_range_idx1] ON [dbo].[doc_cert_range]
(
	[drbatchid] ASC,
	[druserid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [doc_cert_range_idx2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[doc_cert_range]') AND name = N'doc_cert_range_idx2')
CREATE NONCLUSTERED INDEX [doc_cert_range_idx2] ON [dbo].[doc_cert_range]
(
	[drcustid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [doc_cert_range_idx3]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[doc_cert_range]') AND name = N'doc_cert_range_idx3')
CREATE NONCLUSTERED INDEX [doc_cert_range_idx3] ON [dbo].[doc_cert_range]
(
	[drno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [doc_cert_range_idx4]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[doc_cert_range]') AND name = N'doc_cert_range_idx4')
CREATE NONCLUSTERED INDEX [doc_cert_range_idx4] ON [dbo].[doc_cert_range]
(
	[drbatchid] ASC,
	[druserid] ASC,
	[drstatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
