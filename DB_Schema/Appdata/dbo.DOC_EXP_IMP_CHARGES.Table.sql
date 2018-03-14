USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_EXP_IMP_CHARGES](
	[doc_head_no] [varchar](30) NOT NULL,
	[report_title] [varchar](200) NULL,
	[ref_no] [varchar](50) NULL,
 CONSTRAINT [PK_DOC_EXP_IMP_CHARGES] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
