USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IMPORT_MKGS](
	[IMPORT_N] [numeric](10, 0) NOT NULL,
	[DO_N] [numeric](10, 0) NOT NULL,
	[CONT_N] [varchar](30) NOT NULL,
	[SEAL_N] [varchar](30) NOT NULL,
	[CONT_SEQ_N] [numeric](10, 0) NOT NULL,
	[LINE_WT] [numeric](11, 3) NOT NULL,
	[LINE_M3] [numeric](11, 3) NOT NULL,
	[LINE_TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[LINE_TOT_PACK_TYPE] [varchar](20) NOT NULL,
	[MKGS1] [varchar](40) NULL,
	[MKGS2] [varchar](40) NULL,
	[MKGS3] [varchar](40) NULL,
	[MKGS4] [varchar](40) NULL,
	[MKGS5] [varchar](40) NULL,
	[MKGS6] [varchar](40) NULL,
	[MKGS7] [varchar](40) NULL,
	[MKGS8] [varchar](40) NULL,
	[MKGS9] [varchar](40) NULL,
	[MKGS10] [varchar](40) NULL,
	[MKGS11] [varchar](40) NULL,
	[MKGS12] [varchar](40) NULL,
	[MKGS13] [varchar](40) NULL,
	[MKGS14] [varchar](40) NULL,
	[MKGS15] [varchar](40) NULL,
	[DES1] [varchar](40) NULL,
	[DES2] [varchar](40) NULL,
	[DES3] [varchar](40) NULL,
	[DES4] [varchar](40) NULL,
	[DES5] [varchar](40) NULL,
	[DES6] [varchar](40) NULL,
	[DES7] [varchar](40) NULL,
	[DES8] [varchar](40) NULL,
	[DES9] [varchar](40) NULL,
	[DES10] [varchar](40) NULL,
	[DES11] [varchar](40) NULL,
	[DES12] [varchar](40) NULL,
	[DES13] [varchar](40) NULL,
	[DES14] [varchar](40) NULL,
	[DES15] [varchar](40) NULL,
	[AIR_H] [numeric](11, 3) NULL,
	[AIR_W] [numeric](11, 3) NULL,
	[AIR_L] [numeric](11, 3) NULL,
	[AIR_PAR_PKGS] [numeric](10, 0) NULL,
	[AIR_PAR_WT] [numeric](11, 3) NULL,
	[AIR_PAR_M3] [numeric](11, 3) NULL,
	[PAR_IND] [varchar](1) NULL,
	[LINE_CHG_WT] [numeric](11, 3) NULL,
	[AIR_PAR_CHG_WT] [numeric](11, 3) NULL,
	[LINE_NET_WT] [numeric](11, 3) NULL,
	[PRODUCT_DES] [varchar](50) NULL,
	[LINE_UNIT_QTY] [numeric](10, 2) NULL,
	[WT_UOM] [varchar](10) NULL,
	[MKGS_ALL] [varchar](700) NULL,
	[DES_ALL] [varchar](1600) NULL,
 CONSTRAINT [PK_IMPORT_MKGS] PRIMARY KEY NONCLUSTERED 
(
	[IMPORT_N] ASC,
	[DO_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
