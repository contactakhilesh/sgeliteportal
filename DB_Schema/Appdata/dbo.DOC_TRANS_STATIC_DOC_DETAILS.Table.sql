USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_TRANS_STATIC_DOC_DETAILS](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[doc_head_no] [varchar](255) NOT NULL,
	[doc_id] [varchar](255) NOT NULL,
	[hbl_no] [varchar](255) NOT NULL,
	[job_no] [bigint] NOT NULL,
	[ref_no] [bigint] NOT NULL,
	[doc_trans_static_doc_name_id] [bigint] NOT NULL,
	[count_orig] [int] NULL,
	[count_copy] [int] NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL
) ON [PRIMARY]

GO
