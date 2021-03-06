USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_LAST_COMMENT]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_LAST_COMMENT] DROP CONSTRAINT IF EXISTS [DF_DOC_LAST_COMMENT_line_no]
GO
/****** Object:  Table [dbo].[DOC_LAST_COMMENT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_LAST_COMMENT]
GO
/****** Object:  Table [dbo].[DOC_LAST_COMMENT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_LAST_COMMENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_LAST_COMMENT](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[last_comment] [varchar](5000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[line_no] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_DOC_LAST_COMMENT] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_LAST_COMMENT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_LAST_COMMENT] TO [public] AS [dbo]
GO
