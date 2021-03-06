USE [appdata]
GO
/****** Object:  Trigger [postdelete_ap_voucher]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_ap_voucher]
GO
/****** Object:  Index [AP_X3]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [AP_X3] ON [dbo].[AP_VOUCHER]
GO
/****** Object:  Index [ap_voucher_idx4]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [ap_voucher_idx4] ON [dbo].[AP_VOUCHER]
GO
/****** Object:  Table [dbo].[AP_VOUCHER]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[AP_VOUCHER]
GO
/****** Object:  Table [dbo].[AP_VOUCHER]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AP_VOUCHER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AP_VOUCHER](
	[DOC_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PARTY_CODE] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PARTY_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOC_TYPE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_DORC] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHQ_NO] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHQ_DT] [datetime] NULL,
	[CLOSE_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POST_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BANK_REC] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BANK_DT] [datetime] NULL,
	[USER_ID] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REV_DOC_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cost_centre_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_VOUCH] PRIMARY KEY NONCLUSTERED 
(
	[DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[AP_VOUCHER] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[AP_VOUCHER] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ap_voucher_idx4]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AP_VOUCHER]') AND name = N'ap_voucher_idx4')
CREATE NONCLUSTERED INDEX [ap_voucher_idx4] ON [dbo].[AP_VOUCHER]
(
	[REV_DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AP_X3]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AP_VOUCHER]') AND name = N'AP_X3')
CREATE NONCLUSTERED INDEX [AP_X3] ON [dbo].[AP_VOUCHER]
(
	[DOC_TYPE] ASC,
	[DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
