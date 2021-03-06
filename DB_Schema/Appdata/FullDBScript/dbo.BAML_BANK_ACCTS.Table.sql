USE [appdata]
GO
/****** Object:  Table [dbo].[BAML_BANK_ACCTS]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[BAML_BANK_ACCTS]
GO
/****** Object:  Table [dbo].[BAML_BANK_ACCTS]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BAML_BANK_ACCTS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BAML_BANK_ACCTS](
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[advising_bank] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[beneficiary] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bank_account] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[BAML_BANK_ACCTS] TO  SCHEMA OWNER 
GO
