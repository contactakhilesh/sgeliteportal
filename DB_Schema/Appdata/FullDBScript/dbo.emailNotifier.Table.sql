USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[emailNotifier]') AND type in (N'U'))
ALTER TABLE [dbo].[emailNotifier] DROP CONSTRAINT IF EXISTS [DF__emailNoti__seq_n__52DB8D01]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[emailNotifier]') AND type in (N'U'))
ALTER TABLE [dbo].[emailNotifier] DROP CONSTRAINT IF EXISTS [DF__emailNoti__email__51E768C8]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[emailNotifier]') AND type in (N'U'))
ALTER TABLE [dbo].[emailNotifier] DROP CONSTRAINT IF EXISTS [DF__emailNoti__is_pa__50F3448F]
GO
/****** Object:  Index [emailnotifier_NonClusteredIdx]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [emailnotifier_NonClusteredIdx] ON [dbo].[emailNotifier]
GO
/****** Object:  Table [dbo].[emailNotifier]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[emailNotifier]
GO
/****** Object:  Table [dbo].[emailNotifier]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[emailNotifier]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[emailNotifier](
	[id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[export_n] [numeric](10, 0) NOT NULL,
	[is_past_data] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_sent] [datetime] NOT NULL,
	[type] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seq_n] [int] NOT NULL,
	[actiondate] [datetime] NULL,
 CONSTRAINT [PK_EmailNotifier_Id] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[emailNotifier] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [emailnotifier_NonClusteredIdx]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[emailNotifier]') AND name = N'emailnotifier_NonClusteredIdx')
CREATE NONCLUSTERED INDEX [emailnotifier_NonClusteredIdx] ON [dbo].[emailNotifier]
(
	[type] ASC,
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
