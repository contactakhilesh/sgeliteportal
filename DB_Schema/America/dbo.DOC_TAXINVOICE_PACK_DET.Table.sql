USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_TAXINVOICE_PACK_DET]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_TAXINVOICE_PACK_DET](
	[PROD_CODE] [varchar](50) NULL,
	[PROD_NAME] [varchar](50) NULL,
	[ORDER_NO] [varchar](50) NULL,
	[PROD_QTY] [numeric](11, 3) NULL,
	[PROD_UNIT] [varchar](20) NULL,
	[UNIT_PRICE] [numeric](11, 3) NULL,
	[CUR_ID] [varchar](10) NULL,
	[JOB_NO] [numeric](11, 0) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_TAXINVOICE_PACK_DET] TO  SCHEMA OWNER 
GO
