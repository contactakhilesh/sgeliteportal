USE [appdata]
GO
/****** Object:  Table [dbo].[MARKING_PKGS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[MARKING_PKGS]
GO
/****** Object:  Table [dbo].[MARKING_PKGS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MARKING_PKGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MARKING_PKGS](
	[JOB_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[JOB_TYPE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PKG_LINE_N] [numeric](11, 3) NOT NULL,
	[PKG_N] [numeric](10, 0) NULL,
	[PKG_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PKG_L] [numeric](11, 3) NULL,
	[PKG_W] [numeric](11, 3) NULL,
	[PKG_H] [numeric](11, 3) NULL,
	[TOT_WT] [numeric](11, 3) NULL,
	[TOT_M3] [numeric](11, 3) NULL,
	[VOL_WT_CHG_IND] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOT_VOL_WT] [numeric](11, 3) NULL,
	[TOT_CHG_WT] [numeric](11, 3) NULL,
 CONSTRAINT [PK_MKG_PKG] PRIMARY KEY NONCLUSTERED 
(
	[JOB_N] ASC,
	[LINE_N] ASC,
	[JOB_TYPE] ASC,
	[PKG_LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[MARKING_PKGS] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[MARKING_PKGS] TO [public] AS [dbo]
GO
