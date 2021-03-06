USE [appdata]
GO
/****** Object:  Table [dbo].[archive_xml_doc_remarks]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[archive_xml_doc_remarks]
GO
/****** Object:  Table [dbo].[archive_xml_doc_remarks]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[archive_xml_doc_remarks]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[archive_xml_doc_remarks](
	[MSG_SEQ_N] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REM_TYPE_ID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REM_TEXT] [varchar](3500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[archive_xml_doc_remarks] TO  SCHEMA OWNER 
GO
