USE [AMERICA]
GO
/****** Object:  Table [dbo].[XML_DOC_PRODUCTS]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XML_DOC_PRODUCTS](
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
	[currency_id] [varchar](10) NULL,
 CONSTRAINT [PK_XML_DOC_PRODUCTS] PRIMARY KEY CLUSTERED 
(
	[MSQ_SEQ_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[XML_DOC_PRODUCTS] TO  SCHEMA OWNER 
GO
