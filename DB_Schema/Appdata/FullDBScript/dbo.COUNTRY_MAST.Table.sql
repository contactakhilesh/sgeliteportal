USE [appdata]
GO
/****** Object:  Table [dbo].[COUNTRY_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[COUNTRY_MAST]
GO
/****** Object:  Table [dbo].[COUNTRY_MAST]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COUNTRY_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COUNTRY_MAST](
	[COUNTRY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COUNTRY_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[COUNTRY_MAST] ADD [cert_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[COUNTRY_MAST] ADD [us_trade_sanctions] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
 CONSTRAINT [PK_COUNTRY_MAST] PRIMARY KEY NONCLUSTERED 
(
	[COUNTRY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[COUNTRY_MAST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[COUNTRY_MAST] TO [public] AS [dbo]
GO
