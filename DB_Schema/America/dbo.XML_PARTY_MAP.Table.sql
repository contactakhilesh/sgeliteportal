USE [AMERICA]
GO
/****** Object:  Table [dbo].[XML_PARTY_MAP]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XML_PARTY_MAP](
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
ALTER AUTHORIZATION ON [dbo].[XML_PARTY_MAP] TO  SCHEMA OWNER 
GO
