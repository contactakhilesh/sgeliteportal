USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COSTING](
	[COSTING_ID] [numeric](10, 0) NOT NULL,
	[REF_NO] [numeric](10, 0) NOT NULL,
	[REF_TYPE] [varchar](1) NOT NULL,
	[CHG_CODE] [varchar](10) NOT NULL,
	[CHG_A] [numeric](11, 3) NOT NULL,
	[CHG_DESC] [varchar](40) NOT NULL,
	[USER_ID] [varchar](10) NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[JOB_NO] [numeric](10, 0) NULL,
	[VENDOR_ID] [varchar](10) NULL,
	[CHG_QTY] [numeric](11, 3) NULL,
	[CHG_UNIT_A] [numeric](11, 3) NULL,
	[CHG_EX_RATE] [numeric](11, 5) NULL,
	[CHG_CURRENCY] [varchar](10) NULL,
	[REV_IND] [varchar](1) NULL
) ON [PRIMARY]

GO
