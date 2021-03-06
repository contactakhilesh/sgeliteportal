USE [appdata]
GO
/****** Object:  Table [dbo].[CHGCODE_MAST_2015]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[CHGCODE_MAST_2015]
GO
/****** Object:  Table [dbo].[CHGCODE_MAST_2015]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CHGCODE_MAST_2015]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CHGCODE_MAST_2015](
	[CHGCODE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHGCODE_DES] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHG_UNIT] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GST_TYPE_ID] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GST_P] [numeric](11, 3) NOT NULL,
	[CHG_ACC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHG_TYPE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONT_TYPE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FIXED_CHG_A] [numeric](11, 2) NOT NULL,
	[TRANSPORT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHG_ACC_ID2] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AR_CODE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AB_CODE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WT_M3_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[CHGCODE_MAST_2015] ADD [GRPCODE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CHGCODE_MAST_2015] ADD [CATEGORY] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CHGCODE_MAST_2015] ADD [isunitprice_fixed] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[CHGCODE_MAST_2015] ADD [hi_autoinvoice_addtlchg] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[CHGCODE_MAST_2015] ADD [hi_autoinvoice_chgunitq] [numeric](11, 4) NOT NULL
ALTER TABLE [dbo].[CHGCODE_MAST_2015] ADD [hi_autoinvoice_tratype] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[CHGCODE_MAST_2015] ADD [hi_autoinvoice_currency] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[CHGCODE_MAST_2015] ADD [hi_autoinvoice_chgunita] [numeric](11, 3) NOT NULL
ALTER TABLE [dbo].[CHGCODE_MAST_2015] ADD [gst_type_id2] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CHGCODE_MAST_2015] ADD [gst_type_id3] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CHGCODE_MAST_2015] ADD [CHGCODE_JP] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CHGCODE_MAST_2015] ADD [CHGCODE_HK] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[CHGCODE_MAST_2015] ADD [CHGCODE_ORD_ADD] [numeric](10, 2) NULL
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CHGCODE_MAST_2015] TO  SCHEMA OWNER 
GO
