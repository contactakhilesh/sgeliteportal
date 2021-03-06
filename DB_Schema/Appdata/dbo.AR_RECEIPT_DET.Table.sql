USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AR_RECEIPT_DET](
	[LINE_N] [numeric](3, 0) NOT NULL,
	[LINE_DOC_NO] [varchar](20) NOT NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_TR_SRC] [varchar](1) NULL,
	[AC_DORC] [varchar](2) NULL,
	[LINE_DOC_TYPE] [varchar](2) NULL,
	[REMARKS1] [varchar](50) NULL,
	[REMAKRS2] [varchar](50) NULL,
	[REMAKRS3] [varchar](50) NULL,
	[LINE_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[LINE_EX_RATE] [numeric](12, 5) NULL,
	[LINE_LOC_AMT] [numeric](15, 2) NULL,
	[INVOICE_NO] [varchar](20) NULL,
	[SUPP_INVOICE] [varchar](20) NULL,
	[CHECK_DOC_TYPE] [varchar](1) NULL,
	[PARTY_ID] [varchar](30) NULL,
	[DOC_DATE] [datetime] NULL,
	[ACT_YEAR] [numeric](4, 0) NULL,
	[ACT_PERIOD] [numeric](2, 0) NULL,
	[INV_DT] [datetime] NULL,
 CONSTRAINT [PK_RECEIPT_DET_AR] PRIMARY KEY NONCLUSTERED 
(
	[LINE_N] ASC,
	[LINE_DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
