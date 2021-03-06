USE [appdata]
GO
/****** Object:  Trigger [trg_postupd_permit_header]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_postupd_permit_header]
GO
/****** Object:  Trigger [trg_post_upd_permit_header]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_post_upd_permit_header]
GO
/****** Object:  Trigger [trg_after_upd_permit_header]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_upd_permit_header]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_header]') AND type in (N'U'))
ALTER TABLE [dbo].[permit_header] DROP CONSTRAINT IF EXISTS [DF__permit_he__decla__6E221E15]
GO
/****** Object:  Index [I_PermitHeaderStatusIncExportnPmtEndD]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_PermitHeaderStatusIncExportnPmtEndD] ON [dbo].[permit_header]
GO
/****** Object:  Index [I_PermitHeaderExportnStatus]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [I_PermitHeaderExportnStatus] ON [dbo].[permit_header]
GO
/****** Object:  Index [_dta_index_permit_header_7_933630419__K5_6_7_8_21_22_70]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_permit_header_7_933630419__K5_6_7_8_21_22_70] ON [dbo].[permit_header]
GO
/****** Object:  Index [_dta_index_permit_header_11_933630419__K8_K6_K7_K70_K5_K67_9_66_71_81_82_83]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_permit_header_11_933630419__K8_K6_K7_K70_K5_K67_9_66_71_81_82_83] ON [dbo].[permit_header]
GO
/****** Object:  Index [_dta_index_permit_header_11_933630419__K5_79]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_permit_header_11_933630419__K5_79] ON [dbo].[permit_header]
GO
/****** Object:  Index [_dta_index_permit_header_11_933630419__K5_6_7_8_21_22]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_permit_header_11_933630419__K5_6_7_8_21_22] ON [dbo].[permit_header]
GO
/****** Object:  Table [dbo].[permit_header]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_header]
GO
/****** Object:  Table [dbo].[permit_header]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_header]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_header](
	[permit_id] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[mailbox_id] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[declarant_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cr_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[job_no] [varchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[export_n] [numeric](12, 0) NOT NULL,
	[export_ref_n] [numeric](12, 0) NOT NULL,
	[shipper_ref] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[msg_type] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dec_type] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dec_desc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prev_permit_no] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bg_indicator] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bg_desc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cargo_type] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cargo_desc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inward_mode] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inward_desc] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[outward_mode] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[outward_desc] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_origin] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref_docs] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[recipient1] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[recipient2] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[recipient3] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[release_loc] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[release_desc] [varchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receipt_loc] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receipt_desc] [varchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[storage_loc] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[storage_desc] [varchar](105) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[arrival_date] [datetime] NULL,
	[load_port] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[load_desc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage_no_in] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_name_in] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ocean_bl_in] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_loc_code_in] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_loc_desc_in] [varchar](105) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[aircraft_id_in] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[airway_bill_in] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[depart_date] [datetime] NULL,
	[fin_dest_code] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fin_dest_desc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dis_port_code] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dis_port_desc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage_no_out] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_name_out] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage_no_out2] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_name_out2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_type_out2] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_type_name_out2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ocean_bl_out] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nrt_out] [numeric](15, 3) NULL,
	[vessel_loc_code_out] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_loc_desc_out] [varchar](105) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[aircraft_id_out] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[airway_bill_out] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_item] [numeric](5, 0) NULL,
	[tot_value] [decimal](15, 2) NULL,
	[tot_pack] [decimal](15, 4) NULL,
	[tot_pack_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_gross_wt] [decimal](15, 4) NULL,
	[tot_gross_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Remarks] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NULL,
	[modified_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_dt] [datetime] NULL,
	[status] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[customs_permit_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lic_no1] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lic_no2] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lic_no3] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lic_no4] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lic_no5] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amend_reason] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cancel_reason] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pdf_filename] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[xml_filename] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_no] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pmt_start_d] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pmt_end_d] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[supply_ind] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seastore] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_nat] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[load_next_port] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[load_final_port] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_inv_cif] [decimal](15, 2) NULL,
	[tot_gst_amt] [decimal](15, 2) NULL,
	[tot_ex_duty] [decimal](15, 4) NULL,
	[tot_customs_duty] [decimal](6, 2) NULL,
	[tot_amt_payable] [decimal](15, 2) NULL,
	[ex_end_date] [datetime] NULL,
	[auto_send_epermit] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[carrier_agent] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_add] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[declarant_id] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[version_pbd] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ct_pc_code] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pcs_code1] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pcs_code2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pcs_code3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[smn_dt] [datetime] NULL,
	[bk_start_date] [datetime] NULL,
	[cvy_ref_no_in] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tpt_id_in] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cvy_ref_no_out] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tpt_id_out] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_other_amt] [numeric](15, 2) NULL,
	[ex_start_date] [datetime] NULL,
	[allow_manual] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manual_approved_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manual_approved_date] [datetime] NULL,
	[manual_remarks] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amend_cnt] [numeric](5, 0) NULL,
	[amend_upd_ind] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amend_permit_no] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[permit_valid_ext] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_permit_header] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_header] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_permit_header_11_933630419__K5_6_7_8_21_22]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[permit_header]') AND name = N'_dta_index_permit_header_11_933630419__K5_6_7_8_21_22')
CREATE NONCLUSTERED INDEX [_dta_index_permit_header_11_933630419__K5_6_7_8_21_22] ON [dbo].[permit_header]
(
	[job_no] ASC
)
INCLUDE ( 	[export_n],
	[export_ref_n],
	[shipper_ref],
	[cert_origin],
	[ref_docs]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_permit_header_11_933630419__K5_79]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[permit_header]') AND name = N'_dta_index_permit_header_11_933630419__K5_79')
CREATE NONCLUSTERED INDEX [_dta_index_permit_header_11_933630419__K5_79] ON [dbo].[permit_header]
(
	[job_no] ASC
)
INCLUDE ( 	[pdf_filename]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_permit_header_11_933630419__K8_K6_K7_K70_K5_K67_9_66_71_81_82_83]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[permit_header]') AND name = N'_dta_index_permit_header_11_933630419__K8_K6_K7_K70_K5_K67_9_66_71_81_82_83')
CREATE NONCLUSTERED INDEX [_dta_index_permit_header_11_933630419__K8_K6_K7_K70_K5_K67_9_66_71_81_82_83] ON [dbo].[permit_header]
(
	[shipper_ref] ASC,
	[export_n] ASC,
	[export_ref_n] ASC,
	[status] ASC,
	[job_no] ASC,
	[created_dt] ASC
)
INCLUDE ( 	[msg_type],
	[created_by],
	[customs_permit_no],
	[cert_no],
	[pmt_start_d],
	[pmt_end_d]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_permit_header_7_933630419__K5_6_7_8_21_22_70]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[permit_header]') AND name = N'_dta_index_permit_header_7_933630419__K5_6_7_8_21_22_70')
CREATE NONCLUSTERED INDEX [_dta_index_permit_header_7_933630419__K5_6_7_8_21_22_70] ON [dbo].[permit_header]
(
	[job_no] ASC
)
INCLUDE ( 	[export_n],
	[export_ref_n],
	[shipper_ref],
	[cert_origin],
	[ref_docs],
	[status]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_PermitHeaderExportnStatus]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[permit_header]') AND name = N'I_PermitHeaderExportnStatus')
CREATE NONCLUSTERED INDEX [I_PermitHeaderExportnStatus] ON [dbo].[permit_header]
(
	[export_n] ASC,
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_PermitHeaderStatusIncExportnPmtEndD]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[permit_header]') AND name = N'I_PermitHeaderStatusIncExportnPmtEndD')
CREATE NONCLUSTERED INDEX [I_PermitHeaderStatusIncExportnPmtEndD] ON [dbo].[permit_header]
(
	[status] ASC
)
INCLUDE ( 	[export_n],
	[pmt_end_d]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
