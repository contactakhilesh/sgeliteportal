USE [appdata]
GO
/****** Object:  Table [dbo].[permit_sent_auto_error_log]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_sent_auto_error_log]
GO
/****** Object:  Table [dbo].[permit_sent_auto_error_log]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_sent_auto_error_log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_sent_auto_error_log](
	[export_n] [numeric](12, 0) NOT NULL,
	[userid] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[sent_d] [datetime] NOT NULL,
	[job_no] [varchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[error] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rowid] [numeric](20, 0) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_sent_auto_error_log] TO  SCHEMA OWNER 
GO
