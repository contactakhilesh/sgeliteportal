USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_HISTORY]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_HISTORY]
GO
/****** Object:  Table [dbo].[DOC_HISTORY]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_HISTORY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_HISTORY](
	[doc_seq_no] [numeric](18, 0) NOT NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[job_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[job_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[edoc_set] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_HISTORY] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_HISTORY] TO [public] AS [dbo]
GO
