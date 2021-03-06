USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_DOC_PRODUCTS_2016MAY11_BACKUP](
	[MSQ_SEQ_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[PRODUCT_ID] [varchar](20) NULL,
	[PRODUCT_NAME] [varchar](50) NULL,
	[NET_WT] [decimal](11, 3) NULL,
	[NET_WT_UOM] [varchar](10) NULL,
	[GROSS_WT] [decimal](11, 3) NULL,
	[GROSS_WT_UOM] [varchar](10) NULL,
	[TOT_VOL] [decimal](11, 3) NULL,
	[TOT_PACKAGE] [numeric](11, 2) NULL,
	[PACKAGE_TYPE] [varchar](10) NULL,
	[HEIGHT_UOM] [varchar](10) NULL,
	[WIDTH_UOM] [varchar](10) NULL,
	[LENGTH_UOM] [varchar](10) NULL,
	[HAZARD_IND] [varchar](10) NULL,
	[NO_CONT] [numeric](18, 0) NULL,
	[CONT_ISO_CODE] [varchar](10) NULL,
	[TOT_VOL_UOM] [varchar](18) NULL,
	[HS_CODE] [varchar](40) NULL,
	[LADING_DESC] [varchar](1000) NULL,
	[FOB_VALUE] [decimal](18, 2) NULL,
	[UNIT_PRICE] [decimal](11, 3) NULL,
	[UNIT_PRICE_UOM] [varchar](10) NULL,
	[MARKS1] [varchar](50) NULL,
	[MARKS2] [varchar](50) NULL,
	[MARKS3] [varchar](50) NULL,
	[MARKS4] [varchar](50) NULL,
	[MARKS5] [varchar](50) NULL,
	[CON_PO_N] [varchar](50) NULL,
	[CON_SHIP_ID] [varchar](50) NULL,
	[EXPORT_LIC_N] [varchar](50) NULL,
	[IDENTIFY_CODE] [varchar](50) NULL,
	[COUNTRY_CODE] [varchar](10) NULL,
	[PACK_CODE] [varchar](20) NULL,
	[PROD_LADING_Q] [numeric](18, 0) NULL,
	[HAZARD_TEXT] [varchar](2000) NULL,
	[HAZARD_CERT] [varchar](50) NULL,
	[LINE_ITEM_SEQ] [numeric](18, 0) NULL,
	[LIC_EFF] [varchar](10) NULL,
	[LIC_EXP] [varchar](10) NULL,
	[ALT_PROD_DESC] [varchar](100) NULL,
	[TOT_PRICE] [decimal](10, 2) NULL,
	[DELIVERY_NOTE_N] [varchar](20) NULL,
	[BATCH_N] [varchar](20) NULL,
	[currency_id] [varchar](10) NULL
) ON [PRIMARY]

GO
