USE [appdata]
GO
/****** Object:  Table [dbo].[CUSTOMER_RATES_LOG]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[CUSTOMER_RATES_LOG]
GO
/****** Object:  Table [dbo].[CUSTOMER_RATES_LOG]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_RATES_LOG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMER_RATES_LOG](
	[LOG_N] [numeric](10, 0) NOT NULL,
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHGCODE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TRA_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHG_UNIT_A] [numeric](11, 2) NOT NULL,
	[CHG_UNIT_Q] [numeric](11, 3) NOT NULL,
	[EX_RATE_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AUTO_BILL_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[WT_M3_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
 CONSTRAINT [PK_CUSTOMER_RATES_LOG] PRIMARY KEY NONCLUSTERED 
(
	[LOG_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CUSTOMER_RATES_LOG] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[CUSTOMER_RATES_LOG] TO [public] AS [dbo]
GO
