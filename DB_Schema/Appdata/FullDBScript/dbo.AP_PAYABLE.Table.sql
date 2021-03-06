USE [appdata]
GO
/****** Object:  Trigger [postupdate_ap_payable]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_ap_payable]
GO
/****** Object:  Trigger [postdelete_ap_payable]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_ap_payable]
GO
/****** Object:  Index [AP_X1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [AP_X1] ON [dbo].[AP_PAYABLE]
GO
/****** Object:  Index [ap_payable_idx2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [ap_payable_idx2] ON [dbo].[AP_PAYABLE]
GO
/****** Object:  Table [dbo].[AP_PAYABLE]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[AP_PAYABLE]
GO
/****** Object:  Table [dbo].[AP_PAYABLE]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AP_PAYABLE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AP_PAYABLE](
	[AC_TR_NO] [numeric](10, 0) NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_SRC] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PARTY_CODE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PARTY_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOC_TYPE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOC_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOC_DT] [datetime] NULL,
	[DOC_TERM] [numeric](3, 0) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REMARKS1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOC_CURR] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOC_EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[AC_CODE] [numeric](12, 4) NULL,
	[AC_DORC] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHQ_NO] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHQ_DT] [datetime] NULL,
	[CLOSE_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POST_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SYS_DOC_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[entry_d] [datetime] NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[AP_PAYABLE] ADD [user_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[AP_PAYABLE] ADD [modified_dt] [datetime] NULL
ALTER TABLE [dbo].[AP_PAYABLE] ADD [modified_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[AP_PAYABLE] ADD [REV_TR_NO] [numeric](10, 0) NULL
ALTER TABLE [dbo].[AP_PAYABLE] ADD [VOC_REF_N] [numeric](10, 0) NULL
ALTER TABLE [dbo].[AP_PAYABLE] ADD [yy_invoice_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[AP_PAYABLE] ADD [yy_invoice_dt] [datetime] NULL
ALTER TABLE [dbo].[AP_PAYABLE] ADD [cost_centre_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
 CONSTRAINT [PK_PAYABLE] PRIMARY KEY NONCLUSTERED 
(
	[AC_TR_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[AP_PAYABLE] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[AP_PAYABLE] TO [public] AS [dbo]
GO
/****** Object:  Index [ap_payable_idx2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AP_PAYABLE]') AND name = N'ap_payable_idx2')
CREATE NONCLUSTERED INDEX [ap_payable_idx2] ON [dbo].[AP_PAYABLE]
(
	[REV_TR_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [AP_X1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AP_PAYABLE]') AND name = N'AP_X1')
CREATE NONCLUSTERED INDEX [AP_X1] ON [dbo].[AP_PAYABLE]
(
	[DOC_NO] ASC,
	[DOC_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
