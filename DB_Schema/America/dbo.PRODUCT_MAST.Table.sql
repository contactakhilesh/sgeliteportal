USE [AMERICA]
GO
/****** Object:  Table [dbo].[PRODUCT_MAST]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_MAST](
	[CUST_ID] [varchar](15) NOT NULL,
	[PRODUCT_ID] [varchar](20) NOT NULL,
	[COMP_NAME] [varchar](50) NOT NULL,
	[COMP_GRP_ID] [varchar](50) NULL,
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
	[country_origin] [varchar](2) NULL,
	[prod_group_prefix] [char](20) NULL,
	[lyb_product_id] [varchar](20) NULL,
	[lyb_material_description] [varchar](200) NULL,
	[lyb_product_id_40] [varchar](40) NULL,
	[lyb_material_description_40] [varchar](200) NULL,
	[prod_base_gross_wt] [numeric](12, 3) NULL,
	[base_m3] [numeric](12, 4) NULL,
	[prod_base_net_wt] [numeric](12, 3) NULL,
 CONSTRAINT [PK_PRODUCT_MAST] PRIMARY KEY NONCLUSTERED 
(
	[CUST_ID] ASC,
	[PRODUCT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[PRODUCT_MAST] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_ProductMastProductIdInclCompName]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE NONCLUSTERED INDEX [I_ProductMastProductIdInclCompName] ON [dbo].[PRODUCT_MAST]
(
	[PRODUCT_ID] ASC
)
INCLUDE ( 	[COMP_NAME]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
