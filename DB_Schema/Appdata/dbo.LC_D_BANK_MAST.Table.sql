USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LC_D_BANK_MAST](
	[IssuingBankID] [decimal](10, 0) NOT NULL,
	[IssuingBankName] [varchar](50) NULL,
	[IssuingBankAddress1] [varchar](255) NULL,
	[IssuingBankPhoneNbr] [varchar](50) NULL,
	[IssuingBankAddress2] [varchar](50) NULL,
	[IssuingBankFaxNbr] [varchar](50) NULL,
 CONSTRAINT [PK_LC_D_BANK_MAST] PRIMARY KEY CLUSTERED 
(
	[IssuingBankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
