USE [appdata]
GO
/****** Object:  Table [dbo].[dhl_zip_04Nov2015]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[dhl_zip_04Nov2015]
GO
/****** Object:  Table [dbo].[dhl_zip_04Nov2015]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_zip_04Nov2015]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dhl_zip_04Nov2015](
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[country_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[country_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[city_name] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[state_name] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[zip_low] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Zip_high] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Iata] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[dhl_zip_04Nov2015] TO  SCHEMA OWNER 
GO
