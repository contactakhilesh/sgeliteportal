USE [appdata]
GO
/****** Object:  Table [dbo].[REF_SCAC_CODES]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[REF_SCAC_CODES]
GO
/****** Object:  Table [dbo].[REF_SCAC_CODES]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[REF_SCAC_CODES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[REF_SCAC_CODES](
	[country_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[carrier_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[port_load_country_id] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[port_disc_country_id] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[scac] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_REF_SCAC_CODES_1] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC,
	[carrier_id] ASC,
	[port_load_country_id] ASC,
	[port_disc_country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[REF_SCAC_CODES] TO  SCHEMA OWNER 
GO
