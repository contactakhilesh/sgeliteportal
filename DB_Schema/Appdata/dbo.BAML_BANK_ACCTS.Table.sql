USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BAML_BANK_ACCTS](
	[cust_id] [varchar](10) NOT NULL,
	[advising_bank] [varchar](50) NOT NULL,
	[beneficiary] [varchar](50) NULL,
	[bank_account] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
