USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Bayer_carrier_map](
	[carrier_name] [varchar](50) NOT NULL,
	[carrier_code] [varchar](10) NOT NULL,
	[elite_carrier_id] [varchar](10) NOT NULL,
	[elite_env] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Bayer_carrier_map] PRIMARY KEY CLUSTERED 
(
	[carrier_name] ASC,
	[carrier_code] ASC,
	[elite_carrier_id] ASC,
	[elite_env] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
