USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_conn_13Apr2017](
	[vendor_id] [varchar](10) NOT NULL,
	[carrier_name] [varchar](70) NOT NULL,
	[carrier_conn] [varchar](50) NOT NULL,
	[env] [varchar](50) NULL,
	[scac] [varchar](50) NOT NULL,
	[carrier_msg315] [varchar](50) NULL,
	[contract_ref] [varchar](30) NULL,
	[FOB_CARRIER_CONN] [varchar](50) NULL,
	[cust_id] [varchar](255) NULL
) ON [PRIMARY]

GO
