USE [appdata]
GO
/****** Object:  Trigger [trg_aftertupdate_xml_doc_header]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_aftertupdate_xml_doc_header]
GO
/****** Object:  Trigger [trg_after_ins_xml_doc_header]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_ins_xml_doc_header]
GO
/****** Object:  Trigger [postupdate_xml_doc_header]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_xml_doc_header]
GO
/****** Object:  Trigger [post_insupd_xml_doc_header]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[post_insupd_xml_doc_header]
GO
/****** Object:  Index [IX_XML_DOC_HEADER]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_XML_DOC_HEADER] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Index [IX_REF_1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_REF_1] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Index [INX_fms_job_n_dup_ind]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [INX_fms_job_n_dup_ind] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Index [IDX_MSG_TYPE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IDX_MSG_TYPE] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Index [IDX_JOB_N]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IDX_JOB_N] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Index [IDX_ASSGN_USER]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IDX_ASSGN_USER] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Index [idx_1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [idx_1] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Index [I_XmlDocHeaderRef1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_XmlDocHeaderRef1] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Index [I_Ref_1_Msg_type]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_Ref_1_Msg_type] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Index [I_OpenOrders2_VehLoadN]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_OpenOrders2_VehLoadN] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Index [I_OpenOrders_VehLoadN]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_OpenOrders_VehLoadN] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Index [I_MsgSeqNRef1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_MsgSeqNRef1] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Index [I_MsgSeqN_MsgType_Ref1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_MsgSeqN_MsgType_Ref1] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Index [HEADERMSGSEQNUMIDX]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [HEADERMSGSEQNUMIDX] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Index [_dta_index_XML_DOC_HEADER_11_834154067__K14]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_XML_DOC_HEADER_11_834154067__K14] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Index [_dta_index_XML_DOC_HEADER_11_834154067__K12_K79_K20_K2_1_3_4_5_6_7_8_9_10_11_13_14_15_16_17_18_19_21_22_23_24_25_26_27_28_29_]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_XML_DOC_HEADER_11_834154067__K12_K79_K20_K2_1_3_4_5_6_7_8_9_10_11_13_14_15_16_17_18_19_21_22_23_24_25_26_27_28_29_] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Index [_dta_index_XML_DOC_HEADER_11_834154067__K12_K20_K79_K14_K2_K73_32_33_40_42_72_76_77]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_XML_DOC_HEADER_11_834154067__K12_K20_K79_K14_K2_K73_32_33_40_42_72_76_77] ON [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Table [dbo].[XML_DOC_HEADER]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[XML_DOC_HEADER]
GO
/****** Object:  Table [dbo].[XML_DOC_HEADER]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XML_DOC_HEADER](
	[xml_doc_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[msg_seq_n] [numeric](10, 0) NOT NULL,
	[msg_ver] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[msg_dt] [datetime] NOT NULL,
	[msg_action] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[msg_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[msg_user_id] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[from_hub_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[to_hub_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[xml_party_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[xml_user_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[xml_create_dt] [datetime] NULL,
	[off_int_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref_1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref_2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref_3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref_4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref_5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref_6] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[po_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prepaid_collect] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seller_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[insurance_n] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[booking_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_scac] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sail_d] [datetime] NULL,
	[eta] [datetime] NULL,
	[move_type] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[load_plant_d] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[payment_terms] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inco_terms] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[carrier_name] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_load_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_load_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_disc_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_disc_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_del_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_del_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[place_rec_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_del_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_gross_wt] [numeric](11, 2) NULL,
	[tot_gross_wt_uom] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_net_wt] [numeric](11, 2) NULL,
	[tot_net_wt_uom] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_vol] [numeric](11, 2) NULL,
	[tot_vol_uom] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[est_frt_cost] [numeric](11, 2) NULL,
	[tarrif_desc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[title_terms] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[move_type_desc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[term_sale] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[currency_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[marks_numbers] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_fob] [numeric](11, 2) NULL,
	[del_request] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[actual_sail_d] [datetime] NULL,
	[actual_arr_d] [datetime] NULL,
	[bl_to_ss_d] [datetime] NULL,
	[bl_from_ss_d] [datetime] NULL,
	[doc_bank_d] [datetime] NULL,
	[doc_cust_d] [datetime] NULL,
	[cut_off_d] [datetime] NULL,
	[transfer_ind] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[transfer_d] [datetime] NULL,
	[fms_job_type] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fms_ref_n] [numeric](10, 0) NULL,
	[fms_job_n] [numeric](10, 0) NULL,
	[dup_ind] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[last_edi_update] [datetime] NULL,
	[process_date] [datetime] NULL,
	[by_user] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fms_bkg_direct_n] [numeric](10, 0) NULL,
	[assigned_user] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[payment_method] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dept_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mode_of_tpt] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[delivery_req_d] [datetime] NULL,
	[tot_lading_q] [decimal](18, 2) NULL,
	[sales_comment] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[edi_ref_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[auth_d] [datetime] NULL,
	[origin_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_no] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_desc] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[proposed_del_d] [datetime] NULL,
	[xml_filename] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PAYMENT_TERMS1] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PAYMENT_GUARANTEE_PROCEDURE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REQ_ETD] [datetime] NULL,
	[DEST_COUNTRY] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VEHICLE_LOAD_N] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_XML_DOC_HEADER] PRIMARY KEY CLUSTERED 
(
	[msg_seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[XML_DOC_HEADER] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[XML_DOC_HEADER] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_XML_DOC_HEADER_11_834154067__K12_K20_K79_K14_K2_K73_32_33_40_42_72_76_77]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'_dta_index_XML_DOC_HEADER_11_834154067__K12_K20_K79_K14_K2_K73_32_33_40_42_72_76_77')
CREATE NONCLUSTERED INDEX [_dta_index_XML_DOC_HEADER_11_834154067__K12_K20_K79_K14_K2_K73_32_33_40_42_72_76_77] ON [dbo].[XML_DOC_HEADER]
(
	[xml_create_dt] ASC,
	[cust_id] ASC,
	[assigned_user] ASC,
	[ref_1] ASC,
	[msg_seq_n] ASC,
	[fms_job_n] ASC
)
INCLUDE ( 	[sail_d],
	[eta],
	[port_load_name],
	[port_disc_name],
	[fms_ref_n],
	[process_date],
	[by_user]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_XML_DOC_HEADER_11_834154067__K12_K79_K20_K2_1_3_4_5_6_7_8_9_10_11_13_14_15_16_17_18_19_21_22_23_24_25_26_27_28_29_]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'_dta_index_XML_DOC_HEADER_11_834154067__K12_K79_K20_K2_1_3_4_5_6_7_8_9_10_11_13_14_15_16_17_18_19_21_22_23_24_25_26_27_28_29_')
CREATE NONCLUSTERED INDEX [_dta_index_XML_DOC_HEADER_11_834154067__K12_K79_K20_K2_1_3_4_5_6_7_8_9_10_11_13_14_15_16_17_18_19_21_22_23_24_25_26_27_28_29_] ON [dbo].[XML_DOC_HEADER]
(
	[xml_create_dt] ASC,
	[assigned_user] ASC,
	[cust_id] ASC,
	[msg_seq_n] ASC
)
INCLUDE ( 	[xml_doc_id],
	[msg_ver],
	[msg_dt],
	[msg_action],
	[msg_type],
	[msg_user_id],
	[from_hub_id],
	[to_hub_id],
	[xml_party_id],
	[xml_user_id],
	[off_int_ref_no],
	[ref_1],
	[ref_2],
	[ref_3],
	[ref_4],
	[ref_5],
	[ref_6],
	[po_no],
	[consignee_n],
	[prepaid_collect],
	[seller_no],
	[invoice_n],
	[insurance_n],
	[booking_n],
	[bl_n],
	[vessel],
	[voyage],
	[vessel_scac],
	[sail_d],
	[eta],
	[move_type],
	[load_plant_d],
	[payment_terms],
	[inco_terms],
	[carrier_name],
	[port_load_id],
	[port_load_name],
	[port_disc_id],
	[port_disc_name],
	[port_del_id],
	[port_del_name],
	[place_rec_name],
	[country_del_id],
	[tot_gross_wt],
	[tot_gross_wt_uom],
	[tot_net_wt],
	[tot_net_wt_uom],
	[tot_vol],
	[tot_vol_uom],
	[est_frt_cost],
	[tarrif_desc],
	[title_terms],
	[move_type_desc],
	[term_sale],
	[currency_id],
	[marks_numbers],
	[tot_fob],
	[del_request],
	[actual_sail_d],
	[actual_arr_d],
	[bl_to_ss_d],
	[bl_from_ss_d],
	[doc_bank_d],
	[doc_cust_d],
	[cut_off_d],
	[transfer_ind],
	[transfer_d],
	[fms_job_type],
	[fms_ref_n],
	[fms_job_n],
	[dup_ind],
	[last_edi_update],
	[process_date],
	[by_user],
	[fms_bkg_direct_n],
	[payment_method],
	[dept_id],
	[mode_of_tpt],
	[delivery_req_d],
	[tot_lading_q],
	[sales_comment],
	[edi_ref_n],
	[auth_d],
	[origin_id],
	[lc_no],
	[lc_desc],
	[proposed_del_d]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_XML_DOC_HEADER_11_834154067__K14]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'_dta_index_XML_DOC_HEADER_11_834154067__K14')
CREATE NONCLUSTERED INDEX [_dta_index_XML_DOC_HEADER_11_834154067__K14] ON [dbo].[XML_DOC_HEADER]
(
	[ref_1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [HEADERMSGSEQNUMIDX]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'HEADERMSGSEQNUMIDX')
CREATE NONCLUSTERED INDEX [HEADERMSGSEQNUMIDX] ON [dbo].[XML_DOC_HEADER]
(
	[msg_seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_MsgSeqN_MsgType_Ref1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'I_MsgSeqN_MsgType_Ref1')
CREATE NONCLUSTERED INDEX [I_MsgSeqN_MsgType_Ref1] ON [dbo].[XML_DOC_HEADER]
(
	[msg_seq_n] ASC,
	[msg_type] ASC,
	[ref_1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_MsgSeqNRef1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'I_MsgSeqNRef1')
CREATE NONCLUSTERED INDEX [I_MsgSeqNRef1] ON [dbo].[XML_DOC_HEADER]
(
	[msg_seq_n] ASC,
	[ref_1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_OpenOrders_VehLoadN]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'I_OpenOrders_VehLoadN')
CREATE NONCLUSTERED INDEX [I_OpenOrders_VehLoadN] ON [dbo].[XML_DOC_HEADER]
(
	[VEHICLE_LOAD_N] ASC
)
INCLUDE ( 	[ref_1]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_OpenOrders2_VehLoadN]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'I_OpenOrders2_VehLoadN')
CREATE NONCLUSTERED INDEX [I_OpenOrders2_VehLoadN] ON [dbo].[XML_DOC_HEADER]
(
	[msg_type] ASC,
	[cust_id] ASC,
	[ref_1] ASC,
	[fms_job_n] ASC,
	[VEHICLE_LOAD_N] ASC
)
INCLUDE ( 	[msg_seq_n],
	[xml_create_dt],
	[vessel],
	[voyage],
	[sail_d],
	[eta],
	[inco_terms],
	[port_load_name],
	[port_disc_name],
	[fms_ref_n],
	[process_date],
	[delivery_req_d]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_Ref_1_Msg_type]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'I_Ref_1_Msg_type')
CREATE NONCLUSTERED INDEX [I_Ref_1_Msg_type] ON [dbo].[XML_DOC_HEADER]
(
	[ref_1] ASC,
	[msg_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_XmlDocHeaderRef1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'I_XmlDocHeaderRef1')
CREATE NONCLUSTERED INDEX [I_XmlDocHeaderRef1] ON [dbo].[XML_DOC_HEADER]
(
	[ref_1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'idx_1')
CREATE NONCLUSTERED INDEX [idx_1] ON [dbo].[XML_DOC_HEADER]
(
	[fms_job_n] ASC,
	[cust_id] ASC,
	[assigned_user] ASC,
	[xml_create_dt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_ASSGN_USER]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'IDX_ASSGN_USER')
CREATE NONCLUSTERED INDEX [IDX_ASSGN_USER] ON [dbo].[XML_DOC_HEADER]
(
	[assigned_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
/****** Object:  Index [IDX_JOB_N]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'IDX_JOB_N')
CREATE NONCLUSTERED INDEX [IDX_JOB_N] ON [dbo].[XML_DOC_HEADER]
(
	[fms_ref_n] ASC,
	[fms_job_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_MSG_TYPE]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'IDX_MSG_TYPE')
CREATE NONCLUSTERED INDEX [IDX_MSG_TYPE] ON [dbo].[XML_DOC_HEADER]
(
	[msg_dt] ASC,
	[msg_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [INX_fms_job_n_dup_ind]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'INX_fms_job_n_dup_ind')
CREATE NONCLUSTERED INDEX [INX_fms_job_n_dup_ind] ON [dbo].[XML_DOC_HEADER]
(
	[fms_job_n] ASC,
	[dup_ind] ASC,
	[msg_type] ASC,
	[xml_create_dt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_REF_1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'IX_REF_1')
CREATE NONCLUSTERED INDEX [IX_REF_1] ON [dbo].[XML_DOC_HEADER]
(
	[ref_1] ASC,
	[cust_id] ASC,
	[msg_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_XML_DOC_HEADER]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_DOC_HEADER]') AND name = N'IX_XML_DOC_HEADER')
CREATE NONCLUSTERED INDEX [IX_XML_DOC_HEADER] ON [dbo].[XML_DOC_HEADER]
(
	[msg_action] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
