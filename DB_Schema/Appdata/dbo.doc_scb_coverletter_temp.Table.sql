USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [doc_scb_coverletter_temp](
	[doc_head_no] [varchar](30) NOT NULL,
	[line_no] [numeric](10, 0) NOT NULL,
	[doc_name] [varchar](150) NULL,
	[copy1] [varchar](20) NULL,
	[duplicate1] [varchar](20) NULL,
 CONSTRAINT [PK_doc_scb_coverletter_temp] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
