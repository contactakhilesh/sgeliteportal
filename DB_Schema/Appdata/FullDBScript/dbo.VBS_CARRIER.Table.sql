USE [appdata]
GO
/****** Object:  Table [dbo].[VBS_CARRIER]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[VBS_CARRIER]
GO
/****** Object:  Table [dbo].[VBS_CARRIER]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VBS_CARRIER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VBS_CARRIER](
	[fms_env] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[carrier_name] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[carrier_scac] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[vendor_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[VBS_CARRIER] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[VBS_CARRIER] TO [public] AS [dbo]
GO
