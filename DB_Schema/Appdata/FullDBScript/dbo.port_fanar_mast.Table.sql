USE [appdata]
GO
/****** Object:  Table [dbo].[port_fanar_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[port_fanar_mast]
GO
/****** Object:  Table [dbo].[port_fanar_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[port_fanar_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[port_fanar_mast](
	[Plant_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[port_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[t_zone] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fanar_code] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[port_fanar_mast] TO  SCHEMA OWNER 
GO
