USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PRODUCT_DESC_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[line_no] [varchar](10) NOT NULL,
	[prod_id] [varchar](20) NOT NULL,
	[prod_name] [varchar](50) NULL,
	[prod_desc] [varchar](300) NULL,
 CONSTRAINT [PK_DOC_PRODUCT_DESC_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC,
	[prod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
