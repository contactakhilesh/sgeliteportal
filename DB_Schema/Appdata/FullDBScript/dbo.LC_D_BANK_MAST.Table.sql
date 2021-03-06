USE [appdata]
GO
/****** Object:  Table [dbo].[LC_D_BANK_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[LC_D_BANK_MAST]
GO
/****** Object:  Table [dbo].[LC_D_BANK_MAST]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LC_D_BANK_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LC_D_BANK_MAST](
	[IssuingBankID] [decimal](10, 0) NOT NULL,
	[IssuingBankName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IssuingBankAddress1] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IssuingBankPhoneNbr] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IssuingBankAddress2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IssuingBankFaxNbr] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_LC_D_BANK_MAST] PRIMARY KEY CLUSTERED 
(
	[IssuingBankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[LC_D_BANK_MAST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[LC_D_BANK_MAST] TO [public] AS [dbo]
GO
