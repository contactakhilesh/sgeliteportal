USE [appdata]
GO
/****** Object:  Trigger [postupdate_ar_invoice]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_ar_invoice]
GO
/****** Object:  Trigger [postinsert_ar_invoice]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_ar_invoice]
GO
/****** Object:  Trigger [postdelete_ar_invoice]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_ar_invoice]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AR_INVOICE]') AND type in (N'U'))
ALTER TABLE [dbo].[AR_INVOICE] DROP CONSTRAINT IF EXISTS [DF__AR_INVOIC__iscon__2A0CEAEA]
GO
/****** Object:  Index [AR_X1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [AR_X1] ON [dbo].[AR_INVOICE]
GO
/****** Object:  Index [ar_invoice_idx6]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [ar_invoice_idx6] ON [dbo].[AR_INVOICE]
GO
/****** Object:  Index [ar_invoice_idx5]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [ar_invoice_idx5] ON [dbo].[AR_INVOICE]
GO
/****** Object:  Index [ar_invoice_idx2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [ar_invoice_idx2] ON [dbo].[AR_INVOICE]
GO
/****** Object:  Table [dbo].[AR_INVOICE]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[AR_INVOICE]
GO
/****** Object:  Table [dbo].[AR_INVOICE]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AR_INVOICE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AR_INVOICE](
	[DOC_TYPE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DOC_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PARTY_CODE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PARTY_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOC_DT] [datetime] NULL,
	[DOC_TERM] [numeric](6, 0) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REMARKS1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOC_CURR] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOC_EX_RATE] [numeric](11, 6) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_DORC] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHQ_NO] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHQ_DT] [datetime] NULL,
	[POST_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CLOSE_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PAID_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BAL_AMT] [numeric](15, 2) NULL,
	[entry_d] [datetime] NULL,
	[user_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_dt] [datetime] NULL,
	[modified_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CR_DOC_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[yy_invoice_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[isconsolidated] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[inv_tra_type] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[yy_invoice_dt] [datetime] NULL,
	[invoice_n] [numeric](10, 0) NULL,
	[trn_environment] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[trn_voucher_n] [numeric](10, 0) NULL,
	[yy_invoice_amt] [numeric](15, 2) NULL,
 CONSTRAINT [PK_INCPOV] PRIMARY KEY NONCLUSTERED 
(
	[DOC_NO] ASC,
	[DOC_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[AR_INVOICE] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[AR_INVOICE] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ar_invoice_idx2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AR_INVOICE]') AND name = N'ar_invoice_idx2')
CREATE NONCLUSTERED INDEX [ar_invoice_idx2] ON [dbo].[AR_INVOICE]
(
	[CR_DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ar_invoice_idx5]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AR_INVOICE]') AND name = N'ar_invoice_idx5')
CREATE NONCLUSTERED INDEX [ar_invoice_idx5] ON [dbo].[AR_INVOICE]
(
	[DOC_NO] ASC,
	[DOC_TYPE] ASC,
	[POST_IND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ar_invoice_idx6]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AR_INVOICE]') AND name = N'ar_invoice_idx6')
CREATE NONCLUSTERED INDEX [ar_invoice_idx6] ON [dbo].[AR_INVOICE]
(
	[invoice_n] ASC,
	[DOC_TYPE] ASC,
	[POST_IND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AR_X1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AR_INVOICE]') AND name = N'AR_X1')
CREATE NONCLUSTERED INDEX [AR_X1] ON [dbo].[AR_INVOICE]
(
	[DOC_TYPE] ASC,
	[DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
