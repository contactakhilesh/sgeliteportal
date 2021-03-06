USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_BILL_OF_EXCHANGE](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[invoice_no1] [varchar](20) NULL,
	[inv_dt1] [datetime] NULL,
	[usd1] [varchar](50) NULL,
	[tenor1] [varchar](50) NULL,
	[amount_words1] [varchar](500) NULL,
	[credit_no1] [varchar](20) NULL,
	[credit_dt1] [datetime] NULL,
	[issued_by1] [varchar](50) NULL,
	[to1] [varchar](80) NULL,
	[invoice_no2] [varchar](20) NULL,
	[inv_dt2] [datetime] NULL,
	[usd2] [varchar](50) NULL,
	[tenor2] [varchar](50) NULL,
	[amount_words2] [varchar](500) NULL,
	[credit_no2] [varchar](20) NULL,
	[credit_dt2] [datetime] NULL,
	[issued_by2] [varchar](50) NULL,
	[to2] [varchar](80) NULL,
	[signparty1] [varchar](80) NULL,
	[signparty2] [varchar](80) NULL,
 CONSTRAINT [PK_DOC_BILL_OF_EXCHANGE] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
