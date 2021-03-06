USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_GROUP_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_GROUP_DET]
GO
/****** Object:  Table [dbo].[DOC_GROUP_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_GROUP_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_GROUP_DET](
	[doc_group_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[doc_group_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_group_link] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_short_name] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_template] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_GROUP_DET] PRIMARY KEY CLUSTERED 
(
	[doc_group_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_GROUP_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_GROUP_DET] TO [public] AS [dbo]
GO
