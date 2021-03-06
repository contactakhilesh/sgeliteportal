USE [appdata]
GO
/****** Object:  Table [dbo].[export_mkgs_del]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[export_mkgs_del]
GO
/****** Object:  Table [dbo].[export_mkgs_del]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[export_mkgs_del]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[export_mkgs_del](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[CONT_SEQ_N] [numeric](10, 0) NOT NULL,
	[LINE_WT] [numeric](11, 3) NOT NULL,
	[LINE_M3] [numeric](12, 4) NOT NULL,
	[LINE_TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[LINE_TOT_PACK_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SEAL_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ATT_CONT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ATT_SEAL_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
	[AIR_H] [numeric](11, 3) NULL,
	[AIR_W] [numeric](11, 3) NULL,
	[AIR_L] [numeric](11, 3) NULL,
	[LINE_CHG_WT] [numeric](11, 3) NULL,
	[LINE_CHG_IND] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_NET_WT] [numeric](11, 3) NULL,
	[LOT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BATCH_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PRODUCT_DES] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_UNIT_QTY] [numeric](10, 2) NULL,
	[WT_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS_ALL] [varchar](700) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES_ALL] [varchar](1600) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LUBS_HI] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tare_wt] [decimal](9, 2) NULL,
	[SUM_ALL_PROD] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_20] [int] NULL,
	[cont_40] [int] NULL,
	[ATP] [datetime] NULL,
	[MAD] [datetime] NULL,
	[quantity_percentage] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[insurance_percentage] [decimal](9, 2) NULL,
	[insurance_calc_value] [decimal](9, 2) NULL,
	[HD_FLAG] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[export_mkgs_del] TO  SCHEMA OWNER 
GO
