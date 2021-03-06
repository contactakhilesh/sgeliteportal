USE [AMERICA]
GO
/****** Object:  Table [dbo].[RECEIPT]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECEIPT](
	[RECEIPT_N] [numeric](10, 0) NOT NULL,
	[RECEIPT_YM] [varchar](10) NULL,
	[RECEIPT_D] [datetime] NULL,
	[CUST_ID] [varchar](10) NULL,
	[CUST_NAME] [varchar](70) NULL,
	[PROVIDE_FOR] [varchar](40) NULL,
	[BANK_NAME] [varchar](40) NULL,
	[CURRENCY_ID] [varchar](10) NULL,
	[EX_RATE] [numeric](11, 4) NULL,
	[PAY_A] [numeric](11, 2) NULL,
	[ENTRY_D] [datetime] NULL,
	[USER_ID] [varchar](10) NULL,
	[CHQ_N] [varchar](40) NULL,
	[PREPARD_BY] [varchar](20) NULL,
	[CHQ_DT] [datetime] NULL,
	[CHQ_AMT] [numeric](10, 4) NULL,
	[CASH_AMT] [numeric](10, 4) NULL,
	[EXPORT_IND] [varchar](1) NULL,
	[COST_CENTRE_C] [varchar](10) NULL,
 CONSTRAINT [PK_RECEIPT] PRIMARY KEY NONCLUSTERED 
(
	[RECEIPT_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[RECEIPT] TO  SCHEMA OWNER 
GO
