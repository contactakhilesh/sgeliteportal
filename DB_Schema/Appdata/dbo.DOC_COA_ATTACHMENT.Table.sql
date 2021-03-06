USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_COA_ATTACHMENT](
	[doc_head_no] [varchar](30) NOT NULL,
	[file_nm] [varchar](200) NULL,
	[act_file_nm] [varchar](200) NULL,
 CONSTRAINT [PK_DOC_COA_ATTACHMENT] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
