USE [AMERICA]
GO
/****** Object:  Table [dbo].[EXPORT_PRODUCT]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXPORT_PRODUCT](
	[PROD_EXPORT_N] [numeric](10, 0) NOT NULL,
	[PROD_LINE_N] [numeric](10, 0) NOT NULL,
	[PROD_ID] [varchar](20) NOT NULL,
	[PROD_NAME] [varchar](50) NULL,
	[PROD_DESC] [varchar](2500) NULL,
	[HARMONIZE_CODE] [varchar](250) NULL,
	[PACK_TYPE] [varchar](20) NULL,
	[UNIT_PRICE] [numeric](13, 5) NULL,
	[UNIT_PRICE_UOM] [varchar](10) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[COUNTRY_ORIGIN] [varchar](50) NULL,
	[MANU_ADDR_CODE] [varchar](30) NULL,
	[no_of_pallets] [numeric](10, 0) NULL,
	[net_wt_pallet] [decimal](12, 3) NULL,
	[gross_wt_pallet] [decimal](12, 3) NULL,
	[create_prod_dt] [datetime] NULL,
	[plant_code] [varchar](20) NULL,
	[grade] [varchar](30) NULL,
	[suffix] [varchar](10) NULL,
	[CustPackCode] [varchar](10) NULL,
	[HD_FLAG] [varchar](1) NOT NULL,
	[INVOICE_N] [varchar](20) NULL,
	[invoice_dt] [datetime] NULL,
	[customs_fob_value] [numeric](21, 3) NULL,
	[source_po] [varchar](40) NULL,
	[source_so] [varchar](50) NULL,
	[Total_Net_Price] [decimal](12, 2) NULL,
	[IEC_CODE] [varchar](50) NULL,
 CONSTRAINT [PK_EXPORT_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[PROD_EXPORT_N] ASC,
	[PROD_LINE_N] ASC,
	[PROD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_PRODUCT] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_PRODUCT_5_758293761__K1_K3_4]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_PRODUCT_5_758293761__K1_K3_4] ON [dbo].[EXPORT_PRODUCT]
(
	[PROD_EXPORT_N] ASC,
	[PROD_ID] ASC
)
INCLUDE ( 	[PROD_NAME]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
