USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SAP_SABIC_ROUTE_MASTER](
	[ROUTE] [varchar](10) NOT NULL,
	[DESCRIPTION] [varchar](50) NULL,
	[COUNTRY_ORIGIN] [varchar](4) NULL,
	[POR_ID] [varchar](8) NULL,
	[POR_NAME] [varchar](30) NULL,
	[POL_ID] [varchar](8) NULL,
	[POL_NAME] [varchar](30) NULL,
	[COUNTRY_DEST] [varchar](4) NULL,
	[POD_ID] [varchar](8) NULL,
	[POD_NAME] [varchar](30) NULL,
	[DEL_ID] [varchar](8) NULL,
	[DEL_NAME] [varchar](30) NULL
) ON [PRIMARY]

GO
