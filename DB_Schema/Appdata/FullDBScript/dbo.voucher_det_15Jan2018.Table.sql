USE [appdata]
GO
/****** Object:  Table [dbo].[voucher_det_15Jan2018]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[voucher_det_15Jan2018]
GO
/****** Object:  Table [dbo].[voucher_det_15Jan2018]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[voucher_det_15Jan2018]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[voucher_det_15Jan2018](
	[VOUCHER_N] [numeric](10, 0) NOT NULL,
	[VOC_LINE_N] [numeric](10, 0) NOT NULL,
	[CHGCODE_ID] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHG_DES1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHG_DES2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHG_DES3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHG_DES4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LINE_GST_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LINE_WT_M3_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LINE_UNIT_Q] [numeric](11, 3) NOT NULL,
	[LINE_UNIT_CHG_A] [numeric](11, 2) NOT NULL,
	[LINE_CHG_UNIT] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LINE_EX_RATE] [numeric](11, 5) NOT NULL,
	[LINE_CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LINE_GST_P] [numeric](11, 3) NOT NULL,
	[LINE_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_CURRENCY] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REF_NO] [numeric](10, 0) NULL,
	[JOB_NO] [numeric](10, 0) NULL,
	[JOB_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOC_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PAYTYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[voucher_det_15Jan2018] ADD [LINE_EX_RATE_USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[voucher_det_15Jan2018] ADD [LINE_EX_RATE_ENTRY_D] [datetime] NULL
ALTER TABLE [dbo].[voucher_det_15Jan2018] ADD [sy_gst_amt] [numeric](10, 3) NULL
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[voucher_det_15Jan2018] TO  SCHEMA OWNER 
GO
