USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INSURANCE_BATCH](
	[export_n] [numeric](10, 0) NULL,
	[cert_n] [varchar](20) NULL,
	[cust_id] [varchar](10) NOT NULL,
	[cust_name] [varchar](70) NOT NULL,
	[user_id] [varchar](50) NULL,
	[issue_date] [datetime] NULL,
	[doc_head_no] [varchar](30) NOT NULL,
	[cust_ord_no] [varchar](40) NULL
) ON [PRIMARY]

GO
