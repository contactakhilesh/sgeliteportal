USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_GROUP_DET](
	[doc_group_no] [varchar](20) NOT NULL,
	[doc_group_name] [varchar](100) NULL,
	[doc_group_link] [varchar](50) NULL,
	[doc_short_name] [varchar](5) NULL,
	[doc_template] [varchar](200) NULL,
 CONSTRAINT [PK_DOC_GROUP_DET] PRIMARY KEY CLUSTERED 
(
	[doc_group_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
