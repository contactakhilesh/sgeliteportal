USE [appdata]
GO
/****** Object:  Table [dbo].[INTTRA_DOC_PARTY]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[INTTRA_DOC_PARTY]
GO
/****** Object:  Table [dbo].[INTTRA_DOC_PARTY]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INTTRA_DOC_PARTY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[INTTRA_DOC_PARTY](
	[MSG_SEQ_N] [decimal](18, 0) NOT NULL,
	[PARTY_TYPE_ID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PARTY_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TEL] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMAIL_ADD] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PARTY_ID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONTACT_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CITY] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STATE] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POSTAL_CODE] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COUNTRY_CODE] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_INTTRA_DOC_PARTY] PRIMARY KEY CLUSTERED 
(
	[MSG_SEQ_N] ASC,
	[PARTY_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[INTTRA_DOC_PARTY] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[INTTRA_DOC_PARTY] TO [public] AS [dbo]
GO
