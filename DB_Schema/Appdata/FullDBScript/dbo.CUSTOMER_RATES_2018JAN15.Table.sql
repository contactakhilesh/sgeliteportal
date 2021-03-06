USE [appdata]
GO
/****** Object:  Table [dbo].[CUSTOMER_RATES_2018JAN15]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[CUSTOMER_RATES_2018JAN15]
GO
/****** Object:  Table [dbo].[CUSTOMER_RATES_2018JAN15]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_RATES_2018JAN15]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMER_RATES_2018JAN15](
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHGCODE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TRA_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_LOAD_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHG_UNIT_A] [numeric](11, 3) NOT NULL,
	[CHG_UNIT_Q] [numeric](11, 4) NOT NULL,
	[EX_RATE_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AUTO_BILL_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[WT_M3_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[REMARKS] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONV_R] [numeric](11, 2) NULL,
	[MIN_CHG_A] [numeric](11, 2) NULL,
	[CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONTRACT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONSIGNEE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VENDOR_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COST_Q] [numeric](11, 3) NULL,
	[CHG_TYPE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHG_GST] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SEQ_N] [numeric](11, 0) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CUSTOMER_RATES_2018JAN15] TO  SCHEMA OWNER 
GO
