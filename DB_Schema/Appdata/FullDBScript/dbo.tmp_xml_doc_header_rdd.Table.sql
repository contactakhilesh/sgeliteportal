USE [appdata]
GO
/****** Object:  Table [dbo].[tmp_xml_doc_header_rdd]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_xml_doc_header_rdd]
GO
/****** Object:  Table [dbo].[tmp_xml_doc_header_rdd]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_xml_doc_header_rdd]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_xml_doc_header_rdd](
	[xml_doc_id] [int] NOT NULL,
	[msg_seq_n] [numeric](10, 0) NOT NULL,
	[msg_ver] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[msg_dt] [datetime] NOT NULL,
	[msg_action] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[msg_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[msg_user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
	[proposed_del_d] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_xml_doc_header_rdd] TO  SCHEMA OWNER 
GO
