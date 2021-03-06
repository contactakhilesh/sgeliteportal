USE [appdata]
GO
/****** Object:  Table [dbo].[UOM_MAP]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[UOM_MAP]
GO
/****** Object:  Table [dbo].[UOM_MAP]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UOM_MAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UOM_MAP](
	[PKG_CODE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DESCRIPTION] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[UOM_MAP] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[UOM_MAP] TO [public] AS [dbo]
GO
