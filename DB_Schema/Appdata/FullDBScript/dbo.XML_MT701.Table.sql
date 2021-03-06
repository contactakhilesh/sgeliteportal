USE [appdata]
GO
/****** Object:  Index [xml_mt701_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [xml_mt701_idx1] ON [dbo].[XML_MT701]
GO
/****** Object:  Table [dbo].[XML_MT701]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[XML_MT701]
GO
/****** Object:  Table [dbo].[XML_MT701]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XML_MT701]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XML_MT701](
	[msg_seq_n] [decimal](10, 0) NOT NULL,
	[line_n] [decimal](18, 0) NOT NULL,
	[tag_27] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_20] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[tag_45b] [varchar](6500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_46b] [varchar](6500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_47b] [varchar](6500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tag_21] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[XML_MT701] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[XML_MT701] TO [public] AS [dbo]
GO
/****** Object:  Index [xml_mt701_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_MT701]') AND name = N'xml_mt701_idx1')
CREATE NONCLUSTERED INDEX [xml_mt701_idx1] ON [dbo].[XML_MT701]
(
	[msg_seq_n] ASC,
	[line_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
