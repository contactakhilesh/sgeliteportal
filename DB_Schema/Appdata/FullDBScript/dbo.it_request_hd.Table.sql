USE [appdata]
GO
/****** Object:  Trigger [postupdate_audit_it_request_hd]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_audit_it_request_hd]
GO
/****** Object:  Trigger [postinsert_audit_it_request_hd]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_audit_it_request_hd]
GO
/****** Object:  Trigger [postdelete_audit_it_request_hd]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_audit_it_request_hd]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[it_request_hd]') AND type in (N'U'))
ALTER TABLE [dbo].[it_request_hd] DROP CONSTRAINT IF EXISTS [DF__it_reques__IsApp__6735F4BB]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[it_request_hd]') AND type in (N'U'))
ALTER TABLE [dbo].[it_request_hd] DROP CONSTRAINT IF EXISTS [DF_it_request_hd_environment]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[it_request_hd]') AND type in (N'U'))
ALTER TABLE [dbo].[it_request_hd] DROP CONSTRAINT IF EXISTS [DF_it_request_hd_requested_dt]
GO
/****** Object:  Table [dbo].[it_request_hd]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[it_request_hd]
GO
/****** Object:  Table [dbo].[it_request_hd]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[it_request_hd]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[it_request_hd](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[request_no] [numeric](5, 0) NOT NULL,
	[title] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[status] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[application] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[priority] [int] NOT NULL,
	[requested_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[requested_dt] [datetime] NOT NULL,
	[approved_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[approved_dt] [datetime] NULL,
	[assigned_to] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[assigned_dt] [datetime] NULL,
	[start_dt] [datetime] NULL,
	[completion_dt] [datetime] NULL,
	[description] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[remarks] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dept_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[environment] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[closed_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[closed_dt] [datetime] NULL,
	[actual_completion_dt] [datetime] NULL,
	[approver_remarks] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[requestor_remarks] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsApproved] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[mandays] [decimal](10, 2) NULL,
	[user_extended] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[extended_dt] [datetime] NULL,
	[released_live_dt] [datetime] NULL,
 CONSTRAINT [pk_it_request_hd] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[it_request_hd] TO  SCHEMA OWNER 
GO
