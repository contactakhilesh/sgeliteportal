USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_INVOICE_PROFORMA_PROD_DETAIL_SABIC](
	[DOC_HEAD_NO] [varchar](30) NOT NULL,
	[SCC_REF_NO] [varchar](20) NULL,
	[SCC_REF_TYPE] [varchar](20) NULL,
	[PROD_NAME] [varchar](60) NULL,
	[NET_WT] [numeric](17, 3) NULL,
	[UNIT_PRICE] [numeric](17, 2) NULL,
	[TOT_AMOUNT] [numeric](17, 2) NULL,
	[GOODS_DESC] [varchar](500) NULL,
	[TOT_PACKAGES] [numeric](10, 0) NULL,
	[PACK_TYPE] [varchar](10) NULL,
	[WT_UOM] [varchar](5) NULL,
	[CURRENCY_CD] [varchar](5) NULL
) ON [PRIMARY]

GO
