USE [appdata]
GO
/****** Object:  Index [permit_sent_auto_idx]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [permit_sent_auto_idx] ON [dbo].[permit_sent_auto]
GO
/****** Object:  Index [I_Export_n]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_Export_n] ON [dbo].[permit_sent_auto]
GO
/****** Object:  Table [dbo].[permit_sent_auto]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_sent_auto]
GO
/****** Object:  Table [dbo].[permit_sent_auto]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_sent_auto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_sent_auto](
	[export_n] [numeric](12, 0) NOT NULL,
	[userid] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[sent_d] [datetime] NOT NULL,
	[job_no] [varchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[error] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [pk_permit_sent_auto] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_sent_auto] TO  SCHEMA OWNER 
GO
/****** Object:  Index [I_Export_n]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[permit_sent_auto]') AND name = N'I_Export_n')
CREATE NONCLUSTERED INDEX [I_Export_n] ON [dbo].[permit_sent_auto]
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [permit_sent_auto_idx]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[permit_sent_auto]') AND name = N'permit_sent_auto_idx')
CREATE NONCLUSTERED INDEX [permit_sent_auto_idx] ON [dbo].[permit_sent_auto]
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
