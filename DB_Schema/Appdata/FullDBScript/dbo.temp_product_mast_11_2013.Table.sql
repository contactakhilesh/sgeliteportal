USE [appdata]
GO
/****** Object:  Table [dbo].[temp_product_mast_11_2013]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp_product_mast_11_2013]
GO
/****** Object:  Table [dbo].[temp_product_mast_11_2013]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_product_mast_11_2013]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp_product_mast_11_2013](
	[CUST_ID] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PRODUCT_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COMP_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COMP_GRP_ID] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATE_D] [datetime] NULL,
	[USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HARMONIZED_CODE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UN_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHEMICAL_NAME] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HAZARDOUS_CLASS] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PACKING_GRP] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMS_NO] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PLACARD_LABEL] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PLACARD_SUB_LABEL] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FLASHPOINT] [numeric](10, 0) NULL,
	[TEMP_MAX_AMT] [numeric](5, 2) NULL,
	[HAZARDOUS_MAT_PAGE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOT_EMERGENCY_RESP] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MFAG_NO] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONTACT_NAME] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONTACT_PHONE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TRADE_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[temp_product_mast_11_2013] ADD [UOM] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[temp_product_mast_11_2013] ADD [customs_hs_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[temp_product_mast_11_2013] ADD [prod_full_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[temp_product_mast_11_2013] ADD [dg_ind] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[temp_product_mast_11_2013] ADD [dg_remarks] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[temp_product_mast_11_2013] ADD [permit_custid] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[temp_product_mast_11_2013] ADD [prod_base_net_wt] [numeric](9, 3) NULL
ALTER TABLE [dbo].[temp_product_mast_11_2013] ADD [prod_base_unit] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp_product_mast_11_2013] TO  SCHEMA OWNER 
GO
