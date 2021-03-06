USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_cost_statement_dtl_temp](
	[product_id] [varchar](20) NULL,
	[comp_name] [varchar](100) NULL,
	[technical_name] [varchar](100) NULL,
	[per] [numeric](10, 4) NULL,
	[validity] [datetime] NULL,
	[expiry] [datetime] NULL,
	[hs_code] [varchar](20) NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[cust_id] [varchar](10) NULL,
	[country] [varchar](20) NULL,
	[cert_type] [varchar](3) NULL,
 CONSTRAINT [pk_permit_cost_statement_dtl_temp] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
