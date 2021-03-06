USE [appdata]
GO
/****** Object:  Table [dbo].[XML_PARTY_MAP]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[XML_PARTY_MAP]
GO
/****** Object:  Table [dbo].[XML_PARTY_MAP]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XML_PARTY_MAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XML_PARTY_MAP](
	[xml_party_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[xml_party_type_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[sc_type_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sc_party_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[party_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK2] PRIMARY KEY NONCLUSTERED 
(
	[xml_party_id] ASC,
	[xml_party_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[XML_PARTY_MAP] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[XML_PARTY_MAP] TO [public] AS [dbo]
GO
