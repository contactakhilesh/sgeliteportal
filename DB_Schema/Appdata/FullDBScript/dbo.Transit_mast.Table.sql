USE [appdata]
GO
/****** Object:  Table [dbo].[Transit_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[Transit_mast]
GO
/****** Object:  Table [dbo].[Transit_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transit_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Transit_mast](
	[Port_load_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_disc_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Carrier_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[transit_days] [numeric](4, 0) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Transit_mast] TO  SCHEMA OWNER 
GO
