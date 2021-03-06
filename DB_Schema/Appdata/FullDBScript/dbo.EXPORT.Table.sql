USE [appdata]
GO
/****** Object:  Trigger [Trucker_Allocation_Trigger]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[Trucker_Allocation_Trigger]
GO
/****** Object:  Trigger [trg_update_on_inserted_export]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_update_on_inserted_export]
GO
/****** Object:  Trigger [trg_u_export]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_u_export]
GO
/****** Object:  Trigger [trg_postupdate_SOB_SHELL]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_postupdate_SOB_SHELL]
GO
/****** Object:  Trigger [trg_postupdate_SABIC_KPI_export]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_postupdate_SABIC_KPI_export]
GO
/****** Object:  Trigger [trg_post_upd_export_for_nc]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_post_upd_export_for_nc]
GO
/****** Object:  Trigger [trg_post_upd_export]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_post_upd_export]
GO
/****** Object:  Trigger [trg_post_ins_upd_export]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_post_ins_upd_export]
GO
/****** Object:  Trigger [trg_i_export]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_i_export]
GO
/****** Object:  Trigger [TRG_EXP_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_EXP_JOBS_UPDATED]
GO
/****** Object:  Trigger [trg_after_upd_for_col_history]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_upd_for_col_history]
GO
/****** Object:  Trigger [trg_after_upd_export]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_upd_export]
GO
/****** Object:  Trigger [trg_after_ins_export]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_ins_export]
GO
/****** Object:  Trigger [trg_aft_upd_export_nc]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_aft_upd_export_nc]
GO
/****** Object:  Trigger [tgr_postins_export]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[tgr_postins_export]
GO
/****** Object:  Trigger [postupdate_slave_export]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_slave_export]
GO
/****** Object:  Trigger [postupdate_audit_export]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_audit_export]
GO
/****** Object:  Trigger [postinsert_audit_export]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_audit_export]
GO
/****** Object:  Trigger [postdelete_audit_export]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_audit_export]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF__EXPORT__ISSAMPLE__48076225]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF__EXPORT__status__7D1A48E2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF__EXPORT__palletiz__41055EDB]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_HAZARD_IND]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_DG_IND]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_WEB_IND]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_WEB_WAREHOUSE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_PSC_IND]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF__EXPORT__TRANS_IM__5DCAEF64]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_AG6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_AG5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_AG4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_AG3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_AG2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_AG1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_NP6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_NP5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_NP4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_NP3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_NP2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_NP1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_CON6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_CON5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_CON4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_CON3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_CON2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_CON1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_SHIPPER6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_SHIPPER5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_SHIPPER4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_SHIPPER3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_SHIPPER2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_S_SHIPPER1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_BL_Q]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_T_SHIP_IND]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_SHIP_COUNT_IND]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_EXPRESS_IND]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_SHIP_ON_BRD_IND]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_FREIGHT_TERM_ID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_PORT_REC_TERMS]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_PORT_REC_NAME]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_PORT_REC_ID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_PORT_DEL_TERMS]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_PORT_DEL_NAME]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_PORT_DEL_ID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_PORT_DISC_NAME]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_PORT_LOAD_NAME]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_GD_DES5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_GD_DES4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_GD_DES3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_GD_DES2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_GD_DES1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_TOT_PACK_TYPE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_TOT_PACKAGES]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_TOT_WT]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_TOT_M3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT] DROP CONSTRAINT IF EXISTS [DF_EXPORT_HBL_N]
GO
/****** Object:  Index [MJC2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [MJC2] ON [dbo].[EXPORT]
GO
/****** Object:  Index [IX_REF_EXP]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_REF_EXP] ON [dbo].[EXPORT]
GO
/****** Object:  Index [IX_EXPORT_CUST_ID]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_EXPORT_CUST_ID] ON [dbo].[EXPORT]
GO
/****** Object:  Index [IX_CUST_ORD_NO]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_CUST_ORD_NO] ON [dbo].[EXPORT]
GO
/****** Object:  Index [I_EXPORT_EXPORT_REF_N]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_EXPORT_EXPORT_REF_N] ON [dbo].[EXPORT]
GO
/****** Object:  Index [I_EXPORT_EXP_REF_N_HBL]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_EXPORT_EXP_REF_N_HBL] ON [dbo].[EXPORT]
GO
/****** Object:  Index [export_idx6]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [export_idx6] ON [dbo].[EXPORT]
GO
/****** Object:  Index [export_idx5]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [export_idx5] ON [dbo].[EXPORT]
GO
/****** Object:  Index [export_idx4]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [export_idx4] ON [dbo].[EXPORT]
GO
/****** Object:  Index [ENRY_D_IDX]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [ENRY_D_IDX] ON [dbo].[EXPORT]
GO
/****** Object:  Index [_dta_index_EXPORT_5_2022298264__K3_K2_K1_16_87]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_5_2022298264__K3_K2_K1_16_87] ON [dbo].[EXPORT]
GO
/****** Object:  Index [_dta_index_EXPORT_5_2022298264__K2_K1_4_87]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_5_2022298264__K2_K1_4_87] ON [dbo].[EXPORT]
GO
/****** Object:  Index [_dta_index_EXPORT_11_2022298264__K87_K1_2_61]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_11_2022298264__K87_K1_2_61] ON [dbo].[EXPORT]
GO
/****** Object:  Index [_dta_index_EXPORT_11_2022298264__K3_K84_K139_K138_K2_K1_K87_14_15_35_62_63_64_70_76_103_104_105_127_135_136_137_142_148_159_]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_11_2022298264__K3_K84_K139_K138_K2_K1_K87_14_15_35_62_63_64_70_76_103_104_105_127_135_136_137_142_148_159_] ON [dbo].[EXPORT]
GO
/****** Object:  Index [_dta_index_EXPORT_11_2022298264__K3_K2_K1_17_81_87]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_11_2022298264__K3_K2_K1_17_81_87] ON [dbo].[EXPORT]
GO
/****** Object:  Index [_dta_index_EXPORT_11_2022298264__K2_K1_35]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_11_2022298264__K2_K1_35] ON [dbo].[EXPORT]
GO
/****** Object:  Index [_dta_index_EXPORT_11_2022298264__K1_K3_2_87]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_11_2022298264__K1_K3_2_87] ON [dbo].[EXPORT]
GO
/****** Object:  Index [_dta_index_EXPORT_11_2022298264__K1_K2_K3_K87_4]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_11_2022298264__K1_K2_K3_K87_4] ON [dbo].[EXPORT]
GO
/****** Object:  Table [dbo].[EXPORT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXPORT]
GO
/****** Object:  Table [dbo].[EXPORT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXPORT](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[EXPORT_REF_N] [numeric](10, 0) NOT NULL,
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[HBL_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TOT_M3] [numeric](12, 4) NOT NULL,
	[TOT_WT] [numeric](11, 3) NOT NULL,
	[TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[TOT_PACK_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_LOAD_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_DISC_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_DEL_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_DEL_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_DEL_TERMS] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_REC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_REC_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_REC_TERMS] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FREIGHT_TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SHIP_ON_BRD_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SHIP_ON_BRD_D] [datetime] NULL,
	[EXPRESS_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SHIP_COUNT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[T_SHIP_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[BL_Q] [numeric](2, 0) NOT NULL,
	[S_SHIPPER1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_SHIPPER2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_SHIPPER3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_SHIPPER4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_SHIPPER5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_SHIPPER6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_CON1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_CON2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_CON3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_CON4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_CON5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_CON6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_NP1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_NP2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_NP3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_NP4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_NP5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_NP6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_AG1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_AG2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_AG3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_AG4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_AG5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_AG6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CARGO_WORDS] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PRE_CARRIAGE] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COLLECT_A] [numeric](11, 3) NULL,
	[COLLECT_CURRENCY] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TRANS_IMPORT_N] [numeric](10, 0) NULL,
	[PO_N] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_20] [numeric](10, 0) NULL,
	[CONT_40] [numeric](10, 0) NULL,
	[CONT_45] [numeric](10, 0) NULL,
	[CUST_TYPE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[I_RATE] [numeric](11, 2) NULL,
	[PSC_IND] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_IND2] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AS_AGENT] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_WAREHOUSE] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_CFS] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_BL] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_POD] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_DO_READY] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_DO_COLLECT] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_CONSIGNEE] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PO_HAULIER] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_AGENT] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UP_USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[BKG_REF_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SWITCH_BL_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOT_CHG_WT] [numeric](11, 3) NULL,
	[WEB_IND] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_FIN_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_FIN_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_ORD_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COLLECT_DATE] [datetime] NULL,
	[CONTAIN_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOT_NET_WT] [numeric](11, 3) NULL,
	[BL_PRN_CNT] [numeric](10, 0) NULL,
	[CONSIGNEE_REF_N] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TIE_REF_N] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_NO] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_DESC] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BOARD_TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UP_TIE_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UP_TIE_D] [datetime] NULL,
	[EDI_RESP_SEQ] [numeric](5, 0) NULL,
	[EDI_RESP_D] [datetime] NULL,
	[EDI_RESP_USER] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SIGNATURE_NAME] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ISO] [numeric](18, 0) NULL,
	[PORT_LOAD_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_DESC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_ISSUE_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SELECT_CONT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_DESC2] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_REF1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_REF2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_REF3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_REF4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_REF5] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INVOICE_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PAYMENT_TERMS] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILL_TO1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILL_TO2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILL_TO3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILL_TO4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILL_TO5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILL_TO6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OCEAN_FR_COST] [numeric](11, 3) NULL,
	[ACTUAL_ARR_D] [datetime] NULL,
	[BL_TO_SSLINE_D] [datetime] NULL,
	[BL_FROM_SSLINE_D] [datetime] NULL,
	[DOCS_SENT_TO_BANK_D] [datetime] NULL,
	[DOCS_SENT_TO_CUST_D] [datetime] NULL,
	[DTL_WTM3_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WT_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PLANT_LOAD_D] [datetime] NULL,
	[COUNTRY_ULTIMATE_DEST] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BL_PLACE_OF_SURRENDER] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SEND_TYPE_ID] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PRT_SIG_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INCO_TERMS] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ACTUAL_SAIL_D] [datetime] NULL,
	[EDI_REMARKS1] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_REMARKS2] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FCR_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HAZARD_DECL] [varchar](350) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PACK_CERT] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMER_CONT] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USBOYCOTT_CLAUSE] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SED_CLAUSE] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ITN] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SIGN_DECL] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD_REMARKS] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DG_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HAZARD_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PACK_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMER_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[US_BOYCOTT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SED_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ITN_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SIGN_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD_REM_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SELECT_CONT] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[EXPORT] ADD [HAZARD_DECL2] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [POINT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [POINT_DESC] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [ORIGIN_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [ORIGIN_DESC] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [PRICE_TERM_PORT] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[EXPORT] ADD [F_AG1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [F_AG2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [F_AG3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [F_AG4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [F_AG5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [F_AG6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[EXPORT] ADD [INSURER] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [INSUR_VAL] [numeric](15, 3) NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[EXPORT] ADD [PRODUCT_ORIG] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [DOCS_DISP_BANK_D] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [DOCS_REC_CUST_D] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [GI_CHEMICAL_D] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [HI_LUB_D] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [SURVEYOR_D] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [FLAG_IMPORT_N] [numeric](10, 0) NULL
ALTER TABLE [dbo].[EXPORT] ADD [FLAG_EXPORT_N] [numeric](9, 0) NULL
ALTER TABLE [dbo].[EXPORT] ADD [CNB_LICENSENO] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [final_del_remarks] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [palletize] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[EXPORT] ADD [status] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[EXPORT] ADD [laycan_dt] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [FFI] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [ATP] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [MAD] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [location_id] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [pack_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [ISSAMPLEORDER] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[EXPORT] ADD [invoice_amt] [numeric](15, 2) NULL
ALTER TABLE [dbo].[EXPORT] ADD [sentint] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [SPLIT_CNT] [numeric](10, 0) NULL
ALTER TABLE [dbo].[EXPORT] ADD [hi_counter] [int] NULL
ALTER TABLE [dbo].[EXPORT] ADD [fd_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [lc_received_d] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [lc_received_amendment_d] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [invoice_date] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [premium_rate] [numeric](11, 3) NULL
ALTER TABLE [dbo].[EXPORT] ADD [premium_amt] [numeric](11, 3) NULL
ALTER TABLE [dbo].[EXPORT] ADD [entity_rowid] [numeric](10, 0) NULL
ALTER TABLE [dbo].[EXPORT] ADD [lc_discrepancy_d] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [is_reefer] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [SShipperCode] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [SConCode] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [SNp1Code] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [SLcConCode] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [SNp2Code] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [SAgCode] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [BillToCode] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [FAgCode] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [is_nor] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [DhlRcvCode] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [blanket_no] [numeric](19, 2) NULL
ALTER TABLE [dbo].[EXPORT] ADD [EmailApproved_dt] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [EmailSent_by] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [EmailSent_dt] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [export_remarks] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [import_n] [numeric](19, 2) NULL
ALTER TABLE [dbo].[EXPORT] ADD [IsEmailApproved] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [IsEmailSent] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [SOW] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [sow_master_no] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [export_n_hd] [numeric](9, 0) NULL
ALTER TABLE [dbo].[EXPORT] ADD [lc_date] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [lc_shipment_date] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [draft_bl_rcv_fr_carrier] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [imp_to_db] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [exp_to_db] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [hub_order] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [elitetrax_uploaded] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [custprodno] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [nn_copy] [int] NULL
ALTER TABLE [dbo].[EXPORT] ADD [sap_create_date] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [fd_create_date] [datetime] NULL
ALTER TABLE [dbo].[EXPORT] ADD [bl_split] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[EXPORT] ADD [doc_received_date] [datetime] NULL
 CONSTRAINT [PK_EXPORT] PRIMARY KEY CLUSTERED 
(
	[EXPORT_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXPORT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[EXPORT] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_11_2022298264__K1_K2_K3_K87_4]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'_dta_index_EXPORT_11_2022298264__K1_K2_K3_K87_4')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_11_2022298264__K1_K2_K3_K87_4] ON [dbo].[EXPORT]
(
	[EXPORT_N] ASC,
	[EXPORT_REF_N] ASC,
	[CUST_ID] ASC,
	[CUST_ORD_NO] ASC
)
INCLUDE ( 	[HBL_N]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_11_2022298264__K1_K3_2_87]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'_dta_index_EXPORT_11_2022298264__K1_K3_2_87')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_11_2022298264__K1_K3_2_87] ON [dbo].[EXPORT]
(
	[EXPORT_N] ASC,
	[CUST_ID] ASC
)
INCLUDE ( 	[EXPORT_REF_N],
	[CUST_ORD_NO]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [_dta_index_EXPORT_11_2022298264__K2_K1_35]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'_dta_index_EXPORT_11_2022298264__K2_K1_35')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_11_2022298264__K2_K1_35] ON [dbo].[EXPORT]
(
	[EXPORT_REF_N] ASC,
	[EXPORT_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_11_2022298264__K3_K2_K1_17_81_87]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'_dta_index_EXPORT_11_2022298264__K3_K2_K1_17_81_87')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_11_2022298264__K3_K2_K1_17_81_87] ON [dbo].[EXPORT]
(
	[CUST_ID] ASC,
	[EXPORT_REF_N] ASC,
	[EXPORT_N] ASC
)
INCLUDE ( 	[PORT_DEL_NAME],
	[BKG_REF_N],
	[CUST_ORD_NO]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_11_2022298264__K3_K84_K139_K138_K2_K1_K87_14_15_35_62_63_64_70_76_103_104_105_127_135_136_137_142_148_159_]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'_dta_index_EXPORT_11_2022298264__K3_K84_K139_K138_K2_K1_K87_14_15_35_62_63_64_70_76_103_104_105_127_135_136_137_142_148_159_')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_11_2022298264__K3_K84_K139_K138_K2_K1_K87_14_15_35_62_63_64_70_76_103_104_105_127_135_136_137_142_148_159_] ON [dbo].[EXPORT]
(
	[CUST_ID] ASC,
	[WEB_IND] ASC,
	[DOCS_SENT_TO_CUST_D] ASC,
	[DOCS_SENT_TO_BANK_D] ASC,
	[EXPORT_REF_N] ASC,
	[EXPORT_N] ASC,
	[CUST_ORD_NO] ASC
)
INCLUDE ( 	[PORT_LOAD_NAME],
	[PORT_DISC_NAME],
	[S_CON1],
	[CONT_20],
	[CONT_40],
	[CONT_45],
	[WEB_WAREHOUSE],
	[WEB_CONSIGNEE],
	[ISO],
	[PORT_LOAD_ID],
	[PORT_DESC_ID],
	[PAYMENT_TERMS],
	[ACTUAL_ARR_D],
	[BL_TO_SSLINE_D],
	[BL_FROM_SSLINE_D],
	[PLANT_LOAD_D],
	[ACTUAL_SAIL_D],
	[ADD_REMARKS],
	[DOCS_DISP_BANK_D],
	[DOCS_REC_CUST_D],
	[HI_LUB_D]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_11_2022298264__K87_K1_2_61]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'_dta_index_EXPORT_11_2022298264__K87_K1_2_61')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_11_2022298264__K87_K1_2_61] ON [dbo].[EXPORT]
(
	[CUST_ORD_NO] ASC,
	[EXPORT_N] ASC
)
INCLUDE ( 	[EXPORT_REF_N],
	[PO_N]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_5_2022298264__K2_K1_4_87]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'_dta_index_EXPORT_5_2022298264__K2_K1_4_87')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_5_2022298264__K2_K1_4_87] ON [dbo].[EXPORT]
(
	[EXPORT_REF_N] ASC,
	[EXPORT_N] ASC
)
INCLUDE ( 	[HBL_N],
	[CUST_ORD_NO]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_5_2022298264__K3_K2_K1_16_87]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'_dta_index_EXPORT_5_2022298264__K3_K2_K1_16_87')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_5_2022298264__K3_K2_K1_16_87] ON [dbo].[EXPORT]
(
	[CUST_ID] ASC,
	[EXPORT_REF_N] ASC,
	[EXPORT_N] ASC
)
INCLUDE ( 	[PORT_DEL_ID],
	[CUST_ORD_NO]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ENRY_D_IDX]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'ENRY_D_IDX')
CREATE NONCLUSTERED INDEX [ENRY_D_IDX] ON [dbo].[EXPORT]
(
	[ENTRY_D] DESC
)
INCLUDE ( 	[EXPORT_N],
	[EXPORT_REF_N],
	[CUST_ID],
	[HBL_N],
	[CUST_ORD_NO]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [export_idx4]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'export_idx4')
CREATE NONCLUSTERED INDEX [export_idx4] ON [dbo].[EXPORT]
(
	[EXPORT_REF_N] ASC,
	[HBL_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [export_idx5]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'export_idx5')
CREATE NONCLUSTERED INDEX [export_idx5] ON [dbo].[EXPORT]
(
	[EXPORT_N] ASC,
	[ACTUAL_SAIL_D] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [export_idx6]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'export_idx6')
CREATE NONCLUSTERED INDEX [export_idx6] ON [dbo].[EXPORT]
(
	[EXPORT_N] ASC,
	[ISSAMPLEORDER] ASC,
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_EXPORT_EXP_REF_N_HBL]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'I_EXPORT_EXP_REF_N_HBL')
CREATE NONCLUSTERED INDEX [I_EXPORT_EXP_REF_N_HBL] ON [dbo].[EXPORT]
(
	[EXPORT_REF_N] ASC,
	[HBL_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [I_EXPORT_EXPORT_REF_N]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'I_EXPORT_EXPORT_REF_N')
CREATE NONCLUSTERED INDEX [I_EXPORT_EXPORT_REF_N] ON [dbo].[EXPORT]
(
	[EXPORT_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CUST_ORD_NO]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'IX_CUST_ORD_NO')
CREATE NONCLUSTERED INDEX [IX_CUST_ORD_NO] ON [dbo].[EXPORT]
(
	[CUST_ORD_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_EXPORT_CUST_ID]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'IX_EXPORT_CUST_ID')
CREATE NONCLUSTERED INDEX [IX_EXPORT_CUST_ID] ON [dbo].[EXPORT]
(
	[CUST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [IX_REF_EXP]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'IX_REF_EXP')
CREATE NONCLUSTERED INDEX [IX_REF_EXP] ON [dbo].[EXPORT]
(
	[EXPORT_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MJC2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT]') AND name = N'MJC2')
CREATE NONCLUSTERED INDEX [MJC2] ON [dbo].[EXPORT]
(
	[EXPORT_REF_N] ASC,
	[HBL_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
