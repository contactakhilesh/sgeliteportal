USE [appdata]
GO
/****** Object:  Table [dbo].[tempvoucher]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tempvoucher]
GO
/****** Object:  Table [dbo].[tempvoucher]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tempvoucher]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tempvoucher](
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
	[REMARKS2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[tempvoucher] ADD [USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[tempvoucher] ADD [ENTRY_D] [datetime] NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[tempvoucher] ADD [VOID_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [EXPORT_IND] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [TERM_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [CHQ_NO] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[tempvoucher] ADD [BANK] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[tempvoucher] ADD [DOC_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [DOC_NAME] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [PAY_DATE] [datetime] NULL
ALTER TABLE [dbo].[tempvoucher] ADD [DOC_DATE] [datetime] NULL
ALTER TABLE [dbo].[tempvoucher] ADD [DOC_IND] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [PO_NO] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [PO_DATE] [datetime] NULL
ALTER TABLE [dbo].[tempvoucher] ADD [DOC_DUE_DATE] [datetime] NULL
ALTER TABLE [dbo].[tempvoucher] ADD [DOC_TERM] [numeric](5, 0) NULL
ALTER TABLE [dbo].[tempvoucher] ADD [AC_PERIOD] [numeric](2, 0) NULL
ALTER TABLE [dbo].[tempvoucher] ADD [AC_YEAR] [numeric](4, 0) NULL
ALTER TABLE [dbo].[tempvoucher] ADD [CHEQUE_NO] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[tempvoucher] ADD [VOC_EX_RATE_USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [VOC_EX_RATE_ENTRY_D] [datetime] NULL
ALTER TABLE [dbo].[tempvoucher] ADD [VOC_EX_RATE_USD] [numeric](11, 5) NULL
ALTER TABLE [dbo].[tempvoucher] ADD [REMARKS3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [REMARKS4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [REMARKS5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[tempvoucher] ADD [CONTROL_FLAG] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [INVOICE_N] [numeric](10, 0) NULL
ALTER TABLE [dbo].[tempvoucher] ADD [REV_VOUCHER_N] [numeric](10, 0) NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[tempvoucher] ADD [isautocreated] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[tempvoucher] ADD [entity_rowid] [numeric](18, 0) NULL
ALTER TABLE [dbo].[tempvoucher] ADD [yy_invoice_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [yy_invoice_dt] [datetime] NULL
ALTER TABLE [dbo].[tempvoucher] ADD [type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[tempvoucher] ADD [orig_invoice] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [orig_environment] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [trn_proc_dt] [datetime] NULL
ALTER TABLE [dbo].[tempvoucher] ADD [TO_ENVI] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [APPROVED_BY] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [APPROVED_DATE] [datetime] NULL
ALTER TABLE [dbo].[tempvoucher] ADD [PROCESS_FLAG] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tempvoucher] ADD [PROCESS_DATE] [datetime] NULL
ALTER TABLE [dbo].[tempvoucher] ADD [rejected_flag] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tempvoucher] TO  SCHEMA OWNER 
GO
