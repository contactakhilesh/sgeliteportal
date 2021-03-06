USE [appdata]
GO
/****** Object:  Index [pbcatedt_idx]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [pbcatedt_idx] ON [dbo].[pbcatedt] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[pbcatedt]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[pbcatedt]
GO
/****** Object:  Table [dbo].[pbcatedt]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pbcatedt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pbcatedt](
	[pbe_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[pbe_edit] [varchar](254) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pbe_type] [smallint] NOT NULL,
	[pbe_cntr] [int] NULL,
	[pbe_seqn] [smallint] NOT NULL,
	[pbe_flag] [int] NULL,
	[pbe_work] [char](32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[pbcatedt] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[pbcatedt] TO [public] AS [dbo]
GO
/****** Object:  Index [pbcatedt_idx]    Script Date: 3/14/2018 6:12:01 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pbcatedt]') AND name = N'pbcatedt_idx')
CREATE UNIQUE CLUSTERED INDEX [pbcatedt_idx] ON [dbo].[pbcatedt]
(
	[pbe_name] ASC,
	[pbe_seqn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
