USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_TRANS_PARTY_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[cust_id] [varchar](15) NOT NULL,
	[line_no] [int] NOT NULL,
	[cust_name] [varchar](500) NULL,
	[add1] [varchar](50) NULL,
	[add2] [varchar](50) NULL,
	[add3] [varchar](50) NULL,
	[add4] [varchar](50) NULL,
	[add5] [varchar](50) NULL,
	[remarks] [varchar](500) NULL,
	[remarks1] [varchar](500) NULL,
	[courier_code] [varchar](20) NULL,
	[destination] [varchar](50) NULL,
	[awb_date] [datetime] NULL,
	[dhl_receivers_id] [numeric](18, 0) NULL,
	[party_email] [varchar](500) NULL,
 CONSTRAINT [PK_DOC_TRANS_PARTY_DET] PRIMARY KEY NONCLUSTERED 
(
	[doc_head_no] ASC,
	[cust_id] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
