USE [appdata]
GO
/****** Object:  Table [dbo].[direct_collection_approver]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[direct_collection_approver]
GO
/****** Object:  Table [dbo].[direct_collection_approver]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[direct_collection_approver]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[direct_collection_approver](
	[approver_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[approver_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[approver_email] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[direct_collection_approver] TO  SCHEMA OWNER 
GO
