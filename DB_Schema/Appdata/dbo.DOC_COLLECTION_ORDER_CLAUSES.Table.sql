USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_COLLECTION_ORDER_CLAUSES](
	[line_no] [int] NOT NULL,
	[col_desc] [varchar](500) NULL,
 CONSTRAINT [PK_DOC_COLLECTION_ORDER_CLAUSES] PRIMARY KEY CLUSTERED 
(
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
