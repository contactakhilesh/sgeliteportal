USE [appdata]
GO
/****** Object:  Table [dbo].[GL_ACC_CHART_2015]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[GL_ACC_CHART_2015]
GO
/****** Object:  Table [dbo].[GL_ACC_CHART_2015]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GL_ACC_CHART_2015]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GL_ACC_CHART_2015](
	[AC_CODE] [numeric](20, 4) NOT NULL,
	[AC_DESC] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AC_TYPE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AC_DORC] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AC_BANK] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AC_CURR] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AC_SUBTYPE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AC_SUB_PL] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AC_SUB_BS] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[G_NO] [numeric](2, 0) NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[GL_ACC_CHART_2015] ADD [YY_AC_CODE] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[GL_ACC_CHART_2015] ADD [yy_cost_centre_c] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[GL_ACC_CHART_2015] TO  SCHEMA OWNER 
GO
