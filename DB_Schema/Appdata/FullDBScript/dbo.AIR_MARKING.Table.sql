USE [appdata]
GO
/****** Object:  Table [dbo].[AIR_MARKING]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[AIR_MARKING]
GO
/****** Object:  Table [dbo].[AIR_MARKING]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AIR_MARKING]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AIR_MARKING](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[JOB_TYPE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONT_SEQ_N] [numeric](10, 0) NULL,
	[LINE_WT] [numeric](11, 3) NULL,
	[LINE_M3] [numeric](11, 3) NULL,
	[LINE_TOT_PACKAGES] [numeric](10, 0) NULL,
	[LINE_TOT_PACK_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SEAL_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ATT_CONT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ATT_SEAL_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS5] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS6] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS7] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS8] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS9] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS10] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS11] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS12] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS13] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS14] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS15] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES5] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES6] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES7] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES8] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES9] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES10] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES11] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES12] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES13] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES14] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES15] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_CHG_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_CHG_WT] [numeric](11, 3) NULL,
 CONSTRAINT [PK_AIR_MARKING] PRIMARY KEY NONCLUSTERED 
(
	[EXPORT_N] ASC,
	[LINE_N] ASC,
	[JOB_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[AIR_MARKING] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[AIR_MARKING] TO [public] AS [dbo]
GO
