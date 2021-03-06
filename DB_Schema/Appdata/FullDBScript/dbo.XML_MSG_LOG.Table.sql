USE [appdata]
GO
/****** Object:  Table [dbo].[XML_MSG_LOG]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[XML_MSG_LOG]
GO
/****** Object:  Table [dbo].[XML_MSG_LOG]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XML_MSG_LOG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XML_MSG_LOG](
	[log_seq_n] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[msg_seq_n] [numeric](10, 0) NULL,
	[msg_dt] [datetime] NOT NULL,
	[msg_log] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[msg_log_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[msg_file] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_XML_MSG_LOG] PRIMARY KEY CLUSTERED 
(
	[log_seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[XML_MSG_LOG] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[XML_MSG_LOG] TO [public] AS [dbo]
GO
