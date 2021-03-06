USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_HEAD_MAST](
	[doc_head_no] [varchar](30) NOT NULL,
	[doc_id] [varchar](20) NULL,
	[doc_type] [varchar](100) NULL,
	[customer_name] [varchar](100) NULL,
	[scc_ref_no] [varchar](20) NULL,
	[scc_ref_type] [varchar](20) NULL,
	[create_date] [datetime] NULL,
	[last_modifyed_date] [datetime] NULL,
	[created_by] [varchar](50) NULL,
	[doc_count] [int] NULL,
 CONSTRAINT [PK_DOC_HEAD_MAST] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
