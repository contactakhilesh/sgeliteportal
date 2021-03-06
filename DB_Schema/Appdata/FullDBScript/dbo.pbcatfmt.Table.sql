USE [appdata]
GO
/****** Object:  Index [pbcatfmt_idx]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [pbcatfmt_idx] ON [dbo].[pbcatfmt] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[pbcatfmt]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[pbcatfmt]
GO
/****** Object:  Table [dbo].[pbcatfmt]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pbcatfmt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pbcatfmt](
	[pbf_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[pbf_frmt] [varchar](254) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[pbf_type] [smallint] NOT NULL,
	[pbf_cntr] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[pbcatfmt] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[pbcatfmt] TO [public] AS [dbo]
GO
/****** Object:  Index [pbcatfmt_idx]    Script Date: 3/14/2018 6:12:01 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pbcatfmt]') AND name = N'pbcatfmt_idx')
CREATE UNIQUE CLUSTERED INDEX [pbcatfmt_idx] ON [dbo].[pbcatfmt]
(
	[pbf_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
