USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_PARTY_MAP](
	[xml_party_id] [varchar](10) NOT NULL,
	[xml_party_type_id] [varchar](10) NOT NULL,
	[sc_type_id] [varchar](10) NULL,
	[sc_party_id] [varchar](10) NULL,
	[party_name] [varchar](50) NULL,
 CONSTRAINT [PK2] PRIMARY KEY NONCLUSTERED 
(
	[xml_party_id] ASC,
	[xml_party_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
