USE [appdata]
GO
/****** Object:  Table [dbo].[XML_SAP_DISC_POINT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[XML_SAP_DISC_POINT]
GO
/****** Object:  Table [dbo].[XML_SAP_DISC_POINT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XML_SAP_DISC_POINT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XML_SAP_DISC_POINT](
	[cut_disc_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cut_disc_desc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[XML_SAP_DISC_POINT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[XML_SAP_DISC_POINT] TO [public] AS [dbo]
GO
