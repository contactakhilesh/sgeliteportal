USE [appdata]
GO
/****** Object:  Index [dhl_zip_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [dhl_zip_idx1] ON [dbo].[dhl_zip]
GO
/****** Object:  Table [dbo].[dhl_zip]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[dhl_zip]
GO
/****** Object:  Table [dbo].[dhl_zip]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_zip]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dhl_zip](
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[country_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[city_name] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[state_name] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[zip_low] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Zip_high] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Iata] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK__dhl_zip__566A9015] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[dhl_zip] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [dhl_zip_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[dhl_zip]') AND name = N'dhl_zip_idx1')
CREATE NONCLUSTERED INDEX [dhl_zip_idx1] ON [dbo].[dhl_zip]
(
	[country_cd] ASC,
	[city_name] ASC,
	[state_name] ASC,
	[Iata] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
