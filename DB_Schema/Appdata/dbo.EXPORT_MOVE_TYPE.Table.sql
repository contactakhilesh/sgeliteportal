USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EXPORT_MOVE_TYPE](
	[MoveTypeCode] [varchar](10) NOT NULL,
	[MoveTypeDesc] [varchar](100) NOT NULL,
	[ShipCostRelvMain] [varchar](10) NOT NULL,
	[ShipCostRelvPrelim] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
