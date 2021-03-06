USE [AMERICA]
GO
/****** Object:  Table [dbo].[INVOICE_PROFORMA_DETAILS]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVOICE_PROFORMA_DETAILS](
	[DOC_HEAD_NO] [varchar](30) NOT NULL,
	[SCC_REF_NO] [varchar](20) NULL,
	[SCC_REF_TYPE] [varchar](20) NULL,
	[DOC_TITLE] [varchar](200) NULL,
	[DOC_CREATION_DT] [datetime] NULL,
	[INVOICE_NO] [varchar](100) NULL,
	[INVOICE_DATE] [datetime] NULL,
	[SHIPPER_REFERENCE_NO] [varchar](50) NULL,
	[ELITE_REF_NO] [varchar](80) NULL,
	[PLACE_OF_RECEIPT] [varchar](40) NULL,
	[POL] [varchar](50) NULL,
	[POD] [varchar](50) NULL,
	[PLACE_OF_DEL] [varchar](40) NULL,
	[PRICE_TERMS_POD] [varchar](80) NULL,
	[BILLTO_ADD1] [varchar](70) NULL,
	[BILLTO_ADD2] [varchar](70) NULL,
	[BILLTO_ADD3] [varchar](70) NULL,
	[BILLTO_ADD4] [varchar](70) NULL,
	[BILLTO_ADD5] [varchar](70) NULL,
	[BILLTO_ADD6] [varchar](70) NULL,
	[SHIPTO_ADD1] [varchar](70) NULL,
	[SHIPTO_ADD2] [varchar](70) NULL,
	[SHIPTO_ADD3] [varchar](70) NULL,
	[SHIPTO_ADD4] [varchar](70) NULL,
	[SHIPTO_ADD5] [varchar](70) NULL,
	[SHIPTO_ADD6] [varchar](70) NULL,
	[SHIPPER_ADD1] [varchar](70) NULL,
	[SHIPPER_ADD2] [varchar](70) NULL,
	[SHIPPER_ADD3] [varchar](70) NULL,
	[SHIPPER_ADD4] [varchar](70) NULL,
	[SHIPPER_ADD5] [varchar](70) NULL,
	[SHIPPER_ADD6] [varchar](70) NULL,
	[TOT_PACKAGES] [numeric](10, 0) NULL,
	[TOT_CONTAINERS] [varchar](20) NULL,
	[PROD_NAME] [varchar](50) NULL,
	[COUNTRY_ORIGIN] [varchar](100) NULL,
	[UNIT_PRICE] [numeric](10, 0) NULL,
	[TOT_AMOUNT] [numeric](10, 0) NULL,
	[TERMS] [varchar](200) NULL,
 CONSTRAINT [PK__INVOICE___BA3FE9EE7DF00838] PRIMARY KEY CLUSTERED 
(
	[DOC_HEAD_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[INVOICE_PROFORMA_DETAILS] TO  SCHEMA OWNER 
GO
