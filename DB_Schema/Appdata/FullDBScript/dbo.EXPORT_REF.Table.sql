USE [appdata]
GO
/****** Object:  Trigger [trg_update_on_inserted_export_ref]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_update_on_inserted_export_ref]
GO
/****** Object:  Trigger [trg_update_on_cr_agent_id]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_update_on_cr_agent_id]
GO
/****** Object:  Trigger [trg_u_exp_ref_on_plant_code]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_u_exp_ref_on_plant_code]
GO
/****** Object:  Trigger [trg_u_exp_ref]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_u_exp_ref]
GO
/****** Object:  Trigger [trg_postupdate_SABIC_KPI]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_postupdate_SABIC_KPI]
GO
/****** Object:  Trigger [TRG_EREF_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_EREF_JOBS_UPDATED]
GO
/****** Object:  Trigger [trg_after_upd_for_col_history_export_ref]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_upd_for_col_history_export_ref]
GO
/****** Object:  Trigger [trg_after_upd_export_ref]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_upd_export_ref]
GO
/****** Object:  Trigger [trg_aft_upd_export_ref_nc]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_aft_upd_export_ref_nc]
GO
/****** Object:  Trigger [postupdate_slave_export_ref]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_slave_export_ref]
GO
/****** Object:  Trigger [postupdate_audit_export_ref]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_audit_export_ref]
GO
/****** Object:  Trigger [postinsert_audit_export_ref]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_audit_export_ref]
GO
/****** Object:  Trigger [postdelete_audit_export_ref]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_audit_export_ref]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF__export_re__cust___4F48913A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF__export_re__permi__571EBD2C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF__export_re__EXPOR__2E86BBED]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [df_export_ref_obl_type]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF_EXPORT_REF_REF_CLOSE_IND]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF_EXPORT_REF_CR_AGENT_ID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF_EXPORT_REF_CR_BKG_REF_N]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF_EXPORT_REF_PORT_DISC_ID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF_EXPORT_REF_PORT_LOAD_ID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF_EXPORT_REF_OBL_TERM_ID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF_EXPORT_REF_OCEAN_BL]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF_EXPORT_REF_REF_CURRENCY_ID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF_EXPORT_REF_REF_EX_RATE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF_EXPORT_REF_AGENT_ID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF_EXPORT_REF_COST_CENTRE_C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF_EXPORT_REF_REF_YM]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF_EXPORT_REF_VOYAGE]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF] DROP CONSTRAINT IF EXISTS [DF_EXPORT_REF_VESSEL]
GO
/****** Object:  Index [MJC1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [MJC1] ON [dbo].[EXPORT_REF]
GO
/****** Object:  Index [I_ExportRefTransModeIncl10]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_ExportRefTransModeIncl10] ON [dbo].[EXPORT_REF]
GO
/****** Object:  Index [I_ExportRefEtdJobTypeTransMode]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_ExportRefEtdJobTypeTransMode] ON [dbo].[EXPORT_REF]
GO
/****** Object:  Index [I_ExportRefEtd]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_ExportRefEtd] ON [dbo].[EXPORT_REF]
GO
/****** Object:  Index [I_etd]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_etd] ON [dbo].[EXPORT_REF]
GO
/****** Object:  Index [export_ref_idx2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [export_ref_idx2] ON [dbo].[EXPORT_REF]
GO
/****** Object:  Index [export_ref_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [export_ref_idx1] ON [dbo].[EXPORT_REF]
GO
/****** Object:  Index [_dta_index_EXPORT_REF_7_518292906__K16_K1_2_3_14_15_17_20_28_46_98_99_103_117_126_127]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_REF_7_518292906__K16_K1_2_3_14_15_17_20_28_46_98_99_103_117_126_127] ON [dbo].[EXPORT_REF]
GO
/****** Object:  Index [_dta_index_EXPORT_REF_5_976774587__K15_K1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_REF_5_976774587__K15_K1] ON [dbo].[EXPORT_REF]
GO
/****** Object:  Index [_dta_index_EXPORT_REF_5_976774587__K1_9]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_REF_5_976774587__K1_9] ON [dbo].[EXPORT_REF]
GO
/****** Object:  Index [_dta_index_EXPORT_REF_11_976774587__K16_K14_K1_2_3_17_46_69_104_105]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_REF_11_976774587__K16_K14_K1_2_3_17_46_69_104_105] ON [dbo].[EXPORT_REF]
GO
/****** Object:  Index [_dta_index_EXPORT_REF_11_976774587__K14_K17_K16_K1_2_3_9]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_REF_11_976774587__K14_K17_K16_K1_2_3_9] ON [dbo].[EXPORT_REF]
GO
/****** Object:  Index [_dta_index_EXPORT_REF_11_976774587__K11_K1_K14_2_3_15_16_17_20_28_46_98_99_103_117_126_127]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_REF_11_976774587__K11_K1_K14_2_3_15_16_17_20_28_46_98_99_103_117_126_127] ON [dbo].[EXPORT_REF]
GO
/****** Object:  Table [dbo].[EXPORT_REF]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXPORT_REF]
GO
/****** Object:  Table [dbo].[EXPORT_REF]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXPORT_REF](
	[EXPORT_REF_N] [numeric](10, 0) NOT NULL,
	[VESSEL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VOYAGE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REF_YM] [varchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COST_CENTRE_C] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AGENT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REF_EX_RATE] [numeric](11, 5) NOT NULL,
	[REF_CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[OCEAN_BL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[OBL_TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_LOAD_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_DISC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CR_BKG_REF_N] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CR_AGENT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NOT NULL,
	[ETA_DEST] [datetime] NOT NULL,
	[USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[REF_CLOSE_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REF_CLOSE_D] [datetime] NULL,
	[S_SHIPPER1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_SHIPPER2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_SHIPPER3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_SHIPPER4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_SHIPPER5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_SHIPPER6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_CON1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_CON2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_CON3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_CON4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_CON5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_CON6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_AG1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_AG2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_AG3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_AG4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_AG5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_AG6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[JOB_TYPE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_CONTACT] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_HAU_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_RE] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_PACK_WORDS] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_YARD] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_REMARKS1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_REMARKS2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_REMARKS3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_REMARKS4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_REMARKS5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_TRK_DATE] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_TRK_ADD] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_TRK_ADD2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[D_STUFF_DATE] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REF_EX_RATE_CR] [numeric](11, 5) NULL,
	[JOB_TYPE_DAMCO] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROFIT_LOSS_A] [numeric](11, 3) NULL,
	[SHARE_50_A] [numeric](11, 3) NULL,
	[CREDIT_A] [numeric](11, 3) NULL,
	[DEBIT_A] [numeric](11, 3) NULL,
	[NVOCC_AGENT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STUFF_D] [datetime] NULL,
	[WAREHOUSE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EXPRESS_BL] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOTAL_WT] [numeric](11, 3) NULL,
	[TOTAL_M3] [numeric](11, 3) NULL,
	[TOTAL_PKGS] [numeric](11, 3) NULL,
	[TOTAL_PKGS_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NO_HBL] [numeric](5, 0) NULL,
	[INV_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_40] [numeric](3, 0) NULL,
	[CONT_20] [numeric](3, 0) NULL,
	[CONT_45] [numeric](3, 0) NULL,
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
	[PORT_DISC_ID2] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NEUTRAL_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOTAL_NET_WT] [numeric](11, 3) NULL,
	[ACTUAL_CR_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OBL_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OBL_TOTAL] [numeric](10, 0) NULL,
	[OBL_COPY] [numeric](10, 0) NULL,
	[TRANS_MODE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ATA_DEST] [datetime] NULL,
	[ATA] [datetime] NULL,
	[S_LC_CON1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OBL_COLLECT_DATE] [datetime] NULL,
	[PORT_LOAD_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_DISC_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EXPORT_BKG_N] [numeric](9, 0) NOT NULL,
	[PLACE_REC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FIN_DEST] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TRANSIT_DAYS] [numeric](5, 0) NULL,
	[TYPE_IND] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CARRIER_PRINT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NVOCCAG_PRINT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POD_AGENT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_WORDS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SCH_FAX_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[booked_etd] [datetime] NULL,
	[booked_etadest] [datetime] NULL,
	[modified_dt] [datetime] NULL,
	[modified_user] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[closed_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[opened_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[opened_d] [datetime] NULL,
	[permit_by_nvocc] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id_ref] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[previous_etd] [datetime] NULL,
	[vessel_loc_code_out] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[book_approver_status] [numeric](1, 0) NULL,
	[book_approver] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[book_approver_date] [datetime] NULL,
	[book_approver_remarks] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[book_rem_status_1] [numeric](1, 0) NULL,
	[book_rem_status_2] [numeric](1, 0) NULL,
	[book_rem_status_3] [numeric](1, 0) NULL,
	[DG_REMARKS] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[conf_bl_to_ssline_d] [datetime] NULL,
	[plant_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[booked_eta] [datetime] NULL,
	[truck_waybill_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[orig_booked_vessel_eta] [datetime] NULL,
	[order_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_ref] [decimal](10, 0) NULL,
	[reefer_temp] [decimal](10, 3) NULL,
	[route_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_permit_amendreq] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[eta_del] [datetime] NULL,
	[eta_portnet] [datetime] NULL,
	[InclContFlag] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_forwarder] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[buffer_order] [int] NULL,
	[ServiceContractNo] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[free_detention_days] [int] NULL,
 CONSTRAINT [PK_EXPORT_REF] PRIMARY KEY CLUSTERED 
(
	[EXPORT_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_REF] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[EXPORT_REF] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_REF_11_976774587__K11_K1_K14_2_3_15_16_17_20_28_46_98_99_103_117_126_127]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND name = N'_dta_index_EXPORT_REF_11_976774587__K11_K1_K14_2_3_15_16_17_20_28_46_98_99_103_117_126_127')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_REF_11_976774587__K11_K1_K14_2_3_15_16_17_20_28_46_98_99_103_117_126_127] ON [dbo].[EXPORT_REF]
(
	[PORT_LOAD_ID] ASC,
	[EXPORT_REF_N] ASC,
	[CR_AGENT_ID] ASC
)
INCLUDE ( 	[VESSEL],
	[VOYAGE],
	[ETA],
	[ETD],
	[ETA_DEST],
	[REF_CLOSE_IND],
	[S_CON1],
	[JOB_TYPE],
	[TOTAL_NET_WT],
	[ACTUAL_CR_ID],
	[TRANS_MODE],
	[FIN_DEST],
	[booked_etd],
	[booked_etadest]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_REF_11_976774587__K14_K17_K16_K1_2_3_9]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND name = N'_dta_index_EXPORT_REF_11_976774587__K14_K17_K16_K1_2_3_9')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_REF_11_976774587__K14_K17_K16_K1_2_3_9] ON [dbo].[EXPORT_REF]
(
	[CR_AGENT_ID] ASC,
	[ETA_DEST] ASC,
	[ETD] ASC,
	[EXPORT_REF_N] ASC
)
INCLUDE ( 	[VESSEL],
	[VOYAGE],
	[OCEAN_BL]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_REF_11_976774587__K16_K14_K1_2_3_17_46_69_104_105]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND name = N'_dta_index_EXPORT_REF_11_976774587__K16_K14_K1_2_3_17_46_69_104_105')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_REF_11_976774587__K16_K14_K1_2_3_17_46_69_104_105] ON [dbo].[EXPORT_REF]
(
	[ETD] ASC,
	[CR_AGENT_ID] ASC,
	[EXPORT_REF_N] ASC
)
INCLUDE ( 	[VESSEL],
	[VOYAGE],
	[ETA_DEST],
	[JOB_TYPE],
	[STUFF_D],
	[ATA_DEST],
	[ATA]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_REF_5_976774587__K1_9]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND name = N'_dta_index_EXPORT_REF_5_976774587__K1_9')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_REF_5_976774587__K1_9] ON [dbo].[EXPORT_REF]
(
	[EXPORT_REF_N] ASC
)
INCLUDE ( 	[OCEAN_BL]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [_dta_index_EXPORT_REF_5_976774587__K15_K1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND name = N'_dta_index_EXPORT_REF_5_976774587__K15_K1')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_REF_5_976774587__K15_K1] ON [dbo].[EXPORT_REF]
(
	[ETA] ASC,
	[EXPORT_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_REF_7_518292906__K16_K1_2_3_14_15_17_20_28_46_98_99_103_117_126_127]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND name = N'_dta_index_EXPORT_REF_7_518292906__K16_K1_2_3_14_15_17_20_28_46_98_99_103_117_126_127')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_REF_7_518292906__K16_K1_2_3_14_15_17_20_28_46_98_99_103_117_126_127] ON [dbo].[EXPORT_REF]
(
	[ETD] ASC,
	[EXPORT_REF_N] ASC
)
INCLUDE ( 	[VESSEL],
	[VOYAGE],
	[CR_AGENT_ID],
	[ETA],
	[ETA_DEST],
	[REF_CLOSE_IND],
	[S_CON1],
	[JOB_TYPE],
	[TOTAL_NET_WT],
	[ACTUAL_CR_ID],
	[TRANS_MODE],
	[FIN_DEST],
	[booked_etd],
	[booked_etadest]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [export_ref_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND name = N'export_ref_idx1')
CREATE NONCLUSTERED INDEX [export_ref_idx1] ON [dbo].[EXPORT_REF]
(
	[EXPORT_REF_N] ASC,
	[CR_BKG_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [export_ref_idx2]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND name = N'export_ref_idx2')
CREATE NONCLUSTERED INDEX [export_ref_idx2] ON [dbo].[EXPORT_REF]
(
	[EXPORT_REF_N] ASC,
	[ETD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [I_etd]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND name = N'I_etd')
CREATE NONCLUSTERED INDEX [I_etd] ON [dbo].[EXPORT_REF]
(
	[ETD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_ExportRefEtd]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND name = N'I_ExportRefEtd')
CREATE NONCLUSTERED INDEX [I_ExportRefEtd] ON [dbo].[EXPORT_REF]
(
	[ETD] ASC
)
INCLUDE ( 	[EXPORT_REF_N],
	[VESSEL],
	[VOYAGE],
	[CR_AGENT_ID],
	[ETA],
	[ETA_DEST],
	[REF_CLOSE_IND],
	[S_CON1],
	[JOB_TYPE],
	[TOTAL_NET_WT],
	[ACTUAL_CR_ID],
	[TRANS_MODE],
	[FIN_DEST],
	[booked_etd],
	[booked_etadest],
	[vessel_ref]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_ExportRefEtdJobTypeTransMode]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND name = N'I_ExportRefEtdJobTypeTransMode')
CREATE NONCLUSTERED INDEX [I_ExportRefEtdJobTypeTransMode] ON [dbo].[EXPORT_REF]
(
	[ETD] ASC,
	[JOB_TYPE] ASC,
	[TRANS_MODE] ASC
)
INCLUDE ( 	[EXPORT_REF_N],
	[CR_BKG_REF_N]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_ExportRefTransModeIncl10]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND name = N'I_ExportRefTransModeIncl10')
CREATE NONCLUSTERED INDEX [I_ExportRefTransModeIncl10] ON [dbo].[EXPORT_REF]
(
	[TRANS_MODE] ASC
)
INCLUDE ( 	[EXPORT_REF_N],
	[VESSEL],
	[VOYAGE],
	[CR_AGENT_ID],
	[ETD],
	[ETA_DEST],
	[JOB_TYPE],
	[STUFF_D],
	[ATA_DEST],
	[ATA]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [MJC1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF]') AND name = N'MJC1')
CREATE NONCLUSTERED INDEX [MJC1] ON [dbo].[EXPORT_REF]
(
	[EXPORT_REF_N] ASC,
	[OCEAN_BL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
