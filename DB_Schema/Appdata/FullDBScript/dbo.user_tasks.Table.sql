USE [appdata]
GO
/****** Object:  Table [dbo].[user_tasks]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[user_tasks]
GO
/****** Object:  Table [dbo].[user_tasks]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_tasks]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[user_tasks](
	[seq_no] [numeric](20, 0) IDENTITY(1,1) NOT NULL,
	[user_id] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[last_assign] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[task] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK__user_tas__4B660EB12C4BCFC5] PRIMARY KEY CLUSTERED 
(
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[user_tasks] TO  SCHEMA OWNER 
GO
