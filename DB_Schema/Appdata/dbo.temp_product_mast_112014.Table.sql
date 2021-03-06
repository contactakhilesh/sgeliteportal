USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_product_mast_112014](
	[CUST_ID] [varchar](15) NOT NULL,
	[PRODUCT_ID] [varchar](20) NOT NULL,
	[COMP_NAME] [varchar](50) NOT NULL,
	[COMP_GRP_ID] [varchar](30) NULL,
	[CREATE_D] [datetime] NULL,
	[USER_ID] [varchar](20) NULL,
	[HARMONIZED_CODE] [varchar](20) NULL,
	[UN_NO] [varchar](20) NULL,
	[CHEMICAL_NAME] [varchar](100) NULL,
	[HAZARDOUS_CLASS] [varchar](10) NULL,
	[PACKING_GRP] [varchar](10) NULL,
	[EMS_NO] [varchar](10) NULL,
	[PLACARD_LABEL] [varchar](50) NULL,
	[PLACARD_SUB_LABEL] [varchar](50) NULL,
	[FLASHPOINT] [numeric](10, 0) NULL,
	[TEMP_MAX_AMT] [numeric](5, 2) NULL,
	[HAZARDOUS_MAT_PAGE] [varchar](10) NULL,
	[DOT_EMERGENCY_RESP] [varchar](20) NULL,
	[MFAG_NO] [varchar](50) NULL,
	[CONTACT_NAME] [varchar](20) NULL,
	[CONTACT_PHONE] [varchar](20) NULL,
	[TRADE_NAME] [varchar](50) NULL,
	[UOM] [varchar](20) NULL,
	[customs_hs_code] [varchar](50) NULL,
	[prod_full_name] [varchar](200) NULL,
	[dg_ind] [varchar](1) NULL,
	[dg_remarks] [varchar](255) NULL,
	[permit_custid] [varchar](10) NULL,
	[prod_base_net_wt] [numeric](9, 3) NULL,
	[prod_base_unit] [varchar](20) NULL,
	[country_origin] [varchar](2) NULL
) ON [PRIMARY]

GO
