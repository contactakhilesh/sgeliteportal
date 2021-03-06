USE [appdata]
GO
/****** Object:  Table [dbo].[screen_user_access]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[screen_user_access]
GO
/****** Object:  Table [dbo].[screen_user_access]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[screen_user_access]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[screen_user_access](
	[role_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[module] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[screen_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[object_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[s_read] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[s_write] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_screen_user_access] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[module] ASC,
	[screen_name] ASC,
	[object_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[screen_user_access] TO  SCHEMA OWNER 
GO
