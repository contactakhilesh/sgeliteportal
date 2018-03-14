USE [AMERICA]
GO
/****** Object:  Table [dbo].[archive_xml_doc_remarks]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[archive_xml_doc_remarks](
	[MSG_SEQ_N] [varchar](50) NOT NULL,
	[REM_TYPE_ID] [varchar](50) NOT NULL,
	[REM_TEXT] [varchar](3500) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[archive_xml_doc_remarks] TO  SCHEMA OWNER 
GO
