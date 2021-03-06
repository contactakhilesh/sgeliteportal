USE [appdata]
GO
/****** Object:  Trigger [trg_after_upd_EXPORT_OTHDTL_SA]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_upd_EXPORT_OTHDTL_SA]
GO
/****** Object:  Trigger [postupdate_audit_export_othdtl_sa]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_audit_export_othdtl_sa]
GO
/****** Object:  Trigger [postinsert_audit_export_othdtl_sa]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_audit_export_othdtl_sa]
GO
/****** Object:  Trigger [postdelete_audit_export_othdtl_sa]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_audit_export_othdtl_sa]
GO
/****** Object:  Table [dbo].[EXPORT_OTHDTL_SA]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXPORT_OTHDTL_SA]
GO
/****** Object:  Table [dbo].[EXPORT_OTHDTL_SA]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_OTHDTL_SA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXPORT_OTHDTL_SA](
	[export_n] [numeric](10, 0) NOT NULL,
	[order_stat] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_stat] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sap_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[roll_over] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_roll_over] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[special_rem] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rem_plants] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inspection_ref] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pallets] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sap_mat_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fan_mat_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Beni_letter_To] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref_dc_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_applicant] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[name_company] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BL_dtl_To] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BL_Attn] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pallet_desc] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Frt_payable] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BL_ins] [varchar](1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[proforma_inv_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inv_manu_dtl] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inv_to_dtl] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[per_pallet_net_wgt] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[per_pallet_gross_wgt] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[coo_issue_for] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[coo_to_sent_to] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[order_remarks] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[footer_text] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pre_lodge_date] [datetime] NULL,
	[lodge_date] [datetime] NULL,
	[packed_date] [datetime] NULL,
	[shipped_date] [datetime] NULL,
	[FormAB_dt] [datetime] NULL,
	[inspection_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_rel_date] [datetime] NULL,
	[order_stat_reason] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mli_revised] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[to_plant] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[to_plant_date] [datetime] NULL,
	[bl_dtls_info] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_rel_to] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sap_ship_no] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sap_out_del_no] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PaymentTermDesc] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_details] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manifest_to_trucker_date] [datetime] NULL,
	[rvsd_manifest_to_trucker_date] [datetime] NULL,
	[manifest_rcvd_by_trucker_date] [datetime] NULL,
	[rvsd_manif_rcvd_by_trucker_d] [datetime] NULL,
	[cro_sent_date] [datetime] NULL,
	[rvsd_cro_sent_date] [datetime] NULL,
	[cro_rcvd_date] [datetime] NULL,
	[rvsd_cro_rcvd_date] [datetime] NULL,
	[revised_packed_date] [datetime] NULL,
	[sent_to_plant_user_id] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[swb_sentdate] [datetime] NULL,
	[swb_sentby] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[arableague_inv] [numeric](9, 0) NULL,
 CONSTRAINT [PK_EXPORT_OTHDTL_SA] PRIMARY KEY NONCLUSTERED 
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_OTHDTL_SA] TO  SCHEMA OWNER 
GO
