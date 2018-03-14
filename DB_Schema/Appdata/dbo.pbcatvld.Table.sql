USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pbcatvld](
	[pbv_name] [varchar](30) NOT NULL,
	[pbv_vald] [varchar](254) NOT NULL,
	[pbv_type] [smallint] NOT NULL,
	[pbv_cntr] [int] NULL,
	[pbv_msg] [varchar](254) NULL
) ON [PRIMARY]

GO
