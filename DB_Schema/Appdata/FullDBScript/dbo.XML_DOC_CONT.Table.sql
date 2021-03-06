USE [appdata]
GO
/****** Object:  Index [pk4]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [pk4] ON [dbo].[XML_DOC_CONT]
GO
/****** Object:  Table [dbo].[XML_DOC_CONT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[XML_DOC_CONT]
GO
/****** Object:  Table [dbo].[XML_DOC_CONT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_CONT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XML_DOC_CONT](
	[msg_seq_n] [numeric](10, 0) NOT NULL,
	[line_n] [numeric](10, 0) NOT NULL,
	[cont_n] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_iso_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seal1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seal2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seal3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seal4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_WT] [decimal](11, 3) NULL,
	[CONT_NET_WT] [decimal](11, 3) NULL,
	[tare_wt] [decimal](10, 3) NULL,
	[vgm] [numeric](12, 3) NULL,
	[vgm_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_XML_DOC_CONT] PRIMARY KEY CLUSTERED 
(
	[msg_seq_n] ASC,
	[line_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[XML_DOC_CONT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[XML_DOC_CONT] TO [public] AS [dbo]
GO
/****** Object:  Index [pk4]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_CONT]') AND name = N'pk4')
CREATE NONCLUSTERED INDEX [pk4] ON [dbo].[XML_DOC_CONT]
(
	[msg_seq_n] ASC,
	[line_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
