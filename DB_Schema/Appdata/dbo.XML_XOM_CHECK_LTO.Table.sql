USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_XOM_CHECK_LTO](
	[from_SO_n] [varchar](50) NOT NULL,
	[from_LTO_n] [varchar](50) NOT NULL,
	[to_SO_n] [varchar](50) NOT NULL,
	[to_LTO_n] [varchar](50) NOT NULL,
	[cancel] [varchar](2) NOT NULL
) ON [PRIMARY]

GO
