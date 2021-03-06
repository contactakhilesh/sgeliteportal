USE [appdata]
GO
/****** Object:  Table [dbo].[user_login]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[user_login]
GO
/****** Object:  Table [dbo].[user_login]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_login]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[user_login](
	[user_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[password] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[last_login] [datetime] NULL,
	[last_time_password_update] [datetime] NULL,
 CONSTRAINT [PK__user_log__B9BE370F14A9505E] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[user_login] TO  SCHEMA OWNER 
GO
