USE [appdata]
GO
/****** Object:  Table [dbo].[SAP_SABIC_ROUTE_MASTER]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[SAP_SABIC_ROUTE_MASTER]
GO
/****** Object:  Table [dbo].[SAP_SABIC_ROUTE_MASTER]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SAP_SABIC_ROUTE_MASTER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SAP_SABIC_ROUTE_MASTER](
	[ROUTE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPTION] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COUNTRY_ORIGIN] [varchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POR_ID] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POR_NAME] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POL_ID] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POL_NAME] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COUNTRY_DEST] [varchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POD_ID] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POD_NAME] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DEL_ID] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DEL_NAME] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[SAP_SABIC_ROUTE_MASTER] TO  SCHEMA OWNER 
GO
