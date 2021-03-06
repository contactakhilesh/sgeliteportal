USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[linked_it_request]') AND type in (N'U'))
ALTER TABLE [dbo].[linked_it_request] DROP CONSTRAINT IF EXISTS [FK_linked_it_request_row_id]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[linked_it_request]') AND type in (N'U'))
ALTER TABLE [dbo].[linked_it_request] DROP CONSTRAINT IF EXISTS [DF__linked_it__creat__61B2258F]
GO
/****** Object:  Table [dbo].[linked_it_request]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[linked_it_request]
GO
/****** Object:  Table [dbo].[linked_it_request]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[linked_it_request]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[linked_it_request](
	[row_id] [numeric](10, 0) NOT NULL,
	[linked_rowid] [numeric](10, 0) NOT NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [pk_linked_it_request] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC,
	[linked_rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[linked_it_request] TO  SCHEMA OWNER 
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_linked_it_request_row_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[linked_it_request]'))
ALTER TABLE [dbo].[linked_it_request]  WITH CHECK ADD  CONSTRAINT [FK_linked_it_request_row_id] FOREIGN KEY([row_id])
REFERENCES [dbo].[it_request_hd] ([row_id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_linked_it_request_row_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[linked_it_request]'))
ALTER TABLE [dbo].[linked_it_request] CHECK CONSTRAINT [FK_linked_it_request_row_id]
GO
