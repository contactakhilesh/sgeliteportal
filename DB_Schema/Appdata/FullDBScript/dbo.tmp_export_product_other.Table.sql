USE [appdata]
GO
/****** Object:  Table [dbo].[tmp_export_product_other]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_export_product_other]
GO
/****** Object:  Table [dbo].[tmp_export_product_other]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_export_product_other]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_export_product_other](
	[PROD_EXPORT_N] [numeric](10, 0) NOT NULL,
	[PROD_LINE_N] [numeric](10, 0) NOT NULL,
	[PROD_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PROD_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROD_DESC] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[tmp_export_product_other] ADD [HARMONIZE_CODE] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_product_other] ADD [PACK_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_product_other] ADD [UNIT_PRICE] [numeric](11, 3) NULL
ALTER TABLE [dbo].[tmp_export_product_other] ADD [UNIT_PRICE_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_product_other] ADD [CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_export_product_other] TO  SCHEMA OWNER 
GO
