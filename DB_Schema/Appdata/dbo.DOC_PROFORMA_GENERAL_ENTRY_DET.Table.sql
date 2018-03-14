USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PROFORMA_GENERAL_ENTRY_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[Terms] [varchar](200) NULL,
	[PACKAGE_TYPE] [varchar](15) NOT NULL,
 CONSTRAINT [PK_DOC_PROFORMA_GENERAL_ENTRY_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
