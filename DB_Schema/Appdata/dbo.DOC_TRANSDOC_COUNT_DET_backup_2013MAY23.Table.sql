USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_TRANSDOC_COUNT_DET_backup_2013MAY23](
	[doc_head_no] [varchar](30) NOT NULL,
	[line_no] [int] NOT NULL,
	[doc_id] [varchar](15) NOT NULL,
	[doc_name] [varchar](200) NULL,
	[no_of_copies] [varchar](5) NULL,
	[duplicate_copies] [varchar](50) NULL
) ON [PRIMARY]

GO
