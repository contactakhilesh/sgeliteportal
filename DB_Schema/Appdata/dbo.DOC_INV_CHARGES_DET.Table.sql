USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_INV_CHARGES_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[sub_tot] [decimal](12, 3) NULL,
	[sub_tot_desc] [varchar](500) NULL,
	[gst_per] [int] NULL,
	[gst_amt] [decimal](12, 3) NULL,
	[gst_desc] [varchar](500) NULL,
	[total] [decimal](12, 3) NULL,
	[price_term] [varchar](70) NULL,
	[price_term_country] [varchar](100) NULL,
	[amt_words] [varchar](500) NULL,
	[price_term_port] [varchar](80) NULL,
 CONSTRAINT [PK_DOC_INV_CHARGES_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
