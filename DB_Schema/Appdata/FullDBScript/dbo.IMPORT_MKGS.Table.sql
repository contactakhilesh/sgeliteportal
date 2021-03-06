USE [appdata]
GO
/****** Object:  Trigger [TRG_IM_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_IM_JOBS_UPDATED]
GO
/****** Object:  Table [dbo].[IMPORT_MKGS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[IMPORT_MKGS]
GO
/****** Object:  Table [dbo].[IMPORT_MKGS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IMPORT_MKGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IMPORT_MKGS](
	[IMPORT_N] [numeric](10, 0) NOT NULL,
	[DO_N] [numeric](10, 0) NOT NULL,
	[CONT_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SEAL_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONT_SEQ_N] [numeric](10, 0) NOT NULL,
	[LINE_WT] [numeric](11, 3) NOT NULL,
	[LINE_M3] [numeric](11, 3) NOT NULL,
	[LINE_TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[LINE_TOT_PACK_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
	[DES1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES5] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES6] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES7] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES8] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES9] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES10] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES11] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES12] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES13] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES14] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES15] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AIR_H] [numeric](11, 3) NULL,
	[AIR_W] [numeric](11, 3) NULL,
	[AIR_L] [numeric](11, 3) NULL,
	[AIR_PAR_PKGS] [numeric](10, 0) NULL,
	[AIR_PAR_WT] [numeric](11, 3) NULL,
	[AIR_PAR_M3] [numeric](11, 3) NULL,
	[PAR_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_CHG_WT] [numeric](11, 3) NULL,
	[AIR_PAR_CHG_WT] [numeric](11, 3) NULL,
	[LINE_NET_WT] [numeric](11, 3) NULL,
	[PRODUCT_DES] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_UNIT_QTY] [numeric](10, 2) NULL,
	[WT_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS_ALL] [varchar](700) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES_ALL] [varchar](1600) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_IMPORT_MKGS] PRIMARY KEY NONCLUSTERED 
(
	[IMPORT_N] ASC,
	[DO_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[IMPORT_MKGS] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[IMPORT_MKGS] TO [public] AS [dbo]
GO
