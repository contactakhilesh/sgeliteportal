USE [appdata]
GO
/****** Object:  Table [dbo].[dhl_country_postcodes]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[dhl_country_postcodes]
GO
/****** Object:  Table [dbo].[dhl_country_postcodes]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_country_postcodes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dhl_country_postcodes](
	[country_postcodes_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[postal_format] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[postal_sig_digits] [smallint] NULL,
 CONSTRAINT [PK__dhl_country_post__5D178DA4] PRIMARY KEY CLUSTERED 
(
	[country_postcodes_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[dhl_country_postcodes] TO  SCHEMA OWNER 
GO
