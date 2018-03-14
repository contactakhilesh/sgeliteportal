USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Format_Entry_Mapping](
	[doc_head_no] [varchar](100) NOT NULL,
	[format_key] [varchar](30) NOT NULL,
	[entry_name] [varchar](30) NOT NULL,
	[entry_value] [varchar](2000) NULL
) ON [PRIMARY]

GO
