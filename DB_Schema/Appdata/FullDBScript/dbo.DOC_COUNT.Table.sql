USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_COUNT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_COUNT]
GO
/****** Object:  Table [dbo].[DOC_COUNT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_COUNT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_COUNT](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_send_count] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_COUNT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_COUNT] TO [public] AS [dbo]
GO
