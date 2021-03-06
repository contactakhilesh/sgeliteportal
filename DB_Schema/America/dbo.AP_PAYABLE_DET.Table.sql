USE [AMERICA]
GO
/****** Object:  Table [dbo].[AP_PAYABLE_DET]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AP_PAYABLE_DET](
	[AC_TR_NO] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](4, 0) NOT NULL,
	[LINE_DOC_NO] [varchar](20) NULL,
	[AC_CODE] [numeric](10, 0) NULL,
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
	[PAID_IND] [varchar](1) NULL,
	[BAL_AMT] [numeric](15, 2) NULL,
	[PARTY_ID] [varchar](30) NULL,
	[ACT_YEAR] [numeric](4, 0) NULL,
	[ACT_PERIOD] [numeric](2, 0) NULL,
	[DOC_DATE] [datetime] NULL,
	[GST_TYPE] [char](1) NULL,
 CONSTRAINT [PK_PAYABLE_DET] PRIMARY KEY NONCLUSTERED 
(
	[AC_TR_NO] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[AP_PAYABLE_DET] TO  SCHEMA OWNER 
GO
