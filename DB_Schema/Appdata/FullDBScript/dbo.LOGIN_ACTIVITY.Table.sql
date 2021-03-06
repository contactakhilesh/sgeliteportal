USE [appdata]
GO
/****** Object:  Table [dbo].[LOGIN_ACTIVITY]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[LOGIN_ACTIVITY]
GO
/****** Object:  Table [dbo].[LOGIN_ACTIVITY]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LOGIN_ACTIVITY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LOGIN_ACTIVITY](
	[login_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[login_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[login_date] [datetime] NOT NULL,
	[locacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ramarks] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_LOGIN_ACTIVITY] PRIMARY KEY CLUSTERED 
(
	[login_name] ASC,
	[login_id] ASC,
	[login_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[LOGIN_ACTIVITY] TO  SCHEMA OWNER 
GO
