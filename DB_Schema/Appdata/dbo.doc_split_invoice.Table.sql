USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [doc_split_invoice](
	[doc_head_no] [varchar](30) NOT NULL,
	[job_n] [numeric](10, 0) NULL,
	[line_no] [numeric](10, 0) NOT NULL,
	[ref_inv_amt] [decimal](18, 2) NULL,
	[inv_n] [varchar](20) NULL,
 CONSTRAINT [PK_doc_split_invoice] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
