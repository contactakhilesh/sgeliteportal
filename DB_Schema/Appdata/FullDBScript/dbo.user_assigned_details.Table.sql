USE [appdata]
GO
/****** Object:  Table [dbo].[user_assigned_details]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[user_assigned_details]
GO
/****** Object:  Table [dbo].[user_assigned_details]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_assigned_details]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[user_assigned_details](
	[job_no] [numeric](20, 0) NOT NULL,
	[user_id] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[date] [datetime] NULL,
	[action] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[assigned_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[user_assigned_details] TO  SCHEMA OWNER 
GO
