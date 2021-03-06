USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_TRANSDOC_COUNT_DET_backup_2013MAY23]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_TRANSDOC_COUNT_DET_backup_2013MAY23]
GO
/****** Object:  Table [dbo].[DOC_TRANSDOC_COUNT_DET_backup_2013MAY23]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_TRANSDOC_COUNT_DET_backup_2013MAY23]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_TRANSDOC_COUNT_DET_backup_2013MAY23](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[line_no] [int] NOT NULL,
	[doc_id] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[doc_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_of_copies] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duplicate_copies] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_TRANSDOC_COUNT_DET_backup_2013MAY23] TO  SCHEMA OWNER 
GO
