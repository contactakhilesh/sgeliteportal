USE [appdata]
GO
/****** Object:  Table [dbo].[EXPORT_PRODUCT_DUPLICATE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXPORT_PRODUCT_DUPLICATE]
GO
/****** Object:  Table [dbo].[EXPORT_PRODUCT_DUPLICATE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_PRODUCT_DUPLICATE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXPORT_PRODUCT_DUPLICATE](
	[PROD_EXPORT_N] [numeric](10, 0) NOT NULL,
	[PROD_LINE_N] [numeric](10, 0) NOT NULL,
	[PROD_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PROD_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROD_DESC] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[EXPORT_PRODUCT_DUPLICATE] ADD [HARMONIZE_CODE] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT_PRODUCT_DUPLICATE] ADD [PACK_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT_PRODUCT_DUPLICATE] ADD [UNIT_PRICE] [numeric](11, 3) NULL
ALTER TABLE [dbo].[EXPORT_PRODUCT_DUPLICATE] ADD [UNIT_PRICE_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT_PRODUCT_DUPLICATE] ADD [CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[EXPORT_PRODUCT_DUPLICATE] ADD [COUNTRY_ORIGIN] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_PRODUCT_DUPLICATE] TO  SCHEMA OWNER 
GO
