USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [REF_SCAC_CODES](
	[country_id] [varchar](10) NOT NULL,
	[carrier_id] [varchar](10) NOT NULL,
	[port_load_country_id] [varchar](2) NOT NULL,
	[port_disc_country_id] [varchar](2) NOT NULL,
	[scac] [varchar](50) NOT NULL,
 CONSTRAINT [PK_REF_SCAC_CODES_1] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC,
	[carrier_id] ASC,
	[port_load_country_id] ASC,
	[port_disc_country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
