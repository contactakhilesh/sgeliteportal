USE [AMERICA]
GO
/****** Object:  Table [dbo].[BAML_BANK_ACCTS]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAML_BANK_ACCTS](
	[cust_id] [varchar](10) NOT NULL,
	[advising_bank] [varchar](50) NOT NULL,
	[beneficiary] [varchar](50) NULL,
	[bank_account] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[BAML_BANK_ACCTS] TO  SCHEMA OWNER 
GO
