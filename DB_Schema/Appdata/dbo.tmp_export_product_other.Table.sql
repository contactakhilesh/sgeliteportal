USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_export_product_other](
	[PROD_EXPORT_N] [numeric](10, 0) NOT NULL,
	[PROD_LINE_N] [numeric](10, 0) NOT NULL,
	[PROD_ID] [varchar](20) NOT NULL,
	[PROD_NAME] [varchar](50) NULL,
	[PROD_DESC] [varchar](300) NULL,
	[HARMONIZE_CODE] [varchar](250) NULL,
	[PACK_TYPE] [varchar](20) NULL,
	[UNIT_PRICE] [numeric](11, 3) NULL,
	[UNIT_PRICE_UOM] [varchar](10) NULL,
	[CURRENCY_ID] [varchar](10) NULL
) ON [PRIMARY]

GO
