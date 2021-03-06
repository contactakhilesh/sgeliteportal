USE [appdata]
GO
/****** Object:  Trigger [postupd_workflow_trans]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupd_workflow_trans]
GO
/****** Object:  Trigger [postinsert_workflow_trans]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_workflow_trans]
GO
/****** Object:  Trigger [after_upd_workflow_trans]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[after_upd_workflow_trans]
GO
/****** Object:  Trigger [after_ins_workflow_trans]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[after_ins_workflow_trans]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[workflow_trans]') AND type in (N'U'))
ALTER TABLE [dbo].[workflow_trans] DROP CONSTRAINT IF EXISTS [DF_workflow_trans_assign_to_user]
GO
/****** Object:  Index [idx_workflow_trans_seq]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [idx_workflow_trans_seq] ON [dbo].[workflow_trans]
GO
/****** Object:  Index [_dta_index_workflow_trans_5_556581071__K3_K1_K5_6]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_workflow_trans_5_556581071__K3_K1_K5_6] ON [dbo].[workflow_trans]
GO
/****** Object:  Table [dbo].[workflow_trans]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[workflow_trans]
GO
/****** Object:  Table [dbo].[workflow_trans]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[workflow_trans]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[workflow_trans](
	[job_n] [numeric](18, 0) NOT NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[event_seq] [numeric](18, 0) NOT NULL,
	[team_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[event_id] [numeric](18, 0) NOT NULL,
	[assign_to_user] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[assigned_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[assigned_dt] [datetime] NULL,
	[confirmed_by_user] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[confirmed_dt] [datetime] NULL,
	[remarks] [varchar](3000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[event_desc] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[next_team_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[next_event_id] [numeric](18, 0) NULL,
	[reprint_ffi] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_workflow_trans] PRIMARY KEY CLUSTERED 
(
	[job_n] ASC,
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[workflow_trans] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[workflow_trans] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_workflow_trans_5_556581071__K3_K1_K5_6]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[workflow_trans]') AND name = N'_dta_index_workflow_trans_5_556581071__K3_K1_K5_6')
CREATE NONCLUSTERED INDEX [_dta_index_workflow_trans_5_556581071__K3_K1_K5_6] ON [dbo].[workflow_trans]
(
	[event_seq] ASC,
	[job_n] ASC,
	[event_id] ASC
)
INCLUDE ( 	[assign_to_user]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_workflow_trans_seq]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[workflow_trans]') AND name = N'idx_workflow_trans_seq')
CREATE NONCLUSTERED INDEX [idx_workflow_trans_seq] ON [dbo].[workflow_trans]
(
	[job_n] ASC,
	[event_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
