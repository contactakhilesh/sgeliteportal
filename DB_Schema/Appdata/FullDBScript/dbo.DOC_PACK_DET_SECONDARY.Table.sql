USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_PACK_DET_SECONDARY]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_PACK_DET_SECONDARY]
GO
/****** Object:  Table [dbo].[DOC_PACK_DET_SECONDARY]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_DET_SECONDARY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_PACK_DET_SECONDARY](
	[PROD_ID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROD_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROD_QTY] [numeric](11, 3) NULL,
	[INCO_TERMS] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROD_DEL_ID] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROD_PRICE_BEF] [numeric](11, 3) NULL,
	[PROD_PRICE_AFT] [numeric](11, 3) NULL,
	[PROD_EXPORT_N] [numeric](10, 0) NULL,
	[PROD_AMOUNT_BEF] [numeric](18, 0) NULL,
	[PROD_AMOUNT_AFT] [numeric](18, 0) NULL,
	[Status] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_PACK_DET_SECONDARY] TO  SCHEMA OWNER 
GO
