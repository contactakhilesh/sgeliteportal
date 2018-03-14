USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_TRANS_STATIC_DOC_NAMES](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[document_name] [varchar](255) NOT NULL,
	[display_name] [varchar](255) NOT NULL,
	[ordinal] [int] NOT NULL
) ON [PRIMARY]

GO
