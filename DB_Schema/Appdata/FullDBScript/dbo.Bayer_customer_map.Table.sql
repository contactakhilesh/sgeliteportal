USE [appdata]
GO
/****** Object:  Table [dbo].[Bayer_customer_map]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[Bayer_customer_map]
GO
/****** Object:  Table [dbo].[Bayer_customer_map]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bayer_customer_map]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Bayer_customer_map](
	[COMPANY_NAME] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BAYER_CUST_CODE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ELITE_CUST_CODE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ELITE_ENV] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Bayer_customer_map] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Bayer_customer_map] TO [public] AS [dbo]
GO
