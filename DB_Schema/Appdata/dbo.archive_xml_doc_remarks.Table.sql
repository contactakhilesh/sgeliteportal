USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [archive_xml_doc_remarks](
	[MSG_SEQ_N] [varchar](50) NOT NULL,
	[REM_TYPE_ID] [varchar](50) NOT NULL,
	[REM_TEXT] [varchar](3500) NULL
) ON [PRIMARY]

GO
