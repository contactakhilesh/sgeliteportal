USE [appdata]
GO
/****** Object:  Table [dbo].[CUSTOMER_LOG]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[CUSTOMER_LOG]
GO
/****** Object:  Table [dbo].[CUSTOMER_LOG]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_LOG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMER_LOG](
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CREDIT_LIMIT_A] [numeric](11, 2) NOT NULL,
	[APPROVED_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ENTRY_D] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CUSTOMER_LOG] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[CUSTOMER_LOG] TO [public] AS [dbo]
GO
