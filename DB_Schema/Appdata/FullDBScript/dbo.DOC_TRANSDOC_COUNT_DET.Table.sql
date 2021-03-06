USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_TRANSDOC_COUNT_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_TRANSDOC_COUNT_DET]
GO
/****** Object:  Table [dbo].[DOC_TRANSDOC_COUNT_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_TRANSDOC_COUNT_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_TRANSDOC_COUNT_DET](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[line_no] [int] NOT NULL,
	[doc_id] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[doc_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_of_copies] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duplicate_copies] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_TRANSDOC_COUNT_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC,
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_TRANSDOC_COUNT_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_TRANSDOC_COUNT_DET] TO [public] AS [dbo]
GO
