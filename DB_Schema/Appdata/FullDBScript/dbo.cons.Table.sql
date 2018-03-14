USE [appdata]
GO
/****** Object:  Table [dbo].[cons]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[cons]
GO
/****** Object:  Table [dbo].[cons]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cons]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cons](
	[a] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[b] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[cons] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[cons] TO [public] AS [dbo]
GO
