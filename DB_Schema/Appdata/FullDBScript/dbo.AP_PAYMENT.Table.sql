USE [appdata]
GO
/****** Object:  Table [dbo].[AP_PAYMENT]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[AP_PAYMENT]
GO
/****** Object:  Table [dbo].[AP_PAYMENT]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AP_PAYMENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AP_PAYMENT](
	[DOC_NO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PARTY_CODE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PARTY_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOC_TYPE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
	[CHQ_NO] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHQ_DT] [datetime] NULL,
	[CLOSE_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POST_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BANK_REC] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BANK_DT] [datetime] NULL,
	[cost_centre_c] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_PAYMENT] PRIMARY KEY NONCLUSTERED 
(
	[DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[AP_PAYMENT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[AP_PAYMENT] TO [public] AS [dbo]
GO
