USE [appdata]
GO
/****** Object:  Table [dbo].[tmp_carrier_list]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_carrier_list]
GO
/****** Object:  Table [dbo].[tmp_carrier_list]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_carrier_list]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_carrier_list](
	[NAME] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORIGIN] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DESTINATION] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COUNTRY] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_SIZE] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[carrier_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_load_id] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_disc_id] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_carrier_list] TO  SCHEMA OWNER 
GO
