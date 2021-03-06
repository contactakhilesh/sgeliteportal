USE [appdata]
GO
/****** Object:  Trigger [trg_InsMkgs]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_InsMkgs]
GO
/****** Object:  Trigger [TRG_EM_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_EM_JOBS_UPDATED]
GO
/****** Object:  Trigger [postupdate_audit_export_mkgs]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_audit_export_mkgs]
GO
/****** Object:  Trigger [postinsert_audit_export_mkgs]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_audit_export_mkgs]
GO
/****** Object:  Trigger [postdelete_audit_export_mkgs]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_audit_export_mkgs]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MKGS]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_MKGS] DROP CONSTRAINT IF EXISTS [DF__EXPORT_MK__HD_FL__5FD5956C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MKGS]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_MKGS] DROP CONSTRAINT IF EXISTS [DF__EXPORT_MK__cont___7F029154]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MKGS]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_MKGS] DROP CONSTRAINT IF EXISTS [DF__EXPORT_MK__cont___7E0E6D1B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MKGS]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_MKGS] DROP CONSTRAINT IF EXISTS [DF__EXPORT_MK__SUM_A__2AC11801]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MKGS]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_MKGS] DROP CONSTRAINT IF EXISTS [DF_EXPORT_MKGS_ATT_SEAL_N]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MKGS]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_MKGS] DROP CONSTRAINT IF EXISTS [DF_EXPORT_MKGS_ATT_CONT_N]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MKGS]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_MKGS] DROP CONSTRAINT IF EXISTS [DF_EXPORT_MKGS_SEAL_N]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MKGS]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_MKGS] DROP CONSTRAINT IF EXISTS [DF_EXPORT_MKGS_CONT_N]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MKGS]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_MKGS] DROP CONSTRAINT IF EXISTS [DF_EXPORT_MKGS_LINE_TOT_PACK_TYPE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MKGS]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_MKGS] DROP CONSTRAINT IF EXISTS [DF_EXPORT_MKGS_LINE_TOT_PACKAGES]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MKGS]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_MKGS] DROP CONSTRAINT IF EXISTS [DF_EXPORT_MKGS_LINE_M3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MKGS]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_MKGS] DROP CONSTRAINT IF EXISTS [DF_EXPORT_MKGS_LINE_WT]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MKGS]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_MKGS] DROP CONSTRAINT IF EXISTS [DF_EXPORT_MKGS_CONT_SEQ_N]
GO
/****** Object:  Index [export_mkgs_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [export_mkgs_idx1] ON [dbo].[EXPORT_MKGS]
GO
/****** Object:  Index [_dta_index_EXPORT_MKGS_11_358292336__K2_K1_47_52_58_59_60_61]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_MKGS_11_358292336__K2_K1_47_52_58_59_60_61] ON [dbo].[EXPORT_MKGS]
GO
/****** Object:  Table [dbo].[EXPORT_MKGS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXPORT_MKGS]
GO
/****** Object:  Table [dbo].[EXPORT_MKGS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MKGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXPORT_MKGS](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](10, 0) NOT NULL,
	[CONT_SEQ_N] [numeric](10, 0) NOT NULL,
	[LINE_WT] [numeric](11, 3) NOT NULL,
	[LINE_M3] [numeric](12, 4) NOT NULL,
	[LINE_TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[LINE_TOT_PACK_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SEAL_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ATT_CONT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ATT_SEAL_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MKGS1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS5] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS6] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS7] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS8] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS9] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS10] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS11] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS12] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS13] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS14] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS15] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES5] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES6] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES7] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES8] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES9] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES10] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES11] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES12] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES13] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES14] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES15] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AIR_H] [numeric](11, 3) NULL,
	[AIR_W] [numeric](11, 3) NULL,
	[AIR_L] [numeric](11, 3) NULL,
	[LINE_CHG_WT] [numeric](11, 3) NULL,
	[LINE_CHG_IND] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_NET_WT] [numeric](11, 3) NULL,
	[LOT_N] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BATCH_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PRODUCT_DES] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINE_UNIT_QTY] [numeric](10, 2) NULL,
	[WT_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MKGS_ALL] [varchar](700) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DES_ALL] [varchar](1600) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LUBS_HI] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tare_wt] [decimal](9, 2) NULL,
	[SUM_ALL_PROD] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_20] [int] NULL,
	[cont_40] [int] NULL,
	[ATP] [datetime] NULL,
	[MAD] [datetime] NULL,
	[quantity_percentage] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[insurance_percentage] [decimal](9, 2) NULL,
	[insurance_calc_value] [decimal](9, 2) NULL,
	[HD_FLAG] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_EXPORT_MKGS] PRIMARY KEY CLUSTERED 
(
	[EXPORT_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_MKGS] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[EXPORT_MKGS] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_MKGS_11_358292336__K2_K1_47_52_58_59_60_61]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MKGS]') AND name = N'_dta_index_EXPORT_MKGS_11_358292336__K2_K1_47_52_58_59_60_61')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_MKGS_11_358292336__K2_K1_47_52_58_59_60_61] ON [dbo].[EXPORT_MKGS]
(
	[LINE_N] ASC,
	[EXPORT_N] ASC
)
INCLUDE ( 	[LINE_NET_WT],
	[WT_UOM],
	[cont_20],
	[cont_40],
	[ATP],
	[MAD]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [export_mkgs_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_MKGS]') AND name = N'export_mkgs_idx1')
CREATE NONCLUSTERED INDEX [export_mkgs_idx1] ON [dbo].[EXPORT_MKGS]
(
	[EXPORT_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
