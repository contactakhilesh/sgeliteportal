USE [AMERICA]
GO
/****** Object:  Table [dbo].[XML_XOM_VENDOR_MAP]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XML_XOM_VENDOR_MAP](
	[vendor_name] [varchar](70) NOT NULL,
	[elite_vendor_id] [varchar](10) NOT NULL,
	[cust_vendor_id] [varchar](10) NOT NULL,
	[office_code] [varchar](10) NOT NULL,
	[customer] [varchar](15) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[XML_XOM_VENDOR_MAP] TO  SCHEMA OWNER 
GO
