USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Template_Format](
	[job_no] [varchar](50) NOT NULL,
	[job_type] [varchar](10) NOT NULL,
	[doc_head_no] [varchar](50) NOT NULL,
	[format_key] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
