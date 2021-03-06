USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CR_NOTE_DET](
	[FY] [varchar](4) NOT NULL,
	[INVOICE_N] [numeric](10, 0) NOT NULL,
	[INV_LINE_N] [numeric](10, 0) NOT NULL,
	[CHGCODE_ID] [varchar](40) NOT NULL,
	[CHG_DES1] [varchar](40) NULL,
	[CHG_DES2] [varchar](40) NULL,
	[CHG_DES3] [varchar](40) NULL,
	[CHG_DES4] [varchar](40) NULL,
	[LINE_GST_TYPE] [varchar](1) NULL,
	[LINE_WT_M3_IND] [varchar](1) NULL,
	[LINE_UNIT_Q] [numeric](11, 3) NULL,
	[LINE_UNIT_CHG_A] [numeric](12, 3) NULL,
	[LINE_CHG_UNIT] [varchar](10) NULL,
	[LINE_EX_RATE] [numeric](11, 5) NULL,
	[LINE_GST_P] [numeric](11, 3) NULL,
	[LINE_GST_A] [numeric](11, 2) NULL,
	[LINE_TOT_A] [numeric](11, 2) NULL,
	[LINE_TOT_GST_A] [numeric](11, 2) NULL,
	[LINE_CURRENCY] [varchar](10) NULL,
	[LINE_EX_RATE_USER_ID] [varchar](10) NULL,
	[LINE_EX_RATE_ENTRY_D] [datetime] NULL,
 CONSTRAINT [PK_CR_NOTE_DET] PRIMARY KEY NONCLUSTERED 
(
	[FY] ASC,
	[INVOICE_N] ASC,
	[INV_LINE_N] ASC,
	[CHGCODE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
