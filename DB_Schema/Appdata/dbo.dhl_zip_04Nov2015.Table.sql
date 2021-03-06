USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dhl_zip_04Nov2015](
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[country_cd] [varchar](2) NOT NULL,
	[country_name] [varchar](30) NOT NULL,
	[city_name] [varchar](35) NULL,
	[state_name] [varchar](35) NULL,
	[zip_low] [varchar](12) NULL,
	[Zip_high] [varchar](12) NULL,
	[Iata] [varchar](3) NOT NULL
) ON [PRIMARY]

GO
