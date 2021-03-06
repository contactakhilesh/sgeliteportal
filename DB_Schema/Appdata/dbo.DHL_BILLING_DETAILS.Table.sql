USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DHL_BILLING_DETAILS](
	[bill_acct_no] [varchar](12) NULL,
	[invoice_no] [varchar](15) NULL,
	[invoice_date] [datetime] NULL,
	[shipper_ref] [varchar](20) NULL,
	[shipper_name] [varchar](120) NULL,
	[sender] [varchar](120) NULL,
	[sender_addr] [varchar](120) NULL,
	[recipient_name] [varchar](120) NULL,
	[reciever] [varchar](120) NULL,
	[reciever_addr] [varchar](250) NULL,
	[shipment_date] [datetime] NULL,
	[origin_code] [varchar](50) NULL,
	[origin_country_name] [varchar](50) NULL,
	[airway_bill_no] [varchar](20) NULL,
	[destination_code] [varchar](50) NULL,
	[destination_country_name] [varchar](120) NULL,
	[product_code] [varchar](120) NULL,
	[pieces] [numeric](4, 0) NULL,
	[weight] [decimal](9, 2) NULL,
	[weight_charge] [decimal](9, 2) NULL,
	[fuel_surcharge] [decimal](9, 2) NULL,
	[tax_vat] [decimal](9, 2) NULL,
	[extra_charge] [decimal](9, 2) NULL,
	[sub_amount] [decimal](9, 2) NULL,
	[currency] [varchar](50) NULL
) ON [PRIMARY]

GO
