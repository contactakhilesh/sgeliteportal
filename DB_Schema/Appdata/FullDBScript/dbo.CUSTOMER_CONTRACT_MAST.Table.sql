USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_CONTRACT_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[CUSTOMER_CONTRACT_MAST] DROP CONSTRAINT IF EXISTS [DF__CUSTOMER___defau__066EA8F2]
GO
/****** Object:  Table [dbo].[CUSTOMER_CONTRACT_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[CUSTOMER_CONTRACT_MAST]
GO
/****** Object:  Table [dbo].[CUSTOMER_CONTRACT_MAST]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_CONTRACT_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMER_CONTRACT_MAST](
	[CONTRACT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONTRACT_D] [datetime] NULL,
	[EXPIRY_D] [datetime] NULL,
	[EFFECT_D] [datetime] NULL,
	[TERM] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[APP_NAME] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[APP_TITLE] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[APP_TEL] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[APP_MAIL] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FRT_PAID_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FRT_COLLECT_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[default_flag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_CUSTOMER_CONTRACT_MAST] PRIMARY KEY NONCLUSTERED 
(
	[CONTRACT_N] ASC,
	[CUST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CUSTOMER_CONTRACT_MAST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[CUSTOMER_CONTRACT_MAST] TO [public] AS [dbo]
GO
