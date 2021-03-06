USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AR_INVOICE](
	[DOC_TYPE] [varchar](2) NOT NULL,
	[DOC_NO] [varchar](20) NOT NULL,
	[AC_YEAR] [numeric](4, 0) NULL,
	[AC_PERIOD] [numeric](2, 0) NULL,
	[AC_TR_NO] [numeric](10, 0) NULL,
	[AC_TR_SRC] [varchar](2) NULL,
	[PARTY_CODE] [varchar](20) NULL,
	[PARTY_TYPE] [varchar](1) NULL,
	[DOC_DT] [datetime] NULL,
	[DOC_TERM] [numeric](6, 0) NULL,
	[DOC_DUE_DT] [datetime] NULL,
	[REMARKS1] [varchar](50) NULL,
	[REMARKS2] [varchar](50) NULL,
	[REMARKS3] [varchar](50) NULL,
	[DOC_CURR] [varchar](10) NULL,
	[DOC_EX_RATE] [numeric](11, 6) NULL,
	[DOC_AMT] [numeric](15, 2) NULL,
	[LOC_AMT] [numeric](15, 2) NULL,
	[AC_CODE] [numeric](20, 4) NULL,
	[AC_DORC] [varchar](2) NULL,
	[CHQ_NO] [varchar](15) NULL,
	[CHQ_DT] [datetime] NULL,
	[POST_IND] [varchar](1) NULL,
	[CLOSE_IND] [varchar](1) NULL,
	[TERM_ID] [varchar](10) NULL,
	[PAID_IND] [varchar](1) NULL,
	[BAL_AMT] [numeric](15, 2) NULL,
	[entry_d] [datetime] NULL,
	[user_id] [varchar](20) NULL,
	[modified_dt] [datetime] NULL,
	[modified_by] [varchar](20) NULL,
	[CR_DOC_NO] [varchar](20) NULL,
	[yy_invoice_no] [varchar](20) NULL,
	[isconsolidated] [char](1) NOT NULL,
	[inv_tra_type] [char](1) NULL,
	[yy_invoice_dt] [datetime] NULL,
	[invoice_n] [numeric](10, 0) NULL,
	[trn_environment] [varchar](20) NULL,
	[trn_voucher_n] [numeric](10, 0) NULL,
	[yy_invoice_amt] [numeric](15, 2) NULL,
 CONSTRAINT [PK_INCPOV] PRIMARY KEY NONCLUSTERED 
(
	[DOC_NO] ASC,
	[DOC_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
