USE [appdata]
GO
/****** Object:  Trigger [trg_u_imp_ref]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_u_imp_ref]
GO
/****** Object:  Trigger [TRG_IREF_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_IREF_JOBS_UPDATED]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IMPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[IMPORT_REF] DROP CONSTRAINT IF EXISTS [CK__IMPORT_RE__IMPOR__3508D0F3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IMPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[IMPORT_REF] DROP CONSTRAINT IF EXISTS [DF__import_re__cust___503CB573]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IMPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[IMPORT_REF] DROP CONSTRAINT IF EXISTS [DF__import_re__permi__562A98F3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IMPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[IMPORT_REF] DROP CONSTRAINT IF EXISTS [DF__IMPORT_RE__CREAT__06CD04F7]
GO
/****** Object:  Table [dbo].[IMPORT_REF]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[IMPORT_REF]
GO
/****** Object:  Table [dbo].[IMPORT_REF]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IMPORT_REF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IMPORT_REF](
	[IMPORT_REF_N] [numeric](10, 0) NOT NULL,
	[REF_YM] [varchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COST_CENTRE_C] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[JOB_TYPE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VESSEL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VOYAGE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OCEAN_BL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AGENT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_LOAD_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_DISC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CR_BKG_REF_N] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CR_PERMIT_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETA] [datetime] NOT NULL,
	[ETD] [datetime] NOT NULL,
	[WAREHOUSE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CR_AGENT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CREATE_D] [datetime] NOT NULL,
	[REF_CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REF_EX_RATE] [numeric](11, 5) NOT NULL,
	[REF_CLOSE_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REF_CLOSE_D] [datetime] NOT NULL,
	[CLOSE_USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DROP_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NVO_BL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NO_HBL] [numeric](2, 0) NULL,
	[TOTAL_M3] [numeric](11, 3) NULL,
	[TOTAL_WT] [numeric](11, 3) NULL,
	[TOTAL_PKGS] [numeric](11, 3) NULL,
	[REF_EX_RATE_CR] [numeric](11, 5) NULL,
	[JOB_TYPE_DAMCO] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NVOCC_AGENT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOTAL_PKGS_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NO_DO] [numeric](5, 0) NULL,
	[INV_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS3] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS5] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VESSEL2] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VOYAGE2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETA2] [datetime] NULL,
	[ETD2] [datetime] NULL,
	[PO_HAULIER] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PO_WAREHOUSE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SUM_M3] [numeric](11, 3) NULL,
	[SUM_WT] [numeric](11, 3) NULL,
	[SUM_DN] [numeric](11, 3) NULL,
	[SUM_CN] [numeric](11, 3) NULL,
	[SUM_PV] [numeric](11, 3) NULL,
	[SUM_JC] [numeric](11, 3) NULL,
	[SUM_IV] [numeric](11, 3) NULL,
	[UP_USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[TOTAL_NET_WT] [numeric](11, 3) NULL,
	[TRANS_MODE] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ATA] [datetime] NULL,
	[modified_dt] [datetime] NULL,
	[modified_user] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[permit_by_nvocc] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id_ref] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_IMPORT_REF] PRIMARY KEY NONCLUSTERED 
(
	[IMPORT_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[IMPORT_REF] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[IMPORT_REF] TO [public] AS [dbo]
GO
