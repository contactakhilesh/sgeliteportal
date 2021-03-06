USE [appdata]
GO
/****** Object:  Index [MSGSEQNUMIDX]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [MSGSEQNUMIDX] ON [dbo].[XML_DOC_REMARKS]
GO
/****** Object:  Index [Indx_XML_DOC_REMARKS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [Indx_XML_DOC_REMARKS] ON [dbo].[XML_DOC_REMARKS]
GO
/****** Object:  Index [_dta_index_XML_DOC_REMARKS_11_1668917017__K2_1_3]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_XML_DOC_REMARKS_11_1668917017__K2_1_3] ON [dbo].[XML_DOC_REMARKS]
GO
/****** Object:  Index [_dta_index_XML_DOC_REMARKS_11_1668917017__K2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_XML_DOC_REMARKS_11_1668917017__K2] ON [dbo].[XML_DOC_REMARKS]
GO
/****** Object:  Table [dbo].[XML_DOC_REMARKS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[XML_DOC_REMARKS]
GO
/****** Object:  Table [dbo].[XML_DOC_REMARKS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_REMARKS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XML_DOC_REMARKS](
	[MSG_SEQ_N] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REM_TYPE_ID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REM_TEXT] [varchar](3500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_XML_DOC_REMARKS] PRIMARY KEY CLUSTERED 
(
	[MSG_SEQ_N] ASC,
	[REM_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[XML_DOC_REMARKS] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[XML_DOC_REMARKS] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_XML_DOC_REMARKS_11_1668917017__K2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_REMARKS]') AND name = N'_dta_index_XML_DOC_REMARKS_11_1668917017__K2')
CREATE NONCLUSTERED INDEX [_dta_index_XML_DOC_REMARKS_11_1668917017__K2] ON [dbo].[XML_DOC_REMARKS]
(
	[REM_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_XML_DOC_REMARKS_11_1668917017__K2_1_3]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_REMARKS]') AND name = N'_dta_index_XML_DOC_REMARKS_11_1668917017__K2_1_3')
CREATE NONCLUSTERED INDEX [_dta_index_XML_DOC_REMARKS_11_1668917017__K2_1_3] ON [dbo].[XML_DOC_REMARKS]
(
	[REM_TYPE_ID] ASC
)
INCLUDE ( 	[MSG_SEQ_N],
	[REM_TEXT]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Indx_XML_DOC_REMARKS]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_REMARKS]') AND name = N'Indx_XML_DOC_REMARKS')
CREATE NONCLUSTERED INDEX [Indx_XML_DOC_REMARKS] ON [dbo].[XML_DOC_REMARKS]
(
	[MSG_SEQ_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MSGSEQNUMIDX]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_REMARKS]') AND name = N'MSGSEQNUMIDX')
CREATE NONCLUSTERED INDEX [MSGSEQNUMIDX] ON [dbo].[XML_DOC_REMARKS]
(
	[MSG_SEQ_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
