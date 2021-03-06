USE [appdata]
GO
/****** Object:  Trigger [trg_after_ins_DOC_HEAD_MAST]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_ins_DOC_HEAD_MAST]
GO
/****** Object:  Trigger [postdelete_doc_head_mast]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_doc_head_mast]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_HEAD_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_HEAD_MAST] DROP CONSTRAINT IF EXISTS [DF_DOC_HEAD_MAST_doc_count]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_HEAD_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_HEAD_MAST] DROP CONSTRAINT IF EXISTS [DF_DOC_HEAD_MAST_last_modifyed_date]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_HEAD_MAST]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_HEAD_MAST] DROP CONSTRAINT IF EXISTS [DF_DOC_HEAD_MAST_create_date]
GO
/****** Object:  Index [I_DocHeadMastSccRefNo]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_DocHeadMastSccRefNo] ON [dbo].[DOC_HEAD_MAST]
GO
/****** Object:  Index [doc_head_mast_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [doc_head_mast_idx1] ON [dbo].[DOC_HEAD_MAST]
GO
/****** Object:  Index [_dta_index_DOC_HEAD_MAST_11_1867869721__K2_K1_K5_3_4_7_9]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_DOC_HEAD_MAST_11_1867869721__K2_K1_K5_3_4_7_9] ON [dbo].[DOC_HEAD_MAST]
GO
/****** Object:  Table [dbo].[DOC_HEAD_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_HEAD_MAST]
GO
/****** Object:  Table [dbo].[DOC_HEAD_MAST]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_HEAD_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_HEAD_MAST](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[doc_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_type] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[customer_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[scc_ref_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[scc_ref_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_date] [datetime] NULL,
	[last_modifyed_date] [datetime] NULL,
	[created_by] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_count] [int] NULL,
 CONSTRAINT [PK_DOC_HEAD_MAST] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_HEAD_MAST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_HEAD_MAST] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_DOC_HEAD_MAST_11_1867869721__K2_K1_K5_3_4_7_9]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DOC_HEAD_MAST]') AND name = N'_dta_index_DOC_HEAD_MAST_11_1867869721__K2_K1_K5_3_4_7_9')
CREATE NONCLUSTERED INDEX [_dta_index_DOC_HEAD_MAST_11_1867869721__K2_K1_K5_3_4_7_9] ON [dbo].[DOC_HEAD_MAST]
(
	[doc_id] ASC,
	[doc_head_no] ASC,
	[scc_ref_no] ASC
)
INCLUDE ( 	[doc_type],
	[customer_name],
	[create_date],
	[created_by]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [doc_head_mast_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DOC_HEAD_MAST]') AND name = N'doc_head_mast_idx1')
CREATE NONCLUSTERED INDEX [doc_head_mast_idx1] ON [dbo].[DOC_HEAD_MAST]
(
	[scc_ref_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_DocHeadMastSccRefNo]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DOC_HEAD_MAST]') AND name = N'I_DocHeadMastSccRefNo')
CREATE NONCLUSTERED INDEX [I_DocHeadMastSccRefNo] ON [dbo].[DOC_HEAD_MAST]
(
	[scc_ref_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
