USE [AMERICA]
GO
/****** Object:  Table [dbo].[GL_ENTRY]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GL_ENTRY](
	[GL_TRANS_NO] [numeric](10, 0) NOT NULL,
	[POST_TRANS_NO] [numeric](10, 0) NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AR_AP_IND] [varchar](2) NULL,
	[AC_SOURCE] [varchar](2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[DOC_NO] [varchar](40) NULL,
	[DOC_TYPE] [varchar](2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[POST_DT] [datetime] NULL,
	[DOC_DT] [datetime] NULL,
	[PARTY_ID] [varchar](50) NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[CHQ_NO] [varchar](40) NULL,
	[BANK_IND] [varchar](1) NULL,
	[BANK_DT] [datetime] NULL,
	[CHQ_DT] [datetime] NULL,
	[REMARKS] [varchar](50) NULL,
	[NET] [numeric](15, 2) NULL,
	[TERM_ID] [varchar](10) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REV_TRANS_NO] [numeric](10, 0) NULL,
	[AC_ACTIVE] [char](1) NULL,
	[yy_invoice_no] [varchar](30) NULL,
	[yy_invoice_dt] [datetime] NULL,
	[IsExportedToYY] [char](1) NOT NULL,
	[GLFileName] [varchar](255) NULL,
	[cost_centre_c] [varchar](10) NULL,
 CONSTRAINT [PK_GL_ENTRY] PRIMARY KEY NONCLUSTERED 
(
	[GL_TRANS_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[GL_ENTRY] TO  SCHEMA OWNER 
GO
