USE [AMERICA]
GO
/****** Object:  Table [dbo].[EXPORT_OTHDTL_SA]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXPORT_OTHDTL_SA](
	[export_n] [numeric](10, 0) NOT NULL,
	[order_stat] [varchar](50) NULL,
	[cont_stat] [varchar](50) NULL,
	[sap_no] [varchar](50) NULL,
	[roll_over] [varchar](50) NULL,
	[no_roll_over] [varchar](10) NULL,
	[special_rem] [varchar](1000) NULL,
	[rem_plants] [varchar](1000) NULL,
	[inspection_ref] [varchar](50) NULL,
	[pallets] [varchar](10) NULL,
	[sap_mat_code] [varchar](50) NULL,
	[fan_mat_code] [varchar](50) NULL,
	[Beni_letter_To] [varchar](1000) NULL,
	[ref_dc_no] [varchar](100) NULL,
	[cert_applicant] [varchar](1000) NULL,
	[name_company] [varchar](1000) NULL,
	[BL_dtl_To] [varchar](1000) NULL,
	[BL_Attn] [varchar](1000) NULL,
	[Pallet_desc] [varchar](1000) NULL,
	[Frt_payable] [varchar](1000) NULL,
	[BL_ins] [varchar](1500) NULL,
	[proforma_inv_no] [varchar](50) NULL,
	[inv_manu_dtl] [varchar](1000) NULL,
	[inv_to_dtl] [varchar](1000) NULL,
	[per_pallet_net_wgt] [varchar](50) NULL,
	[per_pallet_gross_wgt] [varchar](50) NULL,
	[coo_issue_for] [varchar](200) NULL,
	[coo_to_sent_to] [varchar](200) NULL,
	[order_remarks] [varchar](1000) NULL,
	[footer_text] [varchar](1000) NULL,
	[pre_lodge_date] [datetime] NULL,
	[lodge_date] [datetime] NULL,
	[packed_date] [datetime] NULL,
	[shipped_date] [datetime] NULL,
	[FormAB_dt] [datetime] NULL,
	[inspection_no] [varchar](30) NULL,
	[cont_rel_date] [datetime] NULL,
	[order_stat_reason] [varchar](1000) NULL,
	[mli_revised] [varchar](50) NULL,
	[to_plant] [varchar](1) NULL,
	[to_plant_date] [datetime] NULL,
	[bl_dtls_info] [varchar](2000) NULL,
	[bl_rel_to] [varchar](200) NULL,
	[sap_ship_no] [varchar](35) NULL,
	[sap_out_del_no] [varchar](35) NULL,
	[PaymentTermDesc] [char](100) NULL,
	[lc_details] [varchar](1000) NULL,
	[manifest_to_trucker_date] [datetime] NULL,
	[rvsd_manifest_to_trucker_date] [datetime] NULL,
	[manifest_rcvd_by_trucker_date] [datetime] NULL,
	[rvsd_manif_rcvd_by_trucker_d] [datetime] NULL,
	[cro_sent_date] [datetime] NULL,
	[rvsd_cro_sent_date] [datetime] NULL,
	[cro_rcvd_date] [datetime] NULL,
	[rvsd_cro_rcvd_date] [datetime] NULL,
	[revised_packed_date] [datetime] NULL,
	[swb_sentdate] [datetime] NULL,
	[swb_sentby] [varchar](20) NULL,
	[arableague_inv] [numeric](9, 0) NULL,
 CONSTRAINT [PK_EXPORT_OTHDTL_SA] PRIMARY KEY NONCLUSTERED 
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_OTHDTL_SA] TO  SCHEMA OWNER 
GO
