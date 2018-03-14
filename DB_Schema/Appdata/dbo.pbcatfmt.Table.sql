USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pbcatfmt](
	[pbf_name] [varchar](30) NOT NULL,
	[pbf_frmt] [varchar](254) NOT NULL,
	[pbf_type] [smallint] NOT NULL,
	[pbf_cntr] [int] NULL
) ON [PRIMARY]

GO
