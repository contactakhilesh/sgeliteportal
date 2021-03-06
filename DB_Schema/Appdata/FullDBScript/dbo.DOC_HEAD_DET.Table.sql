USE [appdata]
GO
/****** Object:  Index [_dta_index_DOC_HEAD_DET_7_1233439468__K4_K3_K1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_DOC_HEAD_DET_7_1233439468__K4_K3_K1] ON [dbo].[DOC_HEAD_DET]
GO
/****** Object:  Index [_dta_index_DOC_HEAD_DET_11_1233439468__K4_K3_K5_1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_DOC_HEAD_DET_11_1233439468__K4_K3_K5_1] ON [dbo].[DOC_HEAD_DET]
GO
/****** Object:  Table [dbo].[DOC_HEAD_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_HEAD_DET]
GO
/****** Object:  Table [dbo].[DOC_HEAD_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_HEAD_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_HEAD_DET](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[line_no] [int] NOT NULL,
	[scc_ref_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[scc_hbl_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[scc_ref_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_HEAD_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_HEAD_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_HEAD_DET] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_DOC_HEAD_DET_11_1233439468__K4_K3_K5_1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DOC_HEAD_DET]') AND name = N'_dta_index_DOC_HEAD_DET_11_1233439468__K4_K3_K5_1')
CREATE NONCLUSTERED INDEX [_dta_index_DOC_HEAD_DET_11_1233439468__K4_K3_K5_1] ON [dbo].[DOC_HEAD_DET]
(
	[scc_hbl_no] ASC,
	[scc_ref_no] ASC,
	[scc_ref_type] ASC
)
INCLUDE ( 	[doc_head_no]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_DOC_HEAD_DET_7_1233439468__K4_K3_K1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DOC_HEAD_DET]') AND name = N'_dta_index_DOC_HEAD_DET_7_1233439468__K4_K3_K1')
CREATE NONCLUSTERED INDEX [_dta_index_DOC_HEAD_DET_7_1233439468__K4_K3_K1] ON [dbo].[DOC_HEAD_DET]
(
	[scc_hbl_no] ASC,
	[scc_ref_no] ASC,
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
