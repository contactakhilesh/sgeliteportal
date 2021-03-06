USE [appdata]
GO
/****** Object:  Trigger [trg_u_invoice]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_u_invoice]
GO
/****** Object:  Trigger [trg_i_invoice]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_i_invoice]
GO
/****** Object:  Trigger [trg_after_upd_invoice]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_upd_invoice]
GO
/****** Object:  Trigger [trg_after_ins_invoice]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_ins_invoice]
GO
/****** Object:  Trigger [postupdate_invoice]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_invoice]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND type in (N'U'))
ALTER TABLE [dbo].[INVOICE] DROP CONSTRAINT IF EXISTS [CK__INVOICE__INVOICE__0D7A0286]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND type in (N'U'))
ALTER TABLE [dbo].[INVOICE] DROP CONSTRAINT IF EXISTS [FK_invoice_entity_rowid]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND type in (N'U'))
ALTER TABLE [dbo].[INVOICE] DROP CONSTRAINT IF EXISTS [FK_INVOICE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND type in (N'U'))
ALTER TABLE [dbo].[INVOICE] DROP CONSTRAINT IF EXISTS [DF__INVOICE__upd_app__2D7E5472]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND type in (N'U'))
ALTER TABLE [dbo].[INVOICE] DROP CONSTRAINT IF EXISTS [invoice_isautocreated_default]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND type in (N'U'))
ALTER TABLE [dbo].[INVOICE] DROP CONSTRAINT IF EXISTS [DF__INVOICE__type__715E7D73]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND type in (N'U'))
ALTER TABLE [dbo].[INVOICE] DROP CONSTRAINT IF EXISTS [DF__INVOICE__hub_row__2FC5C440]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND type in (N'U'))
ALTER TABLE [dbo].[INVOICE] DROP CONSTRAINT IF EXISTS [DF_INVOICE_CONTROL_FLAG]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND type in (N'U'))
ALTER TABLE [dbo].[INVOICE] DROP CONSTRAINT IF EXISTS [DF__INVOICE__INV_TOT__123EB7A3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND type in (N'U'))
ALTER TABLE [dbo].[INVOICE] DROP CONSTRAINT IF EXISTS [DF__INVOICE__INV_TOT__114A936A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND type in (N'U'))
ALTER TABLE [dbo].[INVOICE] DROP CONSTRAINT IF EXISTS [DF__INVOICE__INV_TOT__10566F31]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND type in (N'U'))
ALTER TABLE [dbo].[INVOICE] DROP CONSTRAINT IF EXISTS [DF__INVOICE__INV_TOT__0F624AF8]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND type in (N'U'))
ALTER TABLE [dbo].[INVOICE] DROP CONSTRAINT IF EXISTS [DF__INVOICE__INV_GST__0E6E26BF]
GO
/****** Object:  Index [voucher_inv_autocreated]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [voucher_inv_autocreated] ON [dbo].[INVOICE]
GO
/****** Object:  Index [IX_REF_INV]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_REF_INV] ON [dbo].[INVOICE]
GO
/****** Object:  Index [IX_JOB_REF]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_JOB_REF] ON [dbo].[INVOICE]
GO
/****** Object:  Index [invoice_idx4]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [invoice_idx4] ON [dbo].[INVOICE]
GO
/****** Object:  Index [invoice_idx3]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [invoice_idx3] ON [dbo].[INVOICE]
GO
/****** Object:  Index [invoice_idx2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [invoice_idx2] ON [dbo].[INVOICE]
GO
/****** Object:  Index [invoice_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [invoice_idx1] ON [dbo].[INVOICE]
GO
/****** Object:  Index [I_InvoiceInvRefN]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_InvoiceInvRefN] ON [dbo].[INVOICE]
GO
/****** Object:  Index [I_InvoiceInvoiceN]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_InvoiceInvoiceN] ON [dbo].[INVOICE]
GO
/****** Object:  Index [_dta_index_INVOICE_9_1798297466__K70_2_7_8]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_INVOICE_9_1798297466__K70_2_7_8] ON [dbo].[INVOICE]
GO
/****** Object:  Index [_dta_index_INVOICE_c_7_1798297466__K2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_INVOICE_c_7_1798297466__K2] ON [dbo].[INVOICE] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[INVOICE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[INVOICE]
GO
/****** Object:  Table [dbo].[INVOICE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[INVOICE](
	[FY] [varchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[INVOICE_N] [numeric](10, 0) NOT NULL,
	[INV_D] [datetime] NOT NULL,
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[INV_YM] [varchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_REF_N] [numeric](10, 0) NOT NULL,
	[INV_JOB_N] [numeric](10, 0) NOT NULL,
	[INV_TRA_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[INV_PRN_D] [datetime] NOT NULL,
	[INV_PRN_COUNT] [numeric](2, 0) NOT NULL,
	[INV_CANCEL_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[INV_CANCEL_D] [datetime] NOT NULL,
	[CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[INV_EX_RATE] [numeric](11, 6) NULL,
	[REF_EX_RATE] [numeric](11, 6) NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NULL,
	[TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COST_CENTRE_C] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VESSEL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VOYAGE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HBL_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[OCEAN_BL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GD_DES1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES5] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_LOAD_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_DISC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOT_WT] [numeric](11, 3) NOT NULL,
	[TOT_M3] [numeric](11, 3) NOT NULL,
	[TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[TOT_PACK_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[INV_GST_A] [numeric](11, 2) NOT NULL,
	[INV_TOT_STD_RATE_A] [numeric](11, 2) NOT NULL,
	[INV_TOT_ZERO_RATE_A] [numeric](11, 2) NOT NULL,
	[INV_TOT_A] [numeric](11, 2) NOT NULL,
	[INV_TOT_GST_A] [numeric](11, 2) NOT NULL,
	[INV_TYPE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PRINT_N] [numeric](5, 0) NULL,
	[EXPORT_IND] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VOID_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TT_PAYDATE] [datetime] NULL,
	[TT_CUST] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TT_CURR] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TT_AMT] [numeric](11, 2) NULL,
	[TT_PULLDATE] [datetime] NULL,
	[INV_EX_RATE_USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_EX_RATE_ENTRY_D] [datetime] NULL,
	[INV_EX_RATE_USD] [numeric](11, 6) NULL,
	[CONT_FLAG] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GD_DESC5] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GD_DESC6] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GD_DESC7] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_STAMP_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_OTH_REF] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REFBL_ID] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[INVOICE] ADD [CONTROL_FLAG] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[INVOICE] ADD [WITHHOLD_TAX] [numeric](3, 0) NULL
ALTER TABLE [dbo].[INVOICE] ADD [modified_dt] [datetime] NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[INVOICE] ADD [modified_user] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[INVOICE] ADD [REV_CRINV_N] [numeric](10, 0) NULL
ALTER TABLE [dbo].[INVOICE] ADD [cost_centre_acctg] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[INVOICE] ADD [entity_rowid] [numeric](18, 0) NULL
ALTER TABLE [dbo].[INVOICE] ADD [ar_doc_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[INVOICE] ADD [hub_rowid] [numeric](10, 0) NOT NULL
ALTER TABLE [dbo].[INVOICE] ADD [yy_invoice_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[INVOICE] ADD [yy_invoice_dt] [datetime] NULL
ALTER TABLE [dbo].[INVOICE] ADD [ar_doc_dt] [datetime] NULL
ALTER TABLE [dbo].[INVOICE] ADD [type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[INVOICE] ADD [isautocreated] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[INVOICE] ADD [upd_app] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[INVOICE] ADD [lsr_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[INVOICE] ADD [TO_ENVI] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[INVOICE] ADD [TO_ENVI_JOB] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[INVOICE] ADD [BILL_TO_PARTY] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[INVOICE] ADD [IS_GROUP] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[INVOICE] ADD [GROUP_NO] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[INVOICE] ADD [APPROVED_BY] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[INVOICE] ADD [APPROVED_DATE] [datetime] NULL
ALTER TABLE [dbo].[INVOICE] ADD [PROCESS_FLAG] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[INVOICE] ADD [PROCESS_DATE] [datetime] NULL
ALTER TABLE [dbo].[INVOICE] ADD [rejected_flag] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
 CONSTRAINT [PK_INVOICE] PRIMARY KEY NONCLUSTERED 
(
	[FY] ASC,
	[INVOICE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[INVOICE] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[INVOICE] TO [public] AS [dbo]
GO
/****** Object:  Index [_dta_index_INVOICE_c_7_1798297466__K2]    Script Date: 3/14/2018 6:12:01 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND name = N'_dta_index_INVOICE_c_7_1798297466__K2')
CREATE CLUSTERED INDEX [_dta_index_INVOICE_c_7_1798297466__K2] ON [dbo].[INVOICE]
(
	[INVOICE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_INVOICE_9_1798297466__K70_2_7_8]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND name = N'_dta_index_INVOICE_9_1798297466__K70_2_7_8')
CREATE NONCLUSTERED INDEX [_dta_index_INVOICE_9_1798297466__K70_2_7_8] ON [dbo].[INVOICE]
(
	[ar_doc_no] ASC
)
INCLUDE ( 	[INVOICE_N],
	[INV_JOB_N],
	[INV_TRA_TYPE]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [I_InvoiceInvoiceN]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND name = N'I_InvoiceInvoiceN')
CREATE NONCLUSTERED INDEX [I_InvoiceInvoiceN] ON [dbo].[INVOICE]
(
	[INVOICE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [I_InvoiceInvRefN]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND name = N'I_InvoiceInvRefN')
CREATE NONCLUSTERED INDEX [I_InvoiceInvRefN] ON [dbo].[INVOICE]
(
	[INV_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [invoice_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND name = N'invoice_idx1')
CREATE NONCLUSTERED INDEX [invoice_idx1] ON [dbo].[INVOICE]
(
	[REV_CRINV_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [invoice_idx2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND name = N'invoice_idx2')
CREATE NONCLUSTERED INDEX [invoice_idx2] ON [dbo].[INVOICE]
(
	[INV_JOB_N] ASC,
	[CURRENCY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [invoice_idx3]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND name = N'invoice_idx3')
CREATE NONCLUSTERED INDEX [invoice_idx3] ON [dbo].[INVOICE]
(
	[INV_JOB_N] ASC,
	[INVOICE_N] ASC,
	[CUST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [invoice_idx4]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND name = N'invoice_idx4')
CREATE NONCLUSTERED INDEX [invoice_idx4] ON [dbo].[INVOICE]
(
	[INV_D] ASC,
	[CUST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_JOB_REF]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND name = N'IX_JOB_REF')
CREATE NONCLUSTERED INDEX [IX_JOB_REF] ON [dbo].[INVOICE]
(
	[INV_JOB_N] ASC,
	[INV_REF_N] ASC,
	[INV_TRA_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [IX_REF_INV]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND name = N'IX_REF_INV')
CREATE NONCLUSTERED INDEX [IX_REF_INV] ON [dbo].[INVOICE]
(
	[INV_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [voucher_inv_autocreated]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[INVOICE]') AND name = N'voucher_inv_autocreated')
CREATE NONCLUSTERED INDEX [voucher_inv_autocreated] ON [dbo].[INVOICE]
(
	[INVOICE_N] ASC,
	[isautocreated] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_INVOICE]') AND parent_object_id = OBJECT_ID(N'[dbo].[INVOICE]'))
ALTER TABLE [dbo].[INVOICE]  WITH NOCHECK ADD  CONSTRAINT [FK_INVOICE] FOREIGN KEY([CUST_ID])
REFERENCES [dbo].[CUSTOMER_MAST] ([CUST_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_INVOICE]') AND parent_object_id = OBJECT_ID(N'[dbo].[INVOICE]'))
ALTER TABLE [dbo].[INVOICE] CHECK CONSTRAINT [FK_INVOICE]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_invoice_entity_rowid]') AND parent_object_id = OBJECT_ID(N'[dbo].[INVOICE]'))
ALTER TABLE [dbo].[INVOICE]  WITH CHECK ADD  CONSTRAINT [FK_invoice_entity_rowid] FOREIGN KEY([entity_rowid])
REFERENCES [dbo].[entity_info] ([row_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_invoice_entity_rowid]') AND parent_object_id = OBJECT_ID(N'[dbo].[INVOICE]'))
ALTER TABLE [dbo].[INVOICE] CHECK CONSTRAINT [FK_invoice_entity_rowid]
GO
