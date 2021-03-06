USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [export_ref_cont_del](
	[EXPORT_REF_N] [numeric](10, 0) NOT NULL,
	[CONT_SEQ_N] [numeric](18, 0) NOT NULL,
	[CONT_N] [varchar](20) NOT NULL,
	[SEAL_N] [varchar](50) NULL,
	[CONT_TYPE_ID] [varchar](10) NOT NULL,
	[EXPORT_N] [numeric](10, 0) NULL,
	[SELECT_IND] [char](1) NULL,
	[CONT_SIZE] [varchar](10) NOT NULL,
	[TOT_WT] [numeric](11, 3) NULL,
	[TOT_NET_WT] [numeric](11, 3) NULL,
	[TOT_PACKAGES] [numeric](10, 0) NULL,
	[TOT_PACK_TYPE] [varchar](20) NULL,
	[LOT_N] [varchar](100) NULL,
	[ROWID] [int] IDENTITY(1,1) NOT NULL,
	[M3] [numeric](9, 3) NULL,
	[tare_wt] [decimal](10, 3) NULL,
	[CAPACITY] [varchar](50) NULL,
	[EMPTY_TANK_RELEASE_DT] [datetime] NULL,
	[DEPOT_ROWID] [numeric](18, 0) NULL,
	[batch_no] [varchar](50) NULL,
	[prod_line_n] [varchar](50) NULL,
	[tot_pallet] [decimal](10, 0) NULL,
	[cont_rcv_dt] [datetime] NULL
) ON [PRIMARY]

GO
