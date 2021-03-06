USE [appdata]
GO
/****** Object:  Table [dbo].[PAYBYINV]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[PAYBYINV]
GO
/****** Object:  Table [dbo].[PAYBYINV]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PAYBYINV]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PAYBYINV](
	[USERNAME] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INVNO] [char](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[PAYBYINV] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[PAYBYINV] TO [public] AS [dbo]
GO
