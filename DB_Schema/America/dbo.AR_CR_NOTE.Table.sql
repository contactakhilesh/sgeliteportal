USE [AMERICA]
GO
/****** Object:  Table [dbo].[AR_CR_NOTE]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AR_CR_NOTE](
	[DOC_NO] [varchar](20) NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](2) NULL,
	[PARTY_CODE] [varchar](20) NULL,
	[PARTY_TYPE] [varchar](1) NULL,
	[DOC_TYPE] [varchar](2) NULL,
	[DOC_DT] [datetime] NULL,
	[DOC_TERM] [numeric](6, 0) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REMARKS1] [varchar](50) NULL,
	[REMARKS2] [varchar](50) NULL,
	[REMARKS3] [varchar](50) NULL,
	[DOC_CURR] [varchar](10) NULL,
	[DOC_EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_DORC] [varchar](2) NULL,
	[CHQ_NO] [varchar](10) NULL,
	[CHQ_DT] [datetime] NULL,
	[POST_IND] [varchar](1) NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[CHGCODE_ID] [varchar](20) NULL,
	[PAID_IND] [varchar](1) NULL,
	[BAL_AMT] [numeric](15, 2) NULL,
 CONSTRAINT [PK_CR] PRIMARY KEY NONCLUSTERED 
(
	[DOC_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[AR_CR_NOTE] TO  SCHEMA OWNER 
GO
