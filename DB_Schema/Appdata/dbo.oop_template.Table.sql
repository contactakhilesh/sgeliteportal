USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [oop_template](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[batch_id] [numeric](18, 0) NOT NULL,
	[user_id] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[cust_ord_no] [varchar](40) NOT NULL,
	[chgcode_id] [varchar](10) NOT NULL,
	[currency_id] [varchar](10) NOT NULL,
	[amount] [decimal](11, 2) NOT NULL,
	[doc_no] [varchar](20) NOT NULL,
	[doc_date] [varchar](20) NULL,
	[vendor_id] [varchar](10) NOT NULL,
	[ispayablecreated] [char](1) NOT NULL,
	[filename] [varchar](100) NULL,
	[remarks] [varchar](255) NULL,
	[internal_remarks] [varchar](255) NULL,
	[withGST] [char](1) NULL,
 CONSTRAINT [PK_oop_template] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
