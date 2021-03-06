USE [appdata]
GO
/****** Object:  Table [dbo].[xml_doc_party_2012below]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[xml_doc_party_2012below]
GO
/****** Object:  Table [dbo].[xml_doc_party_2012below]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[xml_doc_party_2012below]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[xml_doc_party_2012below](
	[MSG_SEQ_N] [numeric](18, 0) NOT NULL,
	[PARTY_TYPE_ID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PARTY_NAME] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PARTY_ADD_TYPE_ID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CITY] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STATE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ZIP] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COUNTRY_ID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONTACT_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TEL] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMAIL_ADD] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PARTY_NAME2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FAX] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[xml_doc_party_2012below] TO  SCHEMA OWNER 
GO
