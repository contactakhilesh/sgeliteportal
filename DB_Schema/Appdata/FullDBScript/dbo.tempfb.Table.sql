USE [appdata]
GO
/****** Object:  Index [tempfb_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [tempfb_idx1] ON [dbo].[tempfb]
GO
/****** Object:  Table [dbo].[tempfb]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tempfb]
GO
/****** Object:  Table [dbo].[tempfb]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tempfb]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tempfb](
	[tmpid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[tmpbatchid] [int] NOT NULL,
	[tmpuserid] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[tmpa] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpb] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpc] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpd] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpe] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpf] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpg] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmph] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpi] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpj] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpk] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpl] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpm] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpn] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpo] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpp] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpq] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpr] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmps] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpt] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpu] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpv] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpw] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpx] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tempfb] PRIMARY KEY CLUSTERED 
(
	[tmpid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[tempfb] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [tempfb_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tempfb]') AND name = N'tempfb_idx1')
CREATE NONCLUSTERED INDEX [tempfb_idx1] ON [dbo].[tempfb]
(
	[tmpbatchid] ASC,
	[tmpuserid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
