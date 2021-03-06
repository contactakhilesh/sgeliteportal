USE [appdata]
GO
/****** Object:  Trigger [postinsert_combine_jobs_master]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_combine_jobs_master]
GO
/****** Object:  Trigger [postinsert_audit_combine_jobs_master]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_audit_combine_jobs_master]
GO
/****** Object:  Trigger [postdeleted_combine_jobs_master]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdeleted_combine_jobs_master]
GO
/****** Object:  Trigger [postdelete_audit_combine_jobs_master]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_audit_combine_jobs_master]
GO
/****** Object:  Index [idx_combine_jobs_master_1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [idx_combine_jobs_master_1] ON [dbo].[COMBINE_JOBS_MASTER]
GO
/****** Object:  Table [dbo].[COMBINE_JOBS_MASTER]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[COMBINE_JOBS_MASTER]
GO
/****** Object:  Table [dbo].[COMBINE_JOBS_MASTER]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COMBINE_JOBS_MASTER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COMBINE_JOBS_MASTER](
	[EXPORT_N_HD] [numeric](9, 0) NOT NULL,
	[EXPORT_N_DT] [numeric](9, 0) NOT NULL,
	[EXPORT_REF_N_DT] [numeric](9, 0) NOT NULL,
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[HBL_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_ORD_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[JOB_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[entry_d] [datetime] NULL,
 CONSTRAINT [PK_COMBINE_JOBS_MASTER] PRIMARY KEY CLUSTERED 
(
	[EXPORT_N_HD] ASC,
	[EXPORT_N_DT] ASC,
	[JOB_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[COMBINE_JOBS_MASTER] TO  SCHEMA OWNER 
GO
/****** Object:  Index [idx_combine_jobs_master_1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[COMBINE_JOBS_MASTER]') AND name = N'idx_combine_jobs_master_1')
CREATE NONCLUSTERED INDEX [idx_combine_jobs_master_1] ON [dbo].[COMBINE_JOBS_MASTER]
(
	[EXPORT_N_DT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
