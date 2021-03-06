USE [appdata]
GO
/****** Object:  Trigger [trg_SABIC_KPI]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_SABIC_KPI]
GO
/****** Object:  Trigger [trg_postupdate_order_h]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_postupdate_order_h]
GO
/****** Object:  Trigger [trg_post_upd_order_h_nc]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_post_upd_order_h_nc]
GO
/****** Object:  Trigger [TRG_ORD_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_ORD_JOBS_UPDATED]
GO
/****** Object:  Trigger [postupdate_slave_order_h]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_slave_order_h]
GO
/****** Object:  Trigger [postupdate_audit_order_h]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_audit_order_h]
GO
/****** Object:  Trigger [postinsert_audit_order_h]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_audit_order_h]
GO
/****** Object:  Trigger [postdelete_audit_order_h]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_audit_order_h]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND type in (N'U'))
ALTER TABLE [dbo].[ORDER_H] DROP CONSTRAINT IF EXISTS [DF__ORDER_H__chamber__19ED2868]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND type in (N'U'))
ALTER TABLE [dbo].[ORDER_H] DROP CONSTRAINT IF EXISTS [DF__ORDER_H__certno___04F20B82]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND type in (N'U'))
ALTER TABLE [dbo].[ORDER_H] DROP CONSTRAINT IF EXISTS [DF__ORDER_H__shipcer__03FDE749]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND type in (N'U'))
ALTER TABLE [dbo].[ORDER_H] DROP CONSTRAINT IF EXISTS [DF__ORDER_H__co_requ__2A589A5B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND type in (N'U'))
ALTER TABLE [dbo].[ORDER_H] DROP CONSTRAINT IF EXISTS [DF__ORDER_H__HD_FLAG__5CF928C1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND type in (N'U'))
ALTER TABLE [dbo].[ORDER_H] DROP CONSTRAINT IF EXISTS [DF__ORDER_H__EOPLSen__583473A4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND type in (N'U'))
ALTER TABLE [dbo].[ORDER_H] DROP CONSTRAINT IF EXISTS [DF__ORDER_H__customs__3707BEAC]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND type in (N'U'))
ALTER TABLE [dbo].[ORDER_H] DROP CONSTRAINT IF EXISTS [DF__ORDER_H__cert_cb__351F763A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND type in (N'U'))
ALTER TABLE [dbo].[ORDER_H] DROP CONSTRAINT IF EXISTS [DF__ORDER_H__ISPROFO__302FD894]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND type in (N'U'))
ALTER TABLE [dbo].[ORDER_H] DROP CONSTRAINT IF EXISTS [DF__ORDER_H__TRAX_UP__3F7C3DC5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND type in (N'U'))
ALTER TABLE [dbo].[ORDER_H] DROP CONSTRAINT IF EXISTS [DF__ORDER_H__TRAX_OR__3E88198C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND type in (N'U'))
ALTER TABLE [dbo].[ORDER_H] DROP CONSTRAINT IF EXISTS [DF__ORDER_H__FCL_OR___68B35D82]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND type in (N'U'))
ALTER TABLE [dbo].[ORDER_H] DROP CONSTRAINT IF EXISTS [DF__ORDER_H__ORDER_R__66CB1510]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND type in (N'U'))
ALTER TABLE [dbo].[ORDER_H] DROP CONSTRAINT IF EXISTS [DF__ORDER_H__ETA_SIN__65D6F0D7]
GO
/****** Object:  Index [order_h_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [order_h_idx1] ON [dbo].[ORDER_H]
GO
/****** Object:  Index [IX_OrderH_OrderRcvD_Incl_ExpImpN]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_OrderH_OrderRcvD_Incl_ExpImpN] ON [dbo].[ORDER_H]
GO
/****** Object:  Index [_dta_index_ORDER_H_7_876582211__K2_K3_K1_53_54_55]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_ORDER_H_7_876582211__K2_K3_K1_53_54_55] ON [dbo].[ORDER_H]
GO
/****** Object:  Index [_dta_index_ORDER_H_7_876582211__K2_K3_1_5_12_13_14_19]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_ORDER_H_7_876582211__K2_K3_1_5_12_13_14_19] ON [dbo].[ORDER_H]
GO
/****** Object:  Index [_dta_index_ORDER_H_11_876582211__K2_K12_K3_1_5_13_14_19]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_ORDER_H_11_876582211__K2_K12_K3_1_5_13_14_19] ON [dbo].[ORDER_H]
GO
/****** Object:  Index [_dta_index_ORDER_H_c_7_876582211__K3_K1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_ORDER_H_c_7_876582211__K3_K1] ON [dbo].[ORDER_H] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[ORDER_H]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[ORDER_H]
GO
/****** Object:  Table [dbo].[ORDER_H]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ORDER_H](
	[ORDER_ID] [numeric](10, 0) NOT NULL,
	[ORDER_TYPE] [numeric](2, 0) NULL,
	[EXP_IMP_N] [numeric](10, 0) NULL,
	[PROD_VAL] [numeric](11, 3) NULL,
	[PAYMENT_TERM_ID] [numeric](10, 0) NULL,
	[CREATED_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATED_D] [datetime] NULL,
	[MODIFIED_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MODIFIED_D] [datetime] NULL,
	[ETA_SIN] [datetime] NULL,
	[QUICK_TRACK_NO] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORDER_RCV_D] [datetime] NULL,
	[BOOKED_D] [datetime] NULL,
	[SHIPPER_CTC] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_EMAIL] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_TEL] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_FAX] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONFIRM_D] [datetime] NULL,
	[REQ_SHIP_D] [datetime] NULL,
	[REMARKS1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILLING1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILLING2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CANCEL_REM] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONTRACT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FCL_OR_LCL] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOT_FOB] [numeric](8, 2) NULL,
	[BIG_MARKING] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_TP] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_RESP_SEQ] [numeric](5, 0) NULL,
	[EDI_RESP_D] [datetime] NULL,
	[EDI_SENDER] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_REC_D] [datetime] NULL,
	[EDI_RECEIVER] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_REVISION] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_REC_TYPE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_BSNS_UNIT_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_BSNS_UNIT_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_BSNS_UNIT_ADD1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_BSNS_UNIT_ADD2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_BSNS_UNIT_ADD3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_BSNS_UNIT_ADD4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_BSNS_UNIT_ADD5] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INV_VALUE_TTL] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BL_DRAFT_PREP] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BL_INSTRUCT] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONFIRM_IND] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[psa_portnet] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_pick_ref_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[stripes_del_no] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TRAX_ORDERID] [numeric](11, 0) NULL,
	[TRAX_UPDATE_D] [datetime] NULL,
	[TRAX_UPDATE_USER] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dhl_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_CONFIRMED] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[total_pallets] [numeric](10, 4) NULL,
	[proposed_delivery_date] [datetime] NULL,
	[HI_CUTOFF_DATE] [datetime] NULL,
	[ISPROFORMAINV_PRINTED] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROFORMAINV_PRINTED_BY] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROFORMAINV_PRINT_DATE] [datetime] NULL,
	[cnb_approval_dt] [datetime] NULL,
	[PSA_PORTNET_VOYAGE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_email_addtl] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[payment_term_id_2] [int] NULL,
	[impt_cty_hscode] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sailing_adv_d] [datetime] NULL,
	[cert_header] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_descs] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_cbx] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_date] [datetime] NULL,
	[customs_flag] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pud_approved] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pud_approved_by] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pud_approved_date] [datetime] NULL,
	[pud_remarks] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[isf102_ref] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Collecting_Bank] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bc_sent_plant_cust] [datetime] NULL,
	[VEHICLE_LOAD_N] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[customs_remarks] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_type] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[berth] [varchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bkg_approved_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bkg_approved_date] [datetime] NULL,
	[bkg_remarks] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[chamber_copies] [numeric](10, 0) NULL,
	[chamber_con_code] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[chamber_con1] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[chamber_con2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[chamber_con3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[chamber_con4] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[chamber_con5] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[chamber_con6] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHAMBER_INV_AMT] [numeric](20, 2) NULL,
	[CHAMBER_CURR_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipment_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[delivery_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[booking_handledby] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[docs_handledby] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[draft_docs_to_cust_date] [datetime] NULL,
	[ord_sent_dt_mels] [datetime] NULL,
	[pending_dt_mels] [datetime] NULL,
	[pl_eo_sent_dt_mels] [datetime] NULL,
	[ship_sched_dt_mels] [datetime] NULL,
	[ranking_mels] [numeric](10, 3) NULL,
	[vanning_dt_mels] [datetime] NULL,
	[rcv_cfm_bl_dt_mels] [datetime] NULL,
	[latest_stat_mels] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[next_pic_mels] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[due_so_send_dt_mels] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_cost] [decimal](20, 3) NULL,
	[bl_cost_sgd] [decimal](20, 3) NULL,
	[MitsuiArea] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[selected_cr_rank] [numeric](10, 0) NULL,
	[cr_rank_1] [numeric](10, 0) NULL,
	[rank_reason] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MITSUI_RCV_BL_ELITE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MITSUI_DUE_DT_SO] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MITSUI_RQST_DEL_D] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EOPLSentToMELSandWarehouse] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[HD_FLAG] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[loading_ins] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MITSUI_ADD_BL_DESC] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[csp_email_exxon] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lubsposwitch] [numeric](1, 0) NULL,
	[GrDate] [datetime] NULL,
	[vdp_send_d] [datetime] NULL,
	[vdp_ref_rcvd] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vdp_send_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[co_required] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[shipcert_required] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[certno_required] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[shipcert_send_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipcert_send_d] [datetime] NULL,
	[user_seq20] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[chamber_required] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TrkArrDate] [datetime] NULL,
	[TrkDepDate] [datetime] NULL,
	[RailArrDate] [datetime] NULL,
	[RailDepDate] [datetime] NULL,
	[AES_date] [datetime] NULL,
	[doc_cutoff_date] [datetime] NULL,
	[rail_cutoff_date] [datetime] NULL,
	[denied_party_screening_date] [datetime] NULL,
	[del_inst_upd_date] [datetime] NULL,
	[shipstart_loadend_upd_date] [datetime] NULL,
	[manifest_to_carrier_date] [datetime] NULL,
	[manifest_from_carrier_date] [datetime] NULL,
	[contact_party] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_addr1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_addr2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_addr3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_addr4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_city] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_ctry_subdivision] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_postal_code] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_country] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_id] [numeric](10, 0) NULL,
	[send_vgm_as] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[courier_number] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rvsd_manifest_to_carrier_date] [datetime] NULL,
	[rvsd_manifest_from_carrier_date] [datetime] NULL,
	[draft_doc_cfm_by_cust_date] [datetime] NULL,
	[DBLI_RECEIVER_D] [datetime] NULL,
	[rev_bc_sent_plant_cust] [datetime] NULL,
	[shippers_memo] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mat_avail_dt] [datetime] NULL,
	[endorse_coo_to_pol] [datetime] NULL,
	[docs_from_plant] [datetime] NULL,
	[revised_docs_to_bank] [datetime] NULL,
	[obl_rel_col_ind] [int] NULL,
	[obl_rel_col_date] [datetime] NULL,
	[endorse_coo] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[coo_requested] [datetime] NULL,
	[mci_coo] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[endorse_coo_remarks] [varchar](800) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bottom_seal] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_handledby] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_user] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[docs_user] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[booking_user] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lto_received_date] [datetime] NULL,
	[Transpt_plan_dt] [datetime] NULL,
	[dhl_scan_date] [datetime] NULL,
	[bl_acknowledgedate] [datetime] NULL,
	[docs_acknowledgedate] [datetime] NULL,
	[dps_sent_date] [datetime] NULL,
	[aes_sent_date] [datetime] NULL,
	[elite_dhl_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pallet_multply] [numeric](12, 2) NULL,
	[tenor_days] [numeric](9, 0) NULL,
	[copy_doc_received] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[docs_sent_via_dhl_dt] [datetime] NULL,
	[self_collection_d] [datetime] NULL,
	[final_docs_email_to_cust_date] [datetime] NULL,
	[orig_bl_release_at_dest] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sto_2_docs_sent_identifier] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipping_certificate_flag] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[split_bl_count] [int] NULL,
	[bl_draft_1st_upld_by] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [ORDER_ID_PKY] PRIMARY KEY NONCLUSTERED 
(
	[ORDER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[ORDER_H] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[ORDER_H] TO [public] AS [dbo]
GO
/****** Object:  Index [_dta_index_ORDER_H_c_7_876582211__K3_K1]    Script Date: 3/14/2018 6:12:01 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND name = N'_dta_index_ORDER_H_c_7_876582211__K3_K1')
CREATE CLUSTERED INDEX [_dta_index_ORDER_H_c_7_876582211__K3_K1] ON [dbo].[ORDER_H]
(
	[EXP_IMP_N] ASC,
	[ORDER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_ORDER_H_11_876582211__K2_K12_K3_1_5_13_14_19]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND name = N'_dta_index_ORDER_H_11_876582211__K2_K12_K3_1_5_13_14_19')
CREATE NONCLUSTERED INDEX [_dta_index_ORDER_H_11_876582211__K2_K12_K3_1_5_13_14_19] ON [dbo].[ORDER_H]
(
	[ORDER_TYPE] ASC,
	[ORDER_RCV_D] ASC,
	[EXP_IMP_N] ASC
)
INCLUDE ( 	[ORDER_ID],
	[PAYMENT_TERM_ID],
	[BOOKED_D],
	[SHIPPER_CTC],
	[REQ_SHIP_D]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_ORDER_H_7_876582211__K2_K3_1_5_12_13_14_19]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND name = N'_dta_index_ORDER_H_7_876582211__K2_K3_1_5_12_13_14_19')
CREATE NONCLUSTERED INDEX [_dta_index_ORDER_H_7_876582211__K2_K3_1_5_12_13_14_19] ON [dbo].[ORDER_H]
(
	[ORDER_TYPE] ASC,
	[EXP_IMP_N] ASC
)
INCLUDE ( 	[ORDER_ID],
	[PAYMENT_TERM_ID],
	[ORDER_RCV_D],
	[BOOKED_D],
	[SHIPPER_CTC],
	[REQ_SHIP_D]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_ORDER_H_7_876582211__K2_K3_K1_53_54_55]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND name = N'_dta_index_ORDER_H_7_876582211__K2_K3_K1_53_54_55')
CREATE NONCLUSTERED INDEX [_dta_index_ORDER_H_7_876582211__K2_K3_K1_53_54_55] ON [dbo].[ORDER_H]
(
	[ORDER_TYPE] ASC,
	[EXP_IMP_N] ASC,
	[ORDER_ID] ASC
)
INCLUDE ( 	[TRAX_ORDERID],
	[TRAX_UPDATE_D],
	[TRAX_UPDATE_USER]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderH_OrderRcvD_Incl_ExpImpN]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND name = N'IX_OrderH_OrderRcvD_Incl_ExpImpN')
CREATE NONCLUSTERED INDEX [IX_OrderH_OrderRcvD_Incl_ExpImpN] ON [dbo].[ORDER_H]
(
	[ORDER_RCV_D] ASC
)
INCLUDE ( 	[EXP_IMP_N]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [order_h_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_H]') AND name = N'order_h_idx1')
CREATE NONCLUSTERED INDEX [order_h_idx1] ON [dbo].[ORDER_H]
(
	[EXP_IMP_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
