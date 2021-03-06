USE [appdata]
GO
/****** Object:  Table [dbo].[Bayer_carrier_map]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[Bayer_carrier_map]
GO
/****** Object:  Table [dbo].[Bayer_carrier_map]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bayer_carrier_map]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Bayer_carrier_map](
	[carrier_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[carrier_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[elite_carrier_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[elite_env] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Bayer_carrier_map] PRIMARY KEY CLUSTERED 
(
	[carrier_name] ASC,
	[carrier_code] ASC,
	[elite_carrier_id] ASC,
	[elite_env] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Bayer_carrier_map] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Bayer_carrier_map] TO [public] AS [dbo]
GO
