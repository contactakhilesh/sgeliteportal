USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_SEND_US_QUEUE]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_SEND_US_QUEUE] DROP CONSTRAINT IF EXISTS [DF_DOC_SEND_US_QUEUE_create_ind]
GO
/****** Object:  Table [dbo].[DOC_SEND_US_QUEUE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_SEND_US_QUEUE]
GO
/****** Object:  Table [dbo].[DOC_SEND_US_QUEUE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_SEND_US_QUEUE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_SEND_US_QUEUE](
	[doc_queue_no] [numeric](18, 0) NOT NULL,
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_short_name] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_file_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_date] [datetime] NULL,
	[created_by] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [numeric](18, 0) NULL,
 CONSTRAINT [PK_DOC_SEND_US_QUEUE] PRIMARY KEY CLUSTERED 
(
	[doc_queue_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_SEND_US_QUEUE] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_SEND_US_QUEUE] TO [public] AS [dbo]
GO
