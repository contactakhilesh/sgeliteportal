USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CHGCODE_MAST_2015](
	[CHGCODE_ID] [varchar](10) NOT NULL,
	[CHGCODE_DES] [varchar](40) NOT NULL,
	[CHG_UNIT] [varchar](10) NOT NULL,
	[GST_TYPE_ID] [varchar](1) NOT NULL,
	[GST_P] [numeric](11, 3) NOT NULL,
	[CHG_ACC_ID] [varchar](10) NOT NULL,
	[CHG_TYPE_ID] [varchar](10) NOT NULL,
	[CONT_TYPE_ID] [varchar](10) NOT NULL,
	[FIXED_CHG_A] [numeric](11, 2) NOT NULL,
	[TRANSPORT_IND] [varchar](1) NULL,
	[CHG_ACC_ID2] [varchar](10) NULL,
	[AR_CODE] [varchar](10) NULL,
	[AB_CODE] [varchar](10) NULL,
	[WT_M3_IND] [varchar](1) NULL,
	[GRPCODE_ID] [varchar](10) NULL,
	[CATEGORY] [varchar](1) NULL,
	[isunitprice_fixed] [char](1) NOT NULL,
	[hi_autoinvoice_addtlchg] [char](1) NOT NULL,
	[hi_autoinvoice_chgunitq] [numeric](11, 4) NOT NULL,
	[hi_autoinvoice_tratype] [char](1) NOT NULL,
	[hi_autoinvoice_currency] [varchar](10) NOT NULL,
	[hi_autoinvoice_chgunita] [numeric](11, 3) NOT NULL,
	[gst_type_id2] [varchar](2) NULL,
	[gst_type_id3] [varchar](2) NULL,
	[CHGCODE_JP] [varchar](10) NULL,
	[CHGCODE_HK] [varchar](10) NULL,
	[CHGCODE_ORD_ADD] [numeric](10, 2) NULL
) ON [PRIMARY]

GO
