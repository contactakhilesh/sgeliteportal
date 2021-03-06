USE [appdata]
GO
/****** Object:  Table [dbo].[temp_permit_freight_rate]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp_permit_freight_rate]
GO
/****** Object:  Table [dbo].[temp_permit_freight_rate]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_permit_freight_rate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp_permit_freight_rate](
	[country_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[destination] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[delivery] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amt_20] [numeric](10, 4) NULL,
	[amt_40] [numeric](10, 4) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp_permit_freight_rate] TO  SCHEMA OWNER 
GO
