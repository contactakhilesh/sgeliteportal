USE [appdata]
GO
/****** Object:  Table [dbo].[export_ref_cont_del]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[export_ref_cont_del]
GO
/****** Object:  Table [dbo].[export_ref_cont_del]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[export_ref_cont_del]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[export_ref_cont_del](
	[EXPORT_REF_N] [numeric](10, 0) NOT NULL,
	[CONT_SEQ_N] [numeric](18, 0) NOT NULL,
	[CONT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SEAL_N] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_TYPE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EXPORT_N] [numeric](10, 0) NULL,
	[SELECT_IND] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_SIZE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TOT_WT] [numeric](11, 3) NULL,
	[TOT_NET_WT] [numeric](11, 3) NULL,
	[TOT_PACKAGES] [numeric](10, 0) NULL,
	[TOT_PACK_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LOT_N] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ROWID] [int] IDENTITY(1,1) NOT NULL,
	[M3] [numeric](9, 3) NULL,
	[tare_wt] [decimal](10, 3) NULL,
	[CAPACITY] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMPTY_TANK_RELEASE_DT] [datetime] NULL,
	[DEPOT_ROWID] [numeric](18, 0) NULL,
	[batch_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prod_line_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_pallet] [decimal](10, 0) NULL,
	[cont_rcv_dt] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[export_ref_cont_del] TO  SCHEMA OWNER 
GO
