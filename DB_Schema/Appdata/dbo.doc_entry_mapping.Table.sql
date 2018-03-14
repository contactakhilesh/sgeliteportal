USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [doc_entry_mapping](
	[doc_no] [varchar](30) NOT NULL,
	[job_no] [varchar](30) NOT NULL,
	[entry_name] [varchar](80) NOT NULL,
	[entry_value] [varchar](2000) NULL
) ON [PRIMARY]

GO
