USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CUSTOMER_RATES_2018JAN15](
	[CUST_ID] [varchar](10) NOT NULL,
	[PORT_ID] [varchar](10) NOT NULL,
	[CHGCODE_ID] [varchar](10) NOT NULL,
	[TRA_TYPE] [varchar](1) NOT NULL,
	[PORT_LOAD_ID] [varchar](10) NOT NULL,
	[CHG_UNIT_A] [numeric](11, 3) NOT NULL,
	[CHG_UNIT_Q] [numeric](11, 4) NOT NULL,
	[EX_RATE_IND] [varchar](1) NOT NULL,
	[AUTO_BILL_IND] [varchar](1) NOT NULL,
	[WT_M3_IND] [varchar](1) NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[REMARKS] [varchar](40) NULL,
	[CONV_R] [numeric](11, 2) NULL,
	[MIN_CHG_A] [numeric](11, 2) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[CONTRACT_N] [varchar](20) NOT NULL,
	[CONSIGNEE_ID] [varchar](10) NULL,
	[VENDOR_ID] [varchar](10) NULL,
	[COST_Q] [numeric](11, 3) NULL,
	[CHG_TYPE] [varchar](10) NULL,
	[CHG_GST] [varchar](10) NULL,
	[SEQ_N] [numeric](11, 0) NULL
) ON [PRIMARY]

GO
