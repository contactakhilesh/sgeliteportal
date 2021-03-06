USE [appdata]
GO
/****** Object:  Trigger [postinsert_it_request_developer]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_it_request_developer]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[it_request_developer]') AND type in (N'U'))
ALTER TABLE [dbo].[it_request_developer] DROP CONSTRAINT IF EXISTS [FK_it_request_developer_row_id]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[it_request_developer]') AND type in (N'U'))
ALTER TABLE [dbo].[it_request_developer] DROP CONSTRAINT IF EXISTS [DF_it_request_developer_created_dt]
GO
/****** Object:  Table [dbo].[it_request_developer]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[it_request_developer]
GO
/****** Object:  Table [dbo].[it_request_developer]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[it_request_developer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[it_request_developer](
	[row_id] [numeric](10, 0) NOT NULL,
	[line_no] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[staff_id] [numeric](10, 0) NULL,
	[apps] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[status] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[start_dt] [datetime] NULL,
	[completion_dt] [datetime] NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[actual_completion_dt] [datetime] NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[it_request_developer] ADD [user_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
 CONSTRAINT [pk_it_request_developer] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[it_request_developer] TO  SCHEMA OWNER 
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_it_request_developer_row_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[it_request_developer]'))
ALTER TABLE [dbo].[it_request_developer]  WITH CHECK ADD  CONSTRAINT [FK_it_request_developer_row_id] FOREIGN KEY([row_id])
REFERENCES [dbo].[it_request_hd] ([row_id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_it_request_developer_row_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[it_request_developer]'))
ALTER TABLE [dbo].[it_request_developer] CHECK CONSTRAINT [FK_it_request_developer_row_id]
GO
