USE [AMERICA]
GO
/****** Object:  Table [dbo].[EXPORT_MKGS]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXPORT_MKGS](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[CONT_SEQ_N] [numeric](10, 0) NOT NULL,
	[LINE_WT] [numeric](11, 3) NOT NULL,
	[LINE_M3] [numeric](12, 4) NOT NULL,
	[LINE_TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[LINE_TOT_PACK_TYPE] [varchar](20) NOT NULL,
	[CONT_N] [varchar](20) NOT NULL,
	[SEAL_N] [varchar](20) NOT NULL,
	[ATT_CONT_N] [varchar](20) NOT NULL,
	[ATT_SEAL_N] [varchar](20) NOT NULL,
	[MKGS1] [varchar](100) NULL,
	[MKGS2] [varchar](100) NULL,
	[MKGS3] [varchar](100) NULL,
	[MKGS4] [varchar](100) NULL,
	[MKGS5] [varchar](100) NULL,
	[MKGS6] [varchar](100) NULL,
	[MKGS7] [varchar](100) NULL,
	[MKGS8] [varchar](100) NULL,
	[MKGS9] [varchar](100) NULL,
	[MKGS10] [varchar](100) NULL,
	[MKGS11] [varchar](100) NULL,
	[MKGS12] [varchar](100) NULL,
	[MKGS13] [varchar](100) NULL,
	[MKGS14] [varchar](100) NULL,
	[MKGS15] [varchar](100) NULL,
	[DES1] [varchar](100) NULL,
	[DES2] [varchar](100) NULL,
	[DES3] [varchar](100) NULL,
	[DES4] [varchar](100) NULL,
	[DES5] [varchar](100) NULL,
	[DES6] [varchar](100) NULL,
	[DES7] [varchar](100) NULL,
	[DES8] [varchar](100) NULL,
	[DES9] [varchar](100) NULL,
	[DES10] [varchar](100) NULL,
	[DES11] [varchar](100) NULL,
	[DES12] [varchar](100) NULL,
	[DES13] [varchar](100) NULL,
	[DES14] [varchar](100) NULL,
	[DES15] [varchar](100) NULL,
	[AIR_H] [numeric](11, 3) NULL,
	[AIR_W] [numeric](11, 3) NULL,
	[AIR_L] [numeric](11, 3) NULL,
	[LINE_CHG_WT] [numeric](11, 3) NULL,
	[LINE_CHG_IND] [char](1) NULL,
	[LINE_NET_WT] [numeric](11, 3) NULL,
	[LOT_N] [varchar](200) NULL,
	[BATCH_N] [varchar](20) NULL,
	[PRODUCT_DES] [varchar](50) NULL,
	[LINE_UNIT_QTY] [numeric](10, 2) NULL,
	[WT_UOM] [varchar](10) NULL,
	[MKGS_ALL] [varchar](700) NULL,
	[DES_ALL] [varchar](1600) NULL,
	[LUBS_HI] [char](1) NULL,
	[tare_wt] [decimal](9, 2) NULL,
	[SUM_ALL_PROD] [char](1) NULL,
	[cont_20] [int] NULL,
	[cont_40] [int] NULL,
	[ATP] [datetime] NULL,
	[MAD] [datetime] NULL,
	[quantity_percentage] [varchar](10) NULL,
	[insurance_percentage] [decimal](9, 2) NULL,
	[insurance_calc_value] [decimal](9, 2) NULL,
	[HD_FLAG] [varchar](1) NOT NULL,
 CONSTRAINT [PK_EXPORT_MKGS] PRIMARY KEY CLUSTERED 
(
	[EXPORT_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_MKGS] TO  SCHEMA OWNER 
GO
