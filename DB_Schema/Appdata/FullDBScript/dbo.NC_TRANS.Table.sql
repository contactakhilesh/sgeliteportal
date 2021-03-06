USE [appdata]
GO
/****** Object:  Trigger [TRG_NC_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_NC_JOBS_UPDATED]
GO
/****** Object:  Trigger [postupdate_nc_trans]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_nc_trans]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NC_TRANS]') AND type in (N'U'))
ALTER TABLE [dbo].[NC_TRANS] DROP CONSTRAINT IF EXISTS [DF__NC_TRANS__show_r__668292FB]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NC_TRANS]') AND type in (N'U'))
ALTER TABLE [dbo].[NC_TRANS] DROP CONSTRAINT IF EXISTS [DF__NC_TRANS__create__636563D7]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NC_TRANS]') AND type in (N'U'))
ALTER TABLE [dbo].[NC_TRANS] DROP CONSTRAINT IF EXISTS [DF__NC_TRANS__nc_ebk__62D066FA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NC_TRANS]') AND type in (N'U'))
ALTER TABLE [dbo].[NC_TRANS] DROP CONSTRAINT IF EXISTS [DF__NC_TRANS__nc_ddf__6D82FF97]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NC_TRANS]') AND type in (N'U'))
ALTER TABLE [dbo].[NC_TRANS] DROP CONSTRAINT IF EXISTS [DF__NC_TRANS__nc_bld__6C8EDB5E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NC_TRANS]') AND type in (N'U'))
ALTER TABLE [dbo].[NC_TRANS] DROP CONSTRAINT IF EXISTS [DF__NC_TRANS__nc_roo__28D8CF8F]
GO
/****** Object:  Index [nc_trans_idx2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [nc_trans_idx2] ON [dbo].[NC_TRANS]
GO
/****** Object:  Index [nc_trans_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [nc_trans_idx1] ON [dbo].[NC_TRANS]
GO
/****** Object:  Index [I_NcTransNcJobN]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_NcTransNcJobN] ON [dbo].[NC_TRANS]
GO
/****** Object:  Table [dbo].[NC_TRANS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[NC_TRANS]
GO
/****** Object:  Table [dbo].[NC_TRANS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NC_TRANS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NC_TRANS](
	[NC_TRAN_NO] [numeric](10, 0) NOT NULL,
	[NC_TRAN_DT] [datetime] NOT NULL,
	[NC_DD_ACTION] [datetime] NULL,
	[NC_CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[NC_SHIPP_REFN] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NC_PARTIES] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NC_COMPLAIN_DESC] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NC_ACTION_BY] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NC_ACTION_DT] [datetime] NULL,
	[NO_CAUSE_DESC] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NC_CORRECTIVE] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NC_DT_IMPLEMENT] [datetime] NULL,
	[NC_COST_INCURRD] [numeric](11, 3) NULL,
	[NC_BILL_TO] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NC_REF_N] [numeric](10, 0) NOT NULL,
	[NC_REF_IND] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[NC_CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NC_JOB_N] [numeric](10, 0) NOT NULL,
	[NC_VERIFIED_BY] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NULL,
	[modified_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_dt] [datetime] NULL,
	[NC_MASTER_TRAN_NO] [numeric](10, 0) NULL,
	[nc_rootind] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nc_bldfc_validated] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nc_ddfc_validated] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nc_ebkg_validated] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[carrier_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_subjob_nc] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[reserved_booked_etd] [datetime] NULL,
	[show_report] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RvsBCtoCSP_d] [datetime] NULL,
 CONSTRAINT [NC_TRANS_PK] PRIMARY KEY CLUSTERED 
(
	[NC_TRAN_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[NC_TRANS] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[NC_TRANS] TO [public] AS [dbo]
GO
/****** Object:  Index [I_NcTransNcJobN]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NC_TRANS]') AND name = N'I_NcTransNcJobN')
CREATE NONCLUSTERED INDEX [I_NcTransNcJobN] ON [dbo].[NC_TRANS]
(
	[NC_JOB_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [nc_trans_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NC_TRANS]') AND name = N'nc_trans_idx1')
CREATE NONCLUSTERED INDEX [nc_trans_idx1] ON [dbo].[NC_TRANS]
(
	[NC_JOB_N] ASC,
	[nc_bldfc_validated] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [nc_trans_idx2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[NC_TRANS]') AND name = N'nc_trans_idx2')
CREATE NONCLUSTERED INDEX [nc_trans_idx2] ON [dbo].[NC_TRANS]
(
	[NC_JOB_N] ASC,
	[nc_ddfc_validated] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
