USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VBS_CARRIER](
	[fms_env] [varchar](10) NOT NULL,
	[cust_id] [varchar](10) NULL,
	[carrier_name] [varchar](70) NULL,
	[carrier_scac] [varchar](20) NOT NULL,
	[vendor_id] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
