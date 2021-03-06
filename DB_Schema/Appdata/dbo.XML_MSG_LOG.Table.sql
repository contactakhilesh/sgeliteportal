USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_MSG_LOG](
	[log_seq_n] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[msg_seq_n] [numeric](10, 0) NULL,
	[msg_dt] [datetime] NOT NULL,
	[msg_log] [varchar](255) NOT NULL,
	[msg_log_type] [varchar](10) NULL,
	[msg_file] [varchar](100) NULL,
 CONSTRAINT [PK_XML_MSG_LOG] PRIMARY KEY CLUSTERED 
(
	[log_seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
