USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_FIRST_COMMENT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_FIRST_COMMENT]
GO
/****** Object:  Table [dbo].[DOC_FIRST_COMMENT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_FIRST_COMMENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_FIRST_COMMENT](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[first_comment] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_FIRST_COMMENT] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_FIRST_COMMENT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_FIRST_COMMENT] TO [public] AS [dbo]
GO
