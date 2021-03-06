USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_CUST_MAP](
	[seq_n] [decimal](18, 0) NOT NULL,
	[from_cust_id] [varchar](10) NULL,
	[from_cust_name] [varchar](100) NULL,
	[to_cust_id] [varchar](10) NULL,
	[to_cust_name] [varchar](100) NULL,
	[from_office_code] [varchar](10) NULL,
	[to_office_code] [varchar](10) NULL,
	[product_name] [varchar](200) NULL,
	[remarks] [varchar](50) NULL
) ON [PRIMARY]

GO
