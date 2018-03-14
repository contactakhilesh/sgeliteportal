USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_COURIER_MAST](
	[courier_id] [varchar](15) NOT NULL,
	[courier_name] [varchar](200) NULL,
	[notes] [varchar](200) NULL,
	[courier_code] [varchar](20) NULL
) ON [PRIMARY]

GO
