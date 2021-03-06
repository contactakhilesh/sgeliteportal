USE [AMERICA]
GO
/****** Object:  Table [dbo].[EXPORT_MOVE_TYPE]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXPORT_MOVE_TYPE](
	[MoveTypeCode] [varchar](10) NOT NULL,
	[MoveTypeDesc] [varchar](100) NOT NULL,
	[ShipCostRelvMain] [varchar](10) NOT NULL,
	[ShipCostRelvPrelim] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_MOVE_TYPE] TO  SCHEMA OWNER 
GO
