USE [appdata]
GO
/****** Object:  Table [dbo].[DHL_BILLING_DETAILS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DHL_BILLING_DETAILS]
GO
/****** Object:  Table [dbo].[DHL_BILLING_DETAILS]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHL_BILLING_DETAILS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHL_BILLING_DETAILS](
	[bill_acct_no] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_no] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_date] [datetime] NULL,
	[shipper_ref] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_name] [varchar](120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender] [varchar](120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_addr] [varchar](120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[recipient_name] [varchar](120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[reciever] [varchar](120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[reciever_addr] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipment_date] [datetime] NULL,
	[origin_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[origin_country_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[airway_bill_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[destination_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[destination_country_name] [varchar](120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[product_code] [varchar](120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pieces] [numeric](4, 0) NULL,
	[weight] [decimal](9, 2) NULL,
	[weight_charge] [decimal](9, 2) NULL,
	[fuel_surcharge] [decimal](9, 2) NULL,
	[tax_vat] [decimal](9, 2) NULL,
	[extra_charge] [decimal](9, 2) NULL,
	[sub_amount] [decimal](9, 2) NULL,
	[currency] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DHL_BILLING_DETAILS] TO  SCHEMA OWNER 
GO
