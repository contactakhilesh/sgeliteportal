USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_CO_GENERAL_ENTRY_DET]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_CO_GENERAL_ENTRY_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[header_option_ind] [varchar](20) NULL,
	[title] [varchar](200) NULL,
	[create_dt] [datetime] NULL,
	[elite_refno] [varchar](80) NULL,
	[invoice_no] [varchar](50) NULL,
	[shipper_ref] [varchar](50) NULL,
	[add_ref_no] [varchar](2) NULL,
	[shipper_ref1] [varchar](50) NULL,
	[shipper_ref2] [varchar](50) NULL,
	[shipper_ref3] [varchar](50) NULL,
	[other_ref_no] [varchar](50) NULL,
	[sailing_dt] [datetime] NULL,
	[eta] [datetime] NULL,
	[vessel] [varchar](50) NULL,
	[voyer] [varchar](50) NULL,
	[pol] [varchar](50) NULL,
	[pod] [varchar](50) NULL,
	[print_consignee] [varchar](2) NULL,
	[print_notify] [varchar](2) NULL,
	[print_markings] [varchar](2) NULL,
	[country_origin] [varchar](50) NULL,
	[remarks1] [varchar](1000) NULL,
	[remarks2] [varchar](100) NULL,
	[remarks3] [varchar](100) NULL,
	[remarks4] [varchar](100) NULL,
	[remarks5] [varchar](100) NULL,
	[remarks6] [varchar](100) NULL,
	[remarks7] [varchar](100) NULL,
	[remarks8] [varchar](100) NULL,
	[remarks9] [varchar](100) NULL,
	[remarks10] [varchar](100) NULL,
	[print_sign] [varchar](2) NULL,
	[print_comp_stamp] [varchar](2) NULL,
	[po_no] [varchar](50) NULL,
	[bl_no] [varchar](50) NULL,
	[print_goods_des_ind] [varchar](2) NULL,
	[print_container_ind] [varchar](2) NULL,
	[print_seal_ind] [varchar](2) NULL,
	[print_tot_cont_pkgs_no_ind] [varchar](2) NULL,
	[print_tot_cont_gross_wt_ind] [varchar](2) NULL,
	[print_tot_cont_net_wt_ind] [varchar](2) NULL,
	[print_tot_cont_measurement_ind] [varchar](2) NULL,
	[print_invoice_ind] [varchar](2) NULL,
	[port_del_name] [varchar](50) NULL,
	[port_rec_name] [varchar](50) NULL,
	[cust_ref_no] [varchar](50) NULL,
	[print_logo_ind] [varchar](2) NULL,
	[print_address_ind] [varchar](2) NULL,
	[print_chamber_ind] [varchar](2) NULL,
	[sign_party] [varchar](50) NULL,
	[user_id] [varchar](50) NULL,
	[marks_ind] [varchar](2) NULL,
	[hide_header] [varchar](2) NULL,
	[print_shipper_ind] [varchar](2) NULL,
	[print_address_logo] [varchar](2) NULL,
	[print_comp_logo] [varchar](2) NULL,
	[print_footer_left] [varchar](2) NULL,
	[print_footer_right] [varchar](2) NULL,
	[print_chamber_clause] [varchar](2) NULL,
	[print_chamber_words] [varchar](2) NULL,
	[print_hbl_n] [varchar](2) NULL,
	[signagent] [varchar](1) NULL,
	[shipper_add_status] [varchar](1) NULL,
	[print_com_doc_st] [varchar](1) NULL,
	[print_to_whom_concern] [varchar](1) NULL,
	[SHIP_ON_BRD_D] [datetime] NULL,
	[shipped_status_flag] [char](1) NULL,
 CONSTRAINT [PK_DOC_CO_GENERAL_ENTRY_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_CO_GENERAL_ENTRY_DET] TO  SCHEMA OWNER 
GO
