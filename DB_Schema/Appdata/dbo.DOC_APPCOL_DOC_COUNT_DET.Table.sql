USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_APPCOL_DOC_COUNT_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[line_no] [int] NOT NULL,
	[doc_id] [varchar](15) NOT NULL,
	[doc_name] [varchar](200) NOT NULL,
	[no_of_copies] [varchar](5) NULL,
	[duplicate_copies] [varchar](50) NULL,
 CONSTRAINT [PK_DOC_APPCOL_DOC_COUNT_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC,
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
