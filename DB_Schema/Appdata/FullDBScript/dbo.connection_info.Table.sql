USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[connection_info]') AND type in (N'U'))
ALTER TABLE [dbo].[connection_info] DROP CONSTRAINT IF EXISTS [DF__connectio__creat__1C08E456]
GO
/****** Object:  Table [dbo].[connection_info]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[connection_info]
GO
/****** Object:  Table [dbo].[connection_info]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[connection_info]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[connection_info](
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[spid] [int] NOT NULL,
	[user_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[application] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_dt] [datetime] NULL,
 CONSTRAINT [PK_connection_info] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [connection_info_idx1] UNIQUE NONCLUSTERED 
(
	[spid] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[connection_info] TO  SCHEMA OWNER 
GO
