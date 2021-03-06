USE [AMERICA]
GO
/****** Object:  Table [dbo].[doc_trans_despatch_log]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doc_trans_despatch_log](
	[doc_head_no] [varchar](100) NOT NULL,
	[trans_letterfile_name] [varchar](100) NULL,
	[trans_dispatchfile_name] [varchar](100) NULL,
	[status] [varchar](2) NULL,
	[merge_transletterfile_name] [varchar](100) NULL,
 CONSTRAINT [PK_doc_trans_despatch_log] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[doc_trans_despatch_log] TO  SCHEMA OWNER 
GO
