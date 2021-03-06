USE [AMERICA]
GO
/****** Object:  Table [dbo].[INTTRA_DOC_PARTY]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTTRA_DOC_PARTY](
	[MSG_SEQ_N] [decimal](18, 0) NOT NULL,
	[PARTY_TYPE_ID] [varchar](50) NOT NULL,
	[PARTY_NAME] [varchar](50) NULL,
	[TEL] [varchar](50) NULL,
	[EMAIL_ADD] [varchar](50) NULL,
	[ADD1] [varchar](50) NULL,
	[ADD2] [varchar](50) NULL,
	[ADD3] [varchar](50) NULL,
	[ADD4] [varchar](50) NULL,
	[PARTY_ID] [varchar](50) NULL,
	[CONTACT_NAME] [varchar](50) NULL,
	[CITY] [varchar](128) NULL,
	[STATE] [varchar](128) NULL,
	[POSTAL_CODE] [varchar](64) NULL,
	[COUNTRY_CODE] [varchar](128) NULL,
 CONSTRAINT [PK_INTTRA_DOC_PARTY] PRIMARY KEY CLUSTERED 
(
	[MSG_SEQ_N] ASC,
	[PARTY_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[INTTRA_DOC_PARTY] TO  SCHEMA OWNER 
GO
