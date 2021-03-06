USE [AMERICA]
GO
/****** Object:  Table [dbo].[GL_ENTRY_DET]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GL_ENTRY_DET](
	[GL_TRANS_NO] [numeric](10, 0) NOT NULL,
	[GL_LINE_NO] [numeric](4, 0) NOT NULL,
	[AC_SOURCE] [varchar](2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[EX_RATE] [numeric](12, 5) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[DOC_NO] [varchar](40) NULL,
	[DOC_DT] [datetime] NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[PARTY_ID] [varchar](50) NULL,
	[DOC_TYPE] [varchar](2) NULL,
	[AR_AP_IND] [varchar](2) NULL,
	[REMARKS] [varchar](50) NULL,
	[NET] [numeric](15, 2) NULL,
	[PAID_DOC] [varchar](30) NULL,
	[PAID_TYPE] [varchar](2) NULL,
	[INV_DT] [datetime] NULL,
	[GST_TYPE] [char](1) NULL,
	[PERSON_ID] [varchar](20) NULL,
 CONSTRAINT [PK_GL_ENTRY_DET] PRIMARY KEY NONCLUSTERED 
(
	[GL_TRANS_NO] ASC,
	[GL_LINE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[GL_ENTRY_DET] TO  SCHEMA OWNER 
GO
