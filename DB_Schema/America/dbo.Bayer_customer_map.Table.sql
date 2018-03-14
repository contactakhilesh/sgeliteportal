USE [AMERICA]
GO
/****** Object:  Table [dbo].[Bayer_customer_map]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bayer_customer_map](
	[COMPANY_NAME] [varchar](100) NULL,
	[BAYER_CUST_CODE] [varchar](10) NULL,
	[ELITE_CUST_CODE] [varchar](50) NULL,
	[ELITE_ENV] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Bayer_customer_map] TO  SCHEMA OWNER 
GO
