USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_TRANSLETTER_COUNT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_TRANSLETTER_COUNT]
GO
/****** Object:  Table [dbo].[DOC_TRANSLETTER_COUNT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_TRANSLETTER_COUNT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_TRANSLETTER_COUNT](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[doc_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[doc_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[copy1] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duplicate1] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[copy2] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duplicate2] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[copy3] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duplicate3] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[copy4] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duplicate4] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[copy5] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duplicate5] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[copy6] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duplicate6] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[copy7] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duplicate7] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[copy8] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duplicate8] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seqno] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_TRANSLETTER_COUNT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_TRANSLETTER_COUNT] TO [public] AS [dbo]
GO
