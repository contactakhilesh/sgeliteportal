USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_DOC_PARTY_2016MAY11_BACKUP](
	[MSG_SEQ_N] [numeric](18, 0) NOT NULL,
	[PARTY_TYPE_ID] [varchar](50) NOT NULL,
	[PARTY_NAME] [varchar](100) NULL,
	[PARTY_ADD_TYPE_ID] [varchar](50) NOT NULL,
	[CITY] [varchar](50) NULL,
	[STATE] [varchar](50) NULL,
	[ZIP] [varchar](50) NULL,
	[COUNTRY_ID] [varchar](50) NULL,
	[CONTACT_NAME] [varchar](50) NULL,
	[TEL] [varchar](50) NULL,
	[EMAIL_ADD] [varchar](50) NULL,
	[ADD1] [varchar](50) NULL,
	[ADD2] [varchar](50) NULL,
	[ADD3] [varchar](50) NULL,
	[ADD4] [varchar](50) NULL,
	[ADD5] [varchar](50) NULL,
	[PARTY_NAME2] [varchar](50) NULL,
	[FAX] [varchar](50) NULL
) ON [PRIMARY]

GO
