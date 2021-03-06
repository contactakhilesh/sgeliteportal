USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_permit_freight_rate](
	[country_name] [varchar](100) NULL,
	[destination] [varchar](100) NULL,
	[delivery] [varchar](100) NULL,
	[amt_20] [numeric](10, 4) NULL,
	[amt_40] [numeric](10, 4) NULL
) ON [PRIMARY]

GO
