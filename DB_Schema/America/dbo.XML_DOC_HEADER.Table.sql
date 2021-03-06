USE [AMERICA]
GO
/****** Object:  Table [dbo].[XML_DOC_HEADER]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XML_DOC_HEADER](
	[xml_doc_id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[msg_seq_n] [numeric](10, 0) NOT NULL,
	[msg_ver] [varchar](50) NULL,
	[msg_dt] [datetime] NOT NULL,
	[msg_action] [varchar](50) NULL,
	[msg_type] [varchar](50) NULL,
	[msg_user_id] [varchar](150) NULL,
	[from_hub_id] [varchar](10) NULL,
	[to_hub_id] [varchar](10) NULL,
	[xml_party_id] [varchar](10) NULL,
	[xml_user_id] [varchar](20) NULL,
	[xml_create_dt] [datetime] NULL,
	[off_int_ref_no] [varchar](50) NULL,
	[ref_1] [varchar](50) NULL,
	[ref_2] [varchar](50) NULL,
	[ref_3] [varchar](50) NULL,
	[ref_4] [varchar](50) NULL,
	[ref_5] [varchar](50) NULL,
	[ref_6] [varchar](50) NULL,
	[cust_id] [varchar](10) NULL,
	[po_no] [varchar](50) NULL,
	[consignee_n] [varchar](50) NULL,
	[prepaid_collect] [varchar](50) NULL,
	[seller_no] [varchar](20) NULL,
	[invoice_n] [varchar](50) NULL,
	[insurance_n] [varchar](20) NULL,
	[booking_n] [varchar](50) NULL,
	[bl_n] [varchar](50) NULL,
	[vessel] [varchar](30) NULL,
	[voyage] [varchar](20) NULL,
	[vessel_scac] [varchar](20) NULL,
	[sail_d] [datetime] NULL,
	[eta] [datetime] NULL,
	[move_type] [varchar](30) NULL,
	[load_plant_d] [varchar](10) NULL,
	[payment_terms] [varchar](20) NULL,
	[inco_terms] [varchar](20) NULL,
	[carrier_name] [varchar](70) NULL,
	[port_load_id] [varchar](10) NULL,
	[port_load_name] [varchar](50) NULL,
	[port_disc_id] [varchar](10) NULL,
	[port_disc_name] [varchar](50) NULL,
	[port_del_id] [varchar](10) NULL,
	[port_del_name] [varchar](50) NULL,
	[place_rec_name] [varchar](50) NULL,
	[country_del_id] [varchar](20) NULL,
	[tot_gross_wt] [numeric](11, 2) NULL,
	[tot_gross_wt_uom] [varchar](50) NULL,
	[tot_net_wt] [numeric](11, 2) NULL,
	[tot_net_wt_uom] [varchar](50) NULL,
	[tot_vol] [numeric](11, 2) NULL,
	[tot_vol_uom] [char](10) NULL,
	[est_frt_cost] [numeric](11, 2) NULL,
	[tarrif_desc] [varchar](100) NULL,
	[title_terms] [varchar](100) NULL,
	[move_type_desc] [varchar](100) NULL,
	[term_sale] [varchar](50) NULL,
	[currency_id] [varchar](10) NULL,
	[marks_numbers] [varchar](255) NULL,
	[tot_fob] [numeric](11, 2) NULL,
	[del_request] [varchar](100) NULL,
	[actual_sail_d] [datetime] NULL,
	[actual_arr_d] [datetime] NULL,
	[bl_to_ss_d] [datetime] NULL,
	[bl_from_ss_d] [datetime] NULL,
	[doc_bank_d] [datetime] NULL,
	[doc_cust_d] [datetime] NULL,
	[cut_off_d] [datetime] NULL,
	[transfer_ind] [varchar](1) NULL,
	[transfer_d] [datetime] NULL,
	[fms_job_type] [varchar](1) NULL,
	[fms_ref_n] [numeric](10, 0) NULL,
	[fms_job_n] [numeric](10, 0) NULL,
	[dup_ind] [varchar](1) NULL,
	[last_edi_update] [datetime] NULL,
	[process_date] [datetime] NULL,
	[by_user] [varchar](70) NULL,
	[fms_bkg_direct_n] [numeric](10, 0) NULL,
	[assigned_user] [varchar](10) NULL,
	[payment_method] [varchar](50) NULL,
	[dept_id] [varchar](20) NULL,
	[mode_of_tpt] [varchar](50) NULL,
	[delivery_req_d] [datetime] NULL,
	[tot_lading_q] [decimal](18, 2) NULL,
	[sales_comment] [varchar](50) NULL,
	[edi_ref_n] [varchar](50) NULL,
	[auth_d] [datetime] NULL,
	[origin_id] [varchar](10) NULL,
	[lc_no] [varchar](70) NULL,
	[lc_desc] [varchar](2000) NULL,
	[proposed_del_d] [datetime] NULL,
	[xml_filename] [varchar](255) NULL,
	[PAYMENT_TERMS1] [varchar](30) NULL,
	[PAYMENT_GUARANTEE_PROCEDURE] [varchar](50) NULL,
	[REQ_ETD] [datetime] NULL,
	[DEST_COUNTRY] [varchar](30) NULL,
	[VEHICLE_LOAD_N] [varchar](40) NULL,
	[custprodno] [varchar](100) NULL,
 CONSTRAINT [PK_XML_DOC_HEADER] PRIMARY KEY CLUSTERED 
(
	[msg_seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[XML_DOC_HEADER] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_XML_DOC_HEADER_5_715149593__K14_K73_K6]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE NONCLUSTERED INDEX [_dta_index_XML_DOC_HEADER_5_715149593__K14_K73_K6] ON [dbo].[XML_DOC_HEADER]
(
	[ref_1] ASC,
	[fms_job_n] ASC,
	[msg_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [HEADERMSGSEQNUMIDX]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE NONCLUSTERED INDEX [HEADERMSGSEQNUMIDX] ON [dbo].[XML_DOC_HEADER]
(
	[msg_seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_OpenOrders_VehLoadN]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE NONCLUSTERED INDEX [I_OpenOrders_VehLoadN] ON [dbo].[XML_DOC_HEADER]
(
	[VEHICLE_LOAD_N] ASC
)
INCLUDE ( 	[ref_1]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_OpenOrders2_VehLoadN]    Script Date: 3/14/2018 6:00:04 AM ******/
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
