USE [appdata]
GO
/****** Object:  Index [AP_Y1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [AP_Y1] ON [dbo].[AP_PAYABLE_DET]
GO
/****** Object:  Table [dbo].[AP_PAYABLE_DET]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[AP_PAYABLE_DET]
GO
/****** Object:  Table [dbo].[AP_PAYABLE_DET]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AP_PAYABLE_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AP_PAYABLE_DET](
	[AC_TR_NO] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](4, 0) NOT NULL,
	[LINE_DOC_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AC_CODE] [numeric](10, 0) NULL,
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
	[PAID_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BAL_AMT] [numeric](15, 2) NULL,
	[PARTY_ID] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ACT_YEAR] [numeric](4, 0) NULL,
	[ACT_PERIOD] [numeric](2, 0) NULL,
	[DOC_DATE] [datetime] NULL,
	[GST_TYPE] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_PAYABLE_DET] PRIMARY KEY NONCLUSTERED 
(
	[AC_TR_NO] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[AP_PAYABLE_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[AP_PAYABLE_DET] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AP_Y1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AP_PAYABLE_DET]') AND name = N'AP_Y1')
CREATE NONCLUSTERED INDEX [AP_Y1] ON [dbo].[AP_PAYABLE_DET]
(
	[LINE_DOC_NO] ASC,
	[LINE_DOC_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
