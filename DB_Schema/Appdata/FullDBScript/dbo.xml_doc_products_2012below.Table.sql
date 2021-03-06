USE [appdata]
GO
/****** Object:  Table [dbo].[xml_doc_products_2012below]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[xml_doc_products_2012below]
GO
/****** Object:  Table [dbo].[xml_doc_products_2012below]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[xml_doc_products_2012below]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[xml_doc_products_2012below](
	[MSQ_SEQ_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[PRODUCT_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PRODUCT_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NET_WT] [decimal](11, 3) NULL,
	[NET_WT_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GROSS_WT] [decimal](11, 3) NULL,
	[GROSS_WT_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOT_VOL] [decimal](11, 3) NULL,
	[TOT_PACKAGE] [numeric](11, 2) NULL,
	[PACKAGE_TYPE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HEIGHT_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WIDTH_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LENGTH_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HAZARD_IND] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NO_CONT] [numeric](18, 0) NULL,
	[CONT_ISO_CODE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOT_VOL_UOM] [varchar](18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HS_CODE] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LADING_DESC] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FOB_VALUE] [decimal](18, 2) NULL,
	[UNIT_PRICE] [decimal](11, 3) NULL,
	[UNIT_PRICE_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MARKS1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MARKS2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MARKS3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MARKS4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MARKS5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CON_PO_N] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CON_SHIP_ID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EXPORT_LIC_N] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IDENTIFY_CODE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COUNTRY_CODE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PACK_CODE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROD_LADING_Q] [numeric](18, 0) NULL,
	[HAZARD_TEXT] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HAZARD_CERT] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_ITEM_SEQ] [numeric](18, 0) NULL,
	[LIC_EFF] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LIC_EXP] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ALT_PROD_DESC] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOT_PRICE] [decimal](10, 2) NULL,
	[DELIVERY_NOTE_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BATCH_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[currency_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[xml_doc_products_2012below] TO  SCHEMA OWNER 
GO
