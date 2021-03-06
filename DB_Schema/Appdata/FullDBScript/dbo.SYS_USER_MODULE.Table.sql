USE [appdata]
GO
/****** Object:  Table [dbo].[SYS_USER_MODULE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[SYS_USER_MODULE]
GO
/****** Object:  Table [dbo].[SYS_USER_MODULE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_USER_MODULE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SYS_USER_MODULE](
	[MODULE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[SYS_USER_MODULE] ADD [USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
 CONSTRAINT [PK_SYS_USER_MODULE] PRIMARY KEY NONCLUSTERED 
(
	[USER_ID] ASC,
	[MODULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[SYS_USER_MODULE] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[SYS_USER_MODULE] TO [public] AS [dbo]
GO
