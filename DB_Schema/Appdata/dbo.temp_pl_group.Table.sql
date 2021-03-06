USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [temp_pl_group](
	[Sorting] [varchar](1) NULL,
	[Subtype_desc] [varchar](50) NULL,
	[AC_CODE] [decimal](14, 5) NULL,
	[AC_DESC] [varchar](250) NULL,
	[AC_DORC] [varchar](2) NULL,
	[AC_SUBTYPE] [varchar](2) NULL,
	[AC_YEAR] [decimal](4, 0) NULL,
	[AC_PERIOD] [decimal](4, 0) NULL,
	[DB_CRamt] [decimal](21, 2) NULL
) ON [PRIMARY]

GO
