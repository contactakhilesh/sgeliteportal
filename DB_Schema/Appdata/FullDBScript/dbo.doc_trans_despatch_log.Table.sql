USE [appdata]
GO
/****** Object:  Table [dbo].[doc_trans_despatch_log]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[doc_trans_despatch_log]
GO
/****** Object:  Table [dbo].[doc_trans_despatch_log]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_trans_despatch_log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[doc_trans_despatch_log](
	[doc_head_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[trans_letterfile_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[trans_dispatchfile_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[status] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[merge_transletterfile_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_doc_trans_despatch_log] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[doc_trans_despatch_log] TO  SCHEMA OWNER 
GO
