USE [AMERICA]
GO
/****** Object:  Table [dbo].[invoice_det_910492]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invoice_det_910492](
	[FY] [varchar](4) NOT NULL,
	[INVOICE_N] [numeric](10, 0) NOT NULL,
	[INV_LINE_N] [numeric](10, 0) NOT NULL,
	[CHGCODE_ID] [varchar](40) NOT NULL,
	[CHG_DES1] [varchar](40) NOT NULL,
	[CHG_DES2] [varchar](40) NOT NULL,
	[CHG_DES3] [varchar](40) NOT NULL,
	[CHG_DES4] [varchar](40) NOT NULL,
	[LINE_GST_TYPE] [varchar](1) NOT NULL,
	[LINE_WT_M3_IND] [varchar](1) NOT NULL,
	[LINE_UNIT_Q] [numeric](11, 4) NOT NULL,
	[LINE_UNIT_CHG_A] [numeric](12, 4) NOT NULL,
	[LINE_CHG_UNIT] [varchar](10) NOT NULL,
	[LINE_EX_RATE] [numeric](11, 5) NOT NULL,
	[LINE_GST_P] [numeric](11, 3) NOT NULL,
	[LINE_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_A] [numeric](11, 2) NOT NULL,
	[LINE_TOT_GST_A] [numeric](11, 2) NOT NULL,
	[LINE_CURRENCY] [varchar](10) NULL,
	[LINE_EX_RATE_USER_ID] [varchar](10) NULL,
	[LINE_EX_RATE_ENTRY_D] [datetime] NULL,
	[LINE_COST_CENTRE] [char](1) NULL,
	[trn_voucher_n] [numeric](10, 0) NULL,
	[trn_environment] [varchar](10) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[invoice_det_910492] TO  SCHEMA OWNER 
GO
