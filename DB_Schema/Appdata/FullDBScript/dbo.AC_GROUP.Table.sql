USE [appdata]
GO
/****** Object:  Table [dbo].[AC_GROUP]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[AC_GROUP]
GO
/****** Object:  Table [dbo].[AC_GROUP]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AC_GROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AC_GROUP](
	[G_NO] [numeric](2, 0) NOT NULL,
	[G_DESC] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[AC_GROUP] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[AC_GROUP] TO [public] AS [dbo]
GO
