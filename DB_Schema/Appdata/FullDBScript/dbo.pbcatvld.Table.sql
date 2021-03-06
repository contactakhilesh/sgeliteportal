USE [appdata]
GO
/****** Object:  Index [pbcatvld_idx]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [pbcatvld_idx] ON [dbo].[pbcatvld] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[pbcatvld]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[pbcatvld]
GO
/****** Object:  Table [dbo].[pbcatvld]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pbcatvld]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pbcatvld](
	[pbv_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[pbv_vald] [varchar](254) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[pbv_type] [smallint] NOT NULL,
	[pbv_cntr] [int] NULL,
	[pbv_msg] [varchar](254) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[pbcatvld] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[pbcatvld] TO [public] AS [dbo]
GO
/****** Object:  Index [pbcatvld_idx]    Script Date: 3/14/2018 6:12:01 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pbcatvld]') AND name = N'pbcatvld_idx')
CREATE UNIQUE CLUSTERED INDEX [pbcatvld_idx] ON [dbo].[pbcatvld]
(
	[pbv_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
