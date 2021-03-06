USE [appdata]
GO
/****** Object:  Trigger [postinsert_xml_doc_products_cron_eoc]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_xml_doc_products_cron_eoc]
GO
/****** Object:  Index [idx1_xml_doc_products1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [idx1_xml_doc_products1] ON [dbo].[XML_DOC_PRODUCTS]
GO
/****** Object:  Index [idx1_xml_doc_products]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [idx1_xml_doc_products] ON [dbo].[XML_DOC_PRODUCTS]
GO
/****** Object:  Table [dbo].[XML_DOC_PRODUCTS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[XML_DOC_PRODUCTS]
GO
/****** Object:  Table [dbo].[XML_DOC_PRODUCTS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_PRODUCTS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XML_DOC_PRODUCTS](
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
	[currency_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_XML_DOC_PRODUCTS] PRIMARY KEY CLUSTERED 
(
	[MSQ_SEQ_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[XML_DOC_PRODUCTS] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[XML_DOC_PRODUCTS] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx1_xml_doc_products]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_PRODUCTS]') AND name = N'idx1_xml_doc_products')
CREATE UNIQUE NONCLUSTERED INDEX [idx1_xml_doc_products] ON [dbo].[XML_DOC_PRODUCTS]
(
	[MSQ_SEQ_N] ASC,
	[LINE_N] ASC,
	[PRODUCT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx1_xml_doc_products1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_PRODUCTS]') AND name = N'idx1_xml_doc_products1')
CREATE NONCLUSTERED INDEX [idx1_xml_doc_products1] ON [dbo].[XML_DOC_PRODUCTS]
(
	[MSQ_SEQ_N] ASC,
	[PRODUCT_ID] ASC,
	[PRODUCT_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
