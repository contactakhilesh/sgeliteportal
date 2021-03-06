USE [appdata]
GO
/****** Object:  Trigger [TRG_U_VOUCHER]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_U_VOUCHER]
GO
/****** Object:  Trigger [TRG_postinsert_voucher]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_postinsert_voucher]
GO
/****** Object:  Trigger [postdelete_voucher]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_voucher]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VOUCHER]') AND type in (N'U'))
ALTER TABLE [dbo].[VOUCHER] DROP CONSTRAINT IF EXISTS [FK_voucher_entity_rowid]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VOUCHER]') AND type in (N'U'))
ALTER TABLE [dbo].[VOUCHER] DROP CONSTRAINT IF EXISTS [DF__VOUCHER__type__7252A1AC]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VOUCHER]') AND type in (N'U'))
ALTER TABLE [dbo].[VOUCHER] DROP CONSTRAINT IF EXISTS [DF__VOUCHER__isautoc__56BF95D0]
GO
/****** Object:  Index [voucher_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [voucher_idx1] ON [dbo].[VOUCHER]
GO
/****** Object:  Index [IX_REF_VOC]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_REF_VOC] ON [dbo].[VOUCHER]
GO
/****** Object:  Index [I_VoucherVocRefNControlFlag]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_VoucherVocRefNControlFlag] ON [dbo].[VOUCHER]
GO
/****** Object:  Index [_dta_index_VOUCHER_c_9_1346103836__K45_K4]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_VOUCHER_c_9_1346103836__K45_K4] ON [dbo].[VOUCHER] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[VOUCHER]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[VOUCHER]
GO
/****** Object:  Table [dbo].[VOUCHER]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VOUCHER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VOUCHER](
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
ALTER TABLE [dbo].[VOUCHER] ADD [USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[VOUCHER] ADD [ENTRY_D] [datetime] NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[VOUCHER] ADD [VOID_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [EXPORT_IND] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [TERM_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [CHQ_NO] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[VOUCHER] ADD [BANK] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[VOUCHER] ADD [DOC_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [DOC_NAME] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [PAY_DATE] [datetime] NULL
ALTER TABLE [dbo].[VOUCHER] ADD [DOC_DATE] [datetime] NULL
ALTER TABLE [dbo].[VOUCHER] ADD [DOC_IND] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [PO_NO] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [PO_DATE] [datetime] NULL
ALTER TABLE [dbo].[VOUCHER] ADD [DOC_DUE_DATE] [datetime] NULL
ALTER TABLE [dbo].[VOUCHER] ADD [DOC_TERM] [numeric](5, 0) NULL
ALTER TABLE [dbo].[VOUCHER] ADD [AC_PERIOD] [numeric](2, 0) NULL
ALTER TABLE [dbo].[VOUCHER] ADD [AC_YEAR] [numeric](4, 0) NULL
ALTER TABLE [dbo].[VOUCHER] ADD [CHEQUE_NO] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[VOUCHER] ADD [VOC_EX_RATE_USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [VOC_EX_RATE_ENTRY_D] [datetime] NULL
ALTER TABLE [dbo].[VOUCHER] ADD [VOC_EX_RATE_USD] [numeric](11, 5) NULL
ALTER TABLE [dbo].[VOUCHER] ADD [REMARKS3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [REMARKS4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [REMARKS5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[VOUCHER] ADD [CONTROL_FLAG] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [INVOICE_N] [numeric](10, 0) NULL
ALTER TABLE [dbo].[VOUCHER] ADD [REV_VOUCHER_N] [numeric](10, 0) NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[VOUCHER] ADD [isautocreated] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[VOUCHER] ADD [entity_rowid] [numeric](18, 0) NULL
ALTER TABLE [dbo].[VOUCHER] ADD [yy_invoice_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [yy_invoice_dt] [datetime] NULL
ALTER TABLE [dbo].[VOUCHER] ADD [type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[VOUCHER] ADD [orig_invoice] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [orig_environment] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [trn_proc_dt] [datetime] NULL
ALTER TABLE [dbo].[VOUCHER] ADD [TO_ENVI] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [APPROVED_BY] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [APPROVED_DATE] [datetime] NULL
ALTER TABLE [dbo].[VOUCHER] ADD [PROCESS_FLAG] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[VOUCHER] ADD [PROCESS_DATE] [datetime] NULL
ALTER TABLE [dbo].[VOUCHER] ADD [rejected_flag] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
 CONSTRAINT [PK_VOUCHER] PRIMARY KEY NONCLUSTERED 
(
	[VOUCHER_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[VOUCHER] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[VOUCHER] TO [public] AS [dbo]
GO
/****** Object:  Index [_dta_index_VOUCHER_c_9_1346103836__K45_K4]    Script Date: 3/14/2018 6:12:01 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[VOUCHER]') AND name = N'_dta_index_VOUCHER_c_9_1346103836__K45_K4')
CREATE CLUSTERED INDEX [_dta_index_VOUCHER_c_9_1346103836__K45_K4] ON [dbo].[VOUCHER]
(
	[INVOICE_N] ASC,
	[VOC_JOB_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [I_VoucherVocRefNControlFlag]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[VOUCHER]') AND name = N'I_VoucherVocRefNControlFlag')
CREATE NONCLUSTERED INDEX [I_VoucherVocRefNControlFlag] ON [dbo].[VOUCHER]
(
	[VOC_REF_N] ASC,
	[CONTROL_FLAG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_REF_VOC]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[VOUCHER]') AND name = N'IX_REF_VOC')
CREATE NONCLUSTERED INDEX [IX_REF_VOC] ON [dbo].[VOUCHER]
(
	[VOC_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [voucher_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[VOUCHER]') AND name = N'voucher_idx1')
CREATE NONCLUSTERED INDEX [voucher_idx1] ON [dbo].[VOUCHER]
(
	[REV_VOUCHER_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_voucher_entity_rowid]') AND parent_object_id = OBJECT_ID(N'[dbo].[VOUCHER]'))
ALTER TABLE [dbo].[VOUCHER]  WITH CHECK ADD  CONSTRAINT [FK_voucher_entity_rowid] FOREIGN KEY([entity_rowid])
REFERENCES [dbo].[entity_info] ([row_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_voucher_entity_rowid]') AND parent_object_id = OBJECT_ID(N'[dbo].[VOUCHER]'))
ALTER TABLE [dbo].[VOUCHER] CHECK CONSTRAINT [FK_voucher_entity_rowid]
GO
