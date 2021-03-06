USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [doc_inv_sabic_calculate](
	[doc_head_no] [varchar](30) NOT NULL,
	[description] [varchar](100) NULL,
	[line_no] [numeric](10, 0) NOT NULL,
	[net_wt] [decimal](18, 3) NULL,
	[price] [decimal](18, 2) NULL,
	[total] [decimal](18, 2) NULL,
 CONSTRAINT [PK_doc_inv_sabic_calculate] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
