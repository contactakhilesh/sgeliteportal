USE [appdata]
GO
/****** Object:  Index [elc_logs_idx2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [elc_logs_idx2] ON [dbo].[eLC_logs]
GO
/****** Object:  Index [elc_logs_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [elc_logs_idx1] ON [dbo].[eLC_logs]
GO
/****** Object:  Table [dbo].[eLC_logs]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[eLC_logs]
GO
/****** Object:  Table [dbo].[eLC_logs]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eLC_logs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[eLC_logs](
	[msg_seq_n] [numeric](18, 0) NOT NULL,
	[msg_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lcNo] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref_1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[job_n] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[apply_d] [datetime] NULL,
	[scEnv] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[eLC_logs] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[eLC_logs] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [elc_logs_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[eLC_logs]') AND name = N'elc_logs_idx1')
CREATE NONCLUSTERED INDEX [elc_logs_idx1] ON [dbo].[eLC_logs]
(
	[lcNo] ASC,
	[ref_1] ASC,
	[job_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [elc_logs_idx2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[eLC_logs]') AND name = N'elc_logs_idx2')
CREATE NONCLUSTERED INDEX [elc_logs_idx2] ON [dbo].[eLC_logs]
(
	[lcNo] ASC,
	[msg_seq_n] ASC,
	[msg_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
