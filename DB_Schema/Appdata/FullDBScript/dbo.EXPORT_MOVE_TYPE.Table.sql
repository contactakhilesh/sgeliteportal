USE [appdata]
GO
/****** Object:  Table [dbo].[EXPORT_MOVE_TYPE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXPORT_MOVE_TYPE]
GO
/****** Object:  Table [dbo].[EXPORT_MOVE_TYPE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MOVE_TYPE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXPORT_MOVE_TYPE](
	[MoveTypeCode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MoveTypeDesc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ShipCostRelvMain] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ShipCostRelvPrelim] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_MOVE_TYPE] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[EXPORT_MOVE_TYPE] TO [public] AS [dbo]
GO
