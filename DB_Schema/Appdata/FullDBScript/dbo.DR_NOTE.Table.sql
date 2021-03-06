USE [appdata]
GO
/****** Object:  Trigger [trg_u_dr_note]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_u_dr_note]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DR_NOTE]') AND type in (N'U'))
ALTER TABLE [dbo].[DR_NOTE] DROP CONSTRAINT IF EXISTS [FK_dr_note_entity_rowid]
GO
/****** Object:  Index [IX_REF_DR]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_REF_DR] ON [dbo].[DR_NOTE]
GO
/****** Object:  Table [dbo].[DR_NOTE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DR_NOTE]
GO
/****** Object:  Table [dbo].[DR_NOTE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DR_NOTE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DR_NOTE](
	[FY] [varchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[INVOICE_N] [numeric](10, 0) NOT NULL,
	[INVOICE_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_YM] [varchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_REF_N] [numeric](10, 0) NOT NULL,
	[INV_JOB_N] [numeric](10, 0) NULL,
	[INV_TRA_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[INV_D] [datetime] NULL,
	[PRN_D] [datetime] NULL,
	[INV_PRN_D] [datetime] NULL,
	[INV_PRN_COUNT] [numeric](2, 0) NULL,
	[INV_CANCEL_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_CANCEL_D] [datetime] NULL,
	[INV_EX_RATE] [numeric](11, 6) NULL,
	[REF_EX_RATE] [numeric](11, 6) NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NULL,
	[TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COST_CENTRE_C] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VESSEL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VOYAGE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HBL_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OCEAN_BL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GD_DES1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GD_DES2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GD_DES3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GD_DES4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GD_DES5] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_LOAD_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_DISC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOT_WT] [numeric](11, 3) NULL,
	[TOT_M3] [numeric](11, 3) NULL,
	[TOT_PACKAGES] [numeric](10, 0) NULL,
	[TOT_PACK_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ENTRY_D] [datetime] NULL,
	[USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATE_D] [datetime] NULL,
	[CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_GST_A] [numeric](11, 2) NULL,
	[INV_TOT_STD_RATE] [numeric](11, 2) NULL,
	[INV_TOT_ZERO_RATE_A] [numeric](11, 2) NULL,
	[INV_TOT_A] [numeric](11, 2) NULL,
	[INV_TOT_GST_A] [numeric](11, 2) NULL,
	[PRINT_N] [numeric](10, 0) NULL,
	[EXPORT_IND] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VOID_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CORRES_INVOICE_N] [numeric](10, 0) NULL,
	[TT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TT_PAYDATE] [datetime] NULL,
	[TT_CUST] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TT_CURR] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TT_AMT] [numeric](11, 2) NULL,
	[TT_PULLDATE] [datetime] NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[DR_NOTE] ADD [INV_EX_RATE_USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[DR_NOTE] ADD [INV_EX_RATE_ENTRY_D] [datetime] NULL
ALTER TABLE [dbo].[DR_NOTE] ADD [INV_EX_RATE_USD] [numeric](11, 6) NULL
ALTER TABLE [dbo].[DR_NOTE] ADD [GD_DES6] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[DR_NOTE] ADD [GD_DES7] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[DR_NOTE] ADD [GD_DES8] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[DR_NOTE] ADD [CONTROL_FLAG] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[DR_NOTE] ADD [entity_rowid] [numeric](18, 0) NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[DR_NOTE] ADD [ar_doc_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[DR_NOTE] ADD [rejected_flag] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
 CONSTRAINT [SYS_C0051990] PRIMARY KEY NONCLUSTERED 
(
	[FY] ASC,
	[INVOICE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DR_NOTE] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DR_NOTE] TO [public] AS [dbo]
GO
/****** Object:  Index [IX_REF_DR]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DR_NOTE]') AND name = N'IX_REF_DR')
CREATE NONCLUSTERED INDEX [IX_REF_DR] ON [dbo].[DR_NOTE]
(
	[INV_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dr_note_entity_rowid]') AND parent_object_id = OBJECT_ID(N'[dbo].[DR_NOTE]'))
ALTER TABLE [dbo].[DR_NOTE]  WITH CHECK ADD  CONSTRAINT [FK_dr_note_entity_rowid] FOREIGN KEY([entity_rowid])
REFERENCES [dbo].[entity_info] ([row_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dr_note_entity_rowid]') AND parent_object_id = OBJECT_ID(N'[dbo].[DR_NOTE]'))
ALTER TABLE [dbo].[DR_NOTE] CHECK CONSTRAINT [FK_dr_note_entity_rowid]
GO
