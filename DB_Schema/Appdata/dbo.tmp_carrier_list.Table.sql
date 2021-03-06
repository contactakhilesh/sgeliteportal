USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_carrier_list](
	[NAME] [varchar](255) NULL,
	[ORIGIN] [varchar](255) NULL,
	[DESTINATION] [varchar](255) NULL,
	[COUNTRY] [varchar](255) NULL,
	[CONT_SIZE] [varchar](255) NULL,
	[carrier_id] [varchar](10) NULL,
	[port_load_id] [varchar](5) NULL,
	[port_disc_id] [varchar](5) NULL
) ON [PRIMARY]

GO
