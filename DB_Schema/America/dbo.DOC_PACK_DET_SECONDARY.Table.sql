USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_PACK_DET_SECONDARY]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_PACK_DET_SECONDARY](
	[PROD_ID] [varchar](50) NULL,
	[PROD_NAME] [varchar](50) NULL,
	[PROD_QTY] [numeric](11, 3) NULL,
	[INCO_TERMS] [varchar](40) NULL,
	[PROD_DEL_ID] [varchar](40) NULL,
	[PROD_PRICE_BEF] [numeric](11, 3) NULL,
	[PROD_PRICE_AFT] [numeric](11, 3) NULL,
	[PROD_EXPORT_N] [numeric](10, 0) NULL,
	[PROD_AMOUNT_BEF] [numeric](18, 0) NULL,
	[PROD_AMOUNT_AFT] [numeric](18, 0) NULL,
	[Status] [varchar](10) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_PACK_DET_SECONDARY] TO  SCHEMA OWNER 
GO
