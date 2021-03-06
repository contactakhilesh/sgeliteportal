USE [appdata]
GO
/****** Object:  Index [ap_payment_det_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [ap_payment_det_idx1] ON [dbo].[AP_PAYMENT_DET]
GO
/****** Object:  Table [dbo].[AP_PAYMENT_DET]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[AP_PAYMENT_DET]
GO
/****** Object:  Table [dbo].[AP_PAYMENT_DET]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AP_PAYMENT_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AP_PAYMENT_DET](
	[LINE_N] [numeric](4, 0) NOT NULL,
	[LINE_DOC_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_TR_SRC] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AC_DORC] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_DOC_TYPE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMAKRS2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMAKRS3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_EX_RATE] [numeric](12, 5) NULL,
	[LINE_LOC_AMT] [numeric](15, 2) NULL,
	[INV_CR_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SUPP_INVOICE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHECK_DOC_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PARTY_ID] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ACT_YEAR] [numeric](4, 0) NULL,
	[ACT_PERIOD] [numeric](2, 0) NULL,
	[DOC_DATE] [datetime] NULL,
	[INV_DT] [datetime] NULL,
 CONSTRAINT [PK_PAYAMENT_DETX] PRIMARY KEY NONCLUSTERED 
(
	[LINE_N] ASC,
	[LINE_DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[AP_PAYMENT_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[AP_PAYMENT_DET] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ap_payment_det_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AP_PAYMENT_DET]') AND name = N'ap_payment_det_idx1')
CREATE NONCLUSTERED INDEX [ap_payment_det_idx1] ON [dbo].[AP_PAYMENT_DET]
(
	[INV_CR_NO] ASC,
	[LINE_DOC_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
