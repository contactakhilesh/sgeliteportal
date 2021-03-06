USE [appdata]
GO
/****** Object:  Table [dbo].[database_info]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[database_info]
GO
/****** Object:  Table [dbo].[database_info]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[database_info]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[database_info](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[environment_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[environment_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[database] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ip] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_database_info] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[database_info] TO  SCHEMA OWNER 
GO
