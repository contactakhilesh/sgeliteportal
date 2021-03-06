USE [appdata]
GO
/****** Object:  Trigger [trg_post_ins_order_doc_track]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_post_ins_order_doc_track]
GO
/****** Object:  Trigger [trg_after_ins_order_doc_track]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_ins_order_doc_track]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_doc_track]') AND type in (N'U'))
ALTER TABLE [dbo].[order_doc_track] DROP CONSTRAINT IF EXISTS [DF__order_doc__valid__13DDB2A9]
GO
/****** Object:  Index [order_doc_track_idx3]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [order_doc_track_idx3] ON [dbo].[order_doc_track]
GO
/****** Object:  Index [order_doc_track_idx2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [order_doc_track_idx2] ON [dbo].[order_doc_track]
GO
/****** Object:  Index [order_doc_track_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [order_doc_track_idx1] ON [dbo].[order_doc_track]
GO
/****** Object:  Table [dbo].[order_doc_track]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[order_doc_track]
GO
/****** Object:  Table [dbo].[order_doc_track]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_doc_track]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[order_doc_track](
	[doc_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[job_n] [numeric](10, 0) NOT NULL,
	[order_type] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[doc_title] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_filename] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sys_filename] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_path] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[web_ind] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_ord_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[upload_dt] [datetime] NULL,
	[upload_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[delete_dt] [datetime] NULL,
	[delete_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[valid] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_email] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_ind] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[final_email] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [pk_order_doc_track] PRIMARY KEY CLUSTERED 
(
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[order_doc_track] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [order_doc_track_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[order_doc_track]') AND name = N'order_doc_track_idx1')
CREATE NONCLUSTERED INDEX [order_doc_track_idx1] ON [dbo].[order_doc_track]
(
	[job_n] ASC,
	[order_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [order_doc_track_idx2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[order_doc_track]') AND name = N'order_doc_track_idx2')
CREATE NONCLUSTERED INDEX [order_doc_track_idx2] ON [dbo].[order_doc_track]
(
	[job_n] ASC,
	[valid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [order_doc_track_idx3]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[order_doc_track]') AND name = N'order_doc_track_idx3')
CREATE NONCLUSTERED INDEX [order_doc_track_idx3] ON [dbo].[order_doc_track]
(
	[job_n] ASC,
	[doc_title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
