USE [appdata]
GO
/****** Object:  Index [tempxls_idx3]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [tempxls_idx3] ON [dbo].[tempxls]
GO
/****** Object:  Index [tempxls_idx2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [tempxls_idx2] ON [dbo].[tempxls]
GO
/****** Object:  Index [tempxls_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [tempxls_idx1] ON [dbo].[tempxls]
GO
/****** Object:  Table [dbo].[tempxls]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tempxls]
GO
/****** Object:  Table [dbo].[tempxls]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tempxls]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tempxls](
	[tmpid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[tmpbatchid] [int] NOT NULL,
	[tmpuserid] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[tmpshipment] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpdummy] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpshty] [int] NULL,
	[tmptppt] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpc] [int] NULL,
	[tmps1] [int] NULL,
	[tmpst] [int] NULL,
	[tmpdummy1] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmppl] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpsl] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpl] [int] NULL,
	[tmpsc] [int] NULL,
	[tmproute] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpdummy2] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpcontainerid] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpexternalid1] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpexternalid2] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpdescription] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmps2] [int] NULL,
	[tmpservagent] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpactloadend] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmpcust_ord_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tmppay_term] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tempxls] PRIMARY KEY CLUSTERED 
(
	[tmpid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tempxls] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [tempxls_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tempxls]') AND name = N'tempxls_idx1')
CREATE NONCLUSTERED INDEX [tempxls_idx1] ON [dbo].[tempxls]
(
	[tmpbatchid] ASC,
	[tmpuserid] ASC,
	[tmpexternalid2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [tempxls_idx2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tempxls]') AND name = N'tempxls_idx2')
CREATE NONCLUSTERED INDEX [tempxls_idx2] ON [dbo].[tempxls]
(
	[tmpbatchid] ASC,
	[tmpuserid] ASC,
	[tmppay_term] ASC,
	[tmpcust_ord_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [tempxls_idx3]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tempxls]') AND name = N'tempxls_idx3')
CREATE NONCLUSTERED INDEX [tempxls_idx3] ON [dbo].[tempxls]
(
	[tmpuserid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
