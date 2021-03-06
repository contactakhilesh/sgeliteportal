USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_LETTER_OF_AUTHORISATION]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_LETTER_OF_AUTHORISATION] DROP CONSTRAINT IF EXISTS [DF_DOC_LETTER_OF_AUTHORISATION_create_dt]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_LETTER_OF_AUTHORISATION]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_LETTER_OF_AUTHORISATION] DROP CONSTRAINT IF EXISTS [DF_DOC_LETTER_OF_AUTHORISATION_top_address5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_LETTER_OF_AUTHORISATION]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_LETTER_OF_AUTHORISATION] DROP CONSTRAINT IF EXISTS [DF_DOC_LETTER_OF_AUTHORISATION_top_address4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_LETTER_OF_AUTHORISATION]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_LETTER_OF_AUTHORISATION] DROP CONSTRAINT IF EXISTS [DF_DOC_LETTER_OF_AUTHORISATION_top_address3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_LETTER_OF_AUTHORISATION]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_LETTER_OF_AUTHORISATION] DROP CONSTRAINT IF EXISTS [DF_DOC_LETTER_OF_AUTHORISATION_top_address2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_LETTER_OF_AUTHORISATION]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_LETTER_OF_AUTHORISATION] DROP CONSTRAINT IF EXISTS [DF_DOC_LETTER_OF_AUTHORISATION_top_address1]
GO
/****** Object:  Table [dbo].[DOC_LETTER_OF_AUTHORISATION]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_LETTER_OF_AUTHORISATION]
GO
/****** Object:  Table [dbo].[DOC_LETTER_OF_AUTHORISATION]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_LETTER_OF_AUTHORISATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_LETTER_OF_AUTHORISATION](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[top_address1] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[top_address2] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[top_address3] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[top_address4] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[top_address5] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[authorise_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ic_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_name] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_desig] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_dt] [datetime] NULL,
	[ref_no] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[certificate_no1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[certificate_no2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[certificate_no3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[certificate_no4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[certificate_no5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hs_code1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hs_code2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hs_code3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hs_code4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hs_code5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_LETTER_OF_AUTHORISATION] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_LETTER_OF_AUTHORISATION] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_LETTER_OF_AUTHORISATION] TO [public] AS [dbo]
GO
