USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [port_fanar_mast](
	[Plant_code] [varchar](20) NOT NULL,
	[port_id] [varchar](10) NULL,
	[t_zone] [varchar](30) NULL,
	[fanar_code] [varchar](30) NULL
) ON [PRIMARY]

GO
