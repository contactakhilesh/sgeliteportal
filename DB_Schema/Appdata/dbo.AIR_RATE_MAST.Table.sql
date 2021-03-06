USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AIR_RATE_MAST](
	[CUST_ID] [char](10) NOT NULL,
	[PORT_ID] [char](10) NOT NULL,
	[VENDOR_ID] [char](10) NOT NULL,
	[PORT_LOAD_ID] [varchar](10) NOT NULL,
	[AMT_MIN] [numeric](11, 3) NOT NULL,
	[AMT_45] [numeric](11, 3) NOT NULL,
	[AMT_100] [numeric](11, 3) NOT NULL,
	[AMT_250] [numeric](11, 3) NOT NULL,
	[AMT_500] [numeric](11, 3) NOT NULL,
	[AMT_1000] [numeric](11, 3) NOT NULL,
	[AMT_MAX] [numeric](11, 3) NOT NULL,
	[USER_ID] [varchar](20) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CURRENCY_ID] [varchar](10) NOT NULL,
	[EX_RATE_IND] [varchar](1) NULL,
	[AUTO_BILL_IND] [varchar](1) NULL,
	[CHARGE_WT_IND] [varchar](1) NULL,
	[TRA_TYPE] [varchar](3) NULL,
	[AIR_LINE_ID] [varchar](10) NULL,
	[AMT_LESS45] [numeric](11, 3) NULL,
	[AMT_300] [numeric](11, 3) NULL,
	[CHG_CODE_ID] [varchar](10) NULL,
 CONSTRAINT [PK_AIR_RATE] PRIMARY KEY NONCLUSTERED 
(
	[CUST_ID] ASC,
	[PORT_ID] ASC,
	[VENDOR_ID] ASC,
	[PORT_LOAD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
