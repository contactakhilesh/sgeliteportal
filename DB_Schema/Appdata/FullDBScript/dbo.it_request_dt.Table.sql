USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[it_request_dt]') AND type in (N'U'))
ALTER TABLE [dbo].[it_request_dt] DROP CONSTRAINT IF EXISTS [FK_it_request_dt_row_id]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[it_request_dt]') AND type in (N'U'))
ALTER TABLE [dbo].[it_request_dt] DROP CONSTRAINT IF EXISTS [DF__it_reques__creat__5ED5B8E4]
GO
/****** Object:  Table [dbo].[it_request_dt]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[it_request_dt]
GO
/****** Object:  Table [dbo].[it_request_dt]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[it_request_dt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[it_request_dt](
	[row_id] [numeric](10, 0) NOT NULL,
	[line_no] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[filename] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [pk_it_request_dt] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[it_request_dt] TO  SCHEMA OWNER 
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_it_request_dt_row_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[it_request_dt]'))
ALTER TABLE [dbo].[it_request_dt]  WITH CHECK ADD  CONSTRAINT [FK_it_request_dt_row_id] FOREIGN KEY([row_id])
REFERENCES [dbo].[it_request_hd] ([row_id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_it_request_dt_row_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[it_request_dt]'))
ALTER TABLE [dbo].[it_request_dt] CHECK CONSTRAINT [FK_it_request_dt_row_id]
GO
