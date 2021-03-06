USE [appdata]
GO
/****** Object:  Table [dbo].[export_product_del]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[export_product_del]
GO
/****** Object:  Table [dbo].[export_product_del]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[export_product_del]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[export_product_del](
	[PROD_EXPORT_N] [numeric](10, 0) NOT NULL,
	[PROD_LINE_N] [numeric](10, 0) NOT NULL,
	[PROD_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PROD_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROD_DESC] [varchar](2500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HARMONIZE_CODE] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PACK_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIT_PRICE] [numeric](13, 5) NULL,
	[UNIT_PRICE_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COUNTRY_ORIGIN] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MANU_ADDR_CODE] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_of_pallets] [numeric](10, 0) NULL,
	[net_wt_pallet] [decimal](12, 3) NULL,
	[gross_wt_pallet] [decimal](12, 3) NULL,
	[create_prod_dt] [datetime] NULL,
	[plant_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[grade] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[suffix] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CustPackCode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HD_FLAG] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[INVOICE_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_dt] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[export_product_del] TO  SCHEMA OWNER 
GO
