USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [voucher_det_15Jan2018](
	[VOUCHER_N] [numeric](10, 0) NOT NULL,
	[VOC_LINE_N] [numeric](10, 0) NOT NULL,
	[CHGCODE_ID] [varchar](40) NOT NULL,
	[CHG_DES1] [varchar](40) NOT NULL,
	[CHG_DES2] [varchar](40) NOT NULL,
	[CHG_DES3] [varchar](40) NOT NULL,
	[CHG_DES4] [varchar](40) NOT NULL,
	[LINE_GST_TYPE] [varchar](1) NOT NULL,
	[LINE_WT_M3_IND] [varchar](1) NOT NULL,
	[LINE_UNIT_Q] [numeric](11, 3) NOT NULL,
	[LINE_UNIT_CHG_A] [numeric](11, 2) NOT NULL,
	[LINE_CHG_UNIT] [varchar](10) NOT NULL,
	[LINE_EX_RATE] [numeric](11, 5) NOT NULL,
	[LINE_CURRENCY_ID] [varchar](10) NOT NULL,
	[LINE_GST_P] [numeric](11, 3) NOT NULL,
	[LINE_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_CURRENCY] [varchar](10) NULL,
	[REF_NO] [numeric](10, 0) NULL,
	[JOB_NO] [numeric](10, 0) NULL,
	[JOB_TYPE] [varchar](1) NULL,
	[DOC_NO] [varchar](20) NULL,
	[PAYTYPE] [varchar](20) NULL,
	[LINE_EX_RATE_USER_ID] [varchar](20) NULL,
	[LINE_EX_RATE_ENTRY_D] [datetime] NULL,
	[sy_gst_amt] [numeric](10, 3) NULL
) ON [PRIMARY]

GO
