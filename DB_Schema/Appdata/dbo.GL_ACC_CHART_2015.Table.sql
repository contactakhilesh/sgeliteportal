USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GL_ACC_CHART_2015](
	[AC_CODE] [numeric](20, 4) NOT NULL,
	[AC_DESC] [varchar](50) NULL,
	[AC_TYPE] [varchar](2) NULL,
	[AC_DORC] [varchar](2) NULL,
	[AC_BANK] [varchar](1) NULL,
	[AC_CURR] [varchar](3) NULL,
	[AC_SUBTYPE] [varchar](2) NULL,
	[AC_SUB_PL] [varchar](2) NULL,
	[AC_SUB_BS] [varchar](2) NULL,
	[G_NO] [numeric](2, 0) NULL,
	[YY_AC_CODE] [varchar](15) NULL,
	[yy_cost_centre_c] [varchar](12) NULL
) ON [PRIMARY]

GO
