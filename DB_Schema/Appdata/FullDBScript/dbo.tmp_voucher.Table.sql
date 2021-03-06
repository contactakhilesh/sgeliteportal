USE [appdata]
GO
/****** Object:  Table [dbo].[tmp_voucher]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_voucher]
GO
/****** Object:  Table [dbo].[tmp_voucher]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_voucher]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_voucher](
	[VOUCHER_N] [numeric](10, 0) NOT NULL,
	[VOC_TRA_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VOC_REF_N] [numeric](10, 0) NOT NULL,
	[VOC_JOB_N] [numeric](10, 0) NOT NULL,
	[VOUCHER_D] [datetime] NOT NULL,
	[COST_CENTRE_C] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VENDOR_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VESSEL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VOYAGE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NULL,
	[REF_EX_RATE] [numeric](11, 5) NULL,
	[VOC_EX_RATE] [numeric](11, 5) NULL,
	[CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_LOAD_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_DISC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ENTRY_D] [datetime] NULL,
	[VOID_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EXPORT_IND] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TERM_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHQ_NO] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[tmp_voucher] ADD [BANK] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[tmp_voucher] ADD [DOC_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [DOC_NAME] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [PAY_DATE] [datetime] NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [DOC_DATE] [datetime] NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [DOC_IND] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [PO_NO] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [PO_DATE] [datetime] NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [DOC_DUE_DATE] [datetime] NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [DOC_TERM] [numeric](5, 0) NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [AC_PERIOD] [numeric](2, 0) NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [AC_YEAR] [numeric](4, 0) NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [CHEQUE_NO] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[tmp_voucher] ADD [VOC_EX_RATE_USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [VOC_EX_RATE_ENTRY_D] [datetime] NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [VOC_EX_RATE_USD] [numeric](11, 5) NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [REMARKS3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [REMARKS4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [REMARKS5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[tmp_voucher] ADD [CONTROL_FLAG] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [INVOICE_N] [numeric](10, 0) NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [REV_VOUCHER_N] [numeric](10, 0) NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[tmp_voucher] ADD [isautocreated] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[tmp_voucher] ADD [entity_rowid] [numeric](18, 0) NULL
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_voucher] TO  SCHEMA OWNER 
GO
