USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[login_users]') AND type in (N'U'))
ALTER TABLE [dbo].[login_users] DROP CONSTRAINT IF EXISTS [DF__login_use__loop___4381D8D3]
GO
/****** Object:  Table [dbo].[login_users]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[login_users]
GO
/****** Object:  Table [dbo].[login_users]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[login_users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[login_users](
	[userid] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[msg] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[login_d] [datetime] NULL,
	[terminate] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[loop_yn] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_login_users] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[login_users] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[login_users] TO [public] AS [dbo]
GO
