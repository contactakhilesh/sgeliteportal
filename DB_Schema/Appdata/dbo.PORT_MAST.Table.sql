USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PORT_MAST](
	[PORT_ID] [varchar](10) NOT NULL,
	[PORT_NAME] [varchar](50) NOT NULL,
	[REGION_ID] [varchar](10) NOT NULL,
	[COUNTRY_ID] [varchar](10) NOT NULL,
	[PORT_TYPE_ID] [varchar](1) NOT NULL,
	[ELITE_OFF] [varchar](20) NULL,
	[PROVINCE] [varchar](100) NULL,
	[customs_port_code] [varchar](10) NULL,
	[cert_type] [varchar](50) NULL,
 CONSTRAINT [PK_PORT_MAST] PRIMARY KEY CLUSTERED 
(
	[PORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
