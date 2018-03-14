USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_HEAD_DET]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_HEAD_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[line_no] [int] NOT NULL,
	[scc_ref_no] [varchar](20) NULL,
	[scc_hbl_no] [varchar](30) NULL,
	[scc_ref_type] [varchar](20) NULL,
 CONSTRAINT [PK_DOC_HEAD_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_HEAD_DET] TO  SCHEMA OWNER 
GO
