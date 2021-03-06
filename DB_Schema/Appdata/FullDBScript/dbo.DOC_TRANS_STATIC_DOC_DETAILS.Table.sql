USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_TRANS_STATIC_DOC_DETAILS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_TRANS_STATIC_DOC_DETAILS]
GO
/****** Object:  Table [dbo].[DOC_TRANS_STATIC_DOC_DETAILS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_TRANS_STATIC_DOC_DETAILS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_TRANS_STATIC_DOC_DETAILS](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[doc_head_no] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[doc_id] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[hbl_no] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[job_no] [bigint] NOT NULL,
	[ref_no] [bigint] NOT NULL,
	[doc_trans_static_doc_name_id] [bigint] NOT NULL,
	[count_orig] [int] NULL,
	[count_copy] [int] NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_TRANS_STATIC_DOC_DETAILS] TO  SCHEMA OWNER 
GO
