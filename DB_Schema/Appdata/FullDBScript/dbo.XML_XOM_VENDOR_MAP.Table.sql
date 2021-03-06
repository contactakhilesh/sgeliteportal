USE [appdata]
GO
/****** Object:  Table [dbo].[XML_XOM_VENDOR_MAP]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[XML_XOM_VENDOR_MAP]
GO
/****** Object:  Table [dbo].[XML_XOM_VENDOR_MAP]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XML_XOM_VENDOR_MAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XML_XOM_VENDOR_MAP](
	[vendor_name] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[elite_vendor_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_vendor_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[office_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[customer] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[XML_XOM_VENDOR_MAP] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[XML_XOM_VENDOR_MAP] TO [public] AS [dbo]
GO
