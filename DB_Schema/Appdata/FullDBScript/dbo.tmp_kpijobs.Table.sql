USE [appdata]
GO
/****** Object:  Index [tmp_kpijobs_idx3]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [tmp_kpijobs_idx3] ON [dbo].[tmp_kpijobs]
GO
/****** Object:  Index [tmp_kpijobs_idx2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [tmp_kpijobs_idx2] ON [dbo].[tmp_kpijobs]
GO
/****** Object:  Index [tmp_kpijobs_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [tmp_kpijobs_idx1] ON [dbo].[tmp_kpijobs]
GO
/****** Object:  Table [dbo].[tmp_kpijobs]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_kpijobs]
GO
/****** Object:  Table [dbo].[tmp_kpijobs]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_kpijobs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_kpijobs](
	[export_n] [numeric](10, 0) NOT NULL,
	[invoice_n] [numeric](10, 0) NOT NULL,
	[user_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[invoice_no] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_tmp_kpijobs] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC,
	[invoice_n] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_kpijobs] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [tmp_kpijobs_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tmp_kpijobs]') AND name = N'tmp_kpijobs_idx1')
CREATE NONCLUSTERED INDEX [tmp_kpijobs_idx1] ON [dbo].[tmp_kpijobs]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [tmp_kpijobs_idx2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tmp_kpijobs]') AND name = N'tmp_kpijobs_idx2')
CREATE NONCLUSTERED INDEX [tmp_kpijobs_idx2] ON [dbo].[tmp_kpijobs]
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [tmp_kpijobs_idx3]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tmp_kpijobs]') AND name = N'tmp_kpijobs_idx3')
CREATE NONCLUSTERED INDEX [tmp_kpijobs_idx3] ON [dbo].[tmp_kpijobs]
(
	[export_n] ASC,
	[invoice_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
