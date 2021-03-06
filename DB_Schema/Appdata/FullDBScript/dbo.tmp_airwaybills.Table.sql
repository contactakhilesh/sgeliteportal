USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_Invalid_Flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_Piece_Details_Mandatory]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_Pickup_Alert_Shown_Flag_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_NoOfPallet]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_Dangerous_Goods_Flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_Deferred_Flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_Exchange_Flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_All_pieces_printed_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_RTN_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_COD_value]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_PDN_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_DVU_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_SAT_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_label_prt_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_manifested_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_print_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_Courier_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_Advisory_Attached_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_piece_details_attached_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_NAFTA_attached_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_SED_attached_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_CIPL_attached_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_dos_attached_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_neutral_delivery_service_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_shipment_multiple_ref_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_insurance_service_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_content_attached_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_delivery_duties_paid_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_split_billing_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_aggregate_billing_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_dim_wt_used_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_Dutiable_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_international_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_dos_exempt_flag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_airwaybills] DROP CONSTRAINT IF EXISTS [DF1_airwaybills_rcvr_always_send_prealert_flag]
GO
/****** Object:  Table [dbo].[tmp_airwaybills]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_airwaybills]
GO
/****** Object:  Table [dbo].[tmp_airwaybills]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_airwaybills]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_airwaybills](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_id] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[line_no] [int] NOT NULL,
	[airwaybills_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[airwaybill_num] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[airwaybill_ref] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[sender_cd] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_company] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_country_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[sender_country_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_address1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_address2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_address3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_zip] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_iata] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_city] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_state] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_phone] [varchar](18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_mobile_fax] [varchar](18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_email] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_vat_gst] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_reference] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_export_license] [varchar](19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_license_exp_dt] [datetime] NULL,
	[shipper_federal_tax_id] [varchar](19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sender_account_num] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[sender_tc_account] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_cd] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_company] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_attention] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_country_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[receiver_country_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_address_1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_address_2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_address_3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_zip] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_iata] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_city] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_state] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_phone] [varchar](18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_mobile_fax] [varchar](18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_email1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_email2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_email3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_account] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_import_license] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_license_expiry] [datetime] NULL,
	[receiver_reference] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rcvr_always_send_prealert_flag] [bit] NULL,
	[receiver_vat_gst] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mail_sort_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pre_alert_email] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_cd] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_company] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_attention] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_address_1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_address_2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_address_3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_city] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_state] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_zip] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_country_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_country_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_phone] [varchar](18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_fax] [varchar](18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[importer_email] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Importer_tax_id_Importer_VAT] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_state_tax_id] [varchar](19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_dt] [datetime] NOT NULL,
	[shipment_pieces] [int] NOT NULL,
	[shipment_weight] [float] NOT NULL,
	[weight_rounded] [float] NULL,
	[dim_wt_length] [float] NULL,
	[dim_wt_height] [float] NULL,
	[dim_wt_width] [float] NULL,
	[shipment_dim_weight] [float] NULL,
	[awb_currency_cd] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[total_declared_value] [float] NULL,
	[contents1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contents2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contents3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[product_id] [numeric](18, 0) NOT NULL,
	[global_product_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Local_product_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Product_content_cd] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[package_charge] [float] NULL,
	[total_ship_charges] [float] NULL,
	[total_ship_charge_currency] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[billto_account_num] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Shipment_billto_options] [tinyint] NULL,
	[delivery_notification_mode] [tinyint] NULL,
	[Insured_amount] [float] NULL,
	[insure_currency_cd] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[harm_commodity_cd] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_of_mfg] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type_of_export] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Terms_of_trade_cd] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tax_id] [varchar](19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Import_vat_num] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[export_licence_num] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[export_licence_expiry_dt] [datetime] NULL,
	[import_licence_num] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dos_exempt_flag] [bit] NULL,
	[FTSR_exemption_no] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dos_exempt_criteria] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_billto_option] [tinyint] NULL,
	[duty_billing_cd] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vat_billto_option] [tinyint] NULL,
	[VAT_billing_code] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VAT_billto_country] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VAT_billto_country_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_billing_accounts_account] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_billing_accounts_vat] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_billing_accounts_ctry_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_billing_accts_ctry_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[aggregate_charge] [float] NULL,
	[ETA_period] [int] NULL,
	[ETA_Units] [smallint] NULL,
	[Service_level] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[international_flag] [bit] NULL,
	[Dutiable_flag] [bit] NULL,
	[dim_wt_used_flag] [bit] NULL,
	[aggregate_billing_flag] [bit] NULL,
	[split_billing_flag] [bit] NULL,
	[delivery_duties_paid_flag] [bit] NULL,
	[content_attached_flag] [bit] NULL,
	[insurance_service_flag] [bit] NULL,
	[shipment_multiple_ref_flag] [bit] NULL,
	[neutral_delivery_service_flag] [bit] NULL,
	[dos_attached_flag] [bit] NULL,
	[CIPL_attached_flag] [bit] NULL,
	[SED_attached_flag] [bit] NULL,
	[NAFTA_attached_flag] [bit] NULL,
	[piece_details_attached_flag] [bit] NULL,
	[Advisory_Attached_flag] [bit] NULL,
	[dos_advisory_status] [tinyint] NULL,
	[Last_advisory_status] [tinyint] NULL,
	[dos_exempt_advisory_status] [tinyint] NULL,
	[Courier_flag] [bit] NULL,
	[pickup_time] [datetime] NULL,
	[Pickup_dt] [datetime] NULL,
	[courier_initials] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cal_delivery_dt] [varchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[entry_time] [datetime] NULL,
	[last_advisory_custom_text] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[manifest_dt] [datetime] NULL,
	[manifest_time] [datetime] NULL,
	[card_type] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[card_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[card_num] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[card_exp_dt] [datetime] NULL,
	[cost_center] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_billing_accounts_company] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_billing_accts_attention] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_billing_accts_address_1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_billing_accts_address_2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_billing_accts_address_3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_billing_accounts_city] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_billing_accounts_state] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_billing_accounts_zip] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_billing_accounts_phone] [varchar](18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_billing_accounts_fax] [varchar](18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duty_billing_accounts_iata] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TC_sticker_num] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AES] [int] NULL,
	[print_flag] [bit] NULL,
	[manifested_flag] [bit] NULL,
	[rate_table] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[move_crt] [varchar](11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[label_prt_flag] [bit] NULL,
	[SAT_flag] [bit] NOT NULL,
	[DVU_flag] [bit] NOT NULL,
	[PDN_flag] [bit] NULL,
	[dutiable_ship_advisory_status] [tinyint] NULL,
	[Trans_ID] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COD_value] [float] NOT NULL,
	[COD_currency] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Delivery_terminal_name] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Delivery_branch_name] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RTN_flag] [bit] NOT NULL,
	[All_pieces_printed_flag] [bit] NOT NULL,
	[Schedule_number] [varchar](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Backend] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Shipment_VAT] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mod_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[mod_dt] [datetime] NOT NULL,
	[Exchange_Flag] [bit] NOT NULL,
	[Deferred_Flag] [bit] NOT NULL,
	[Dangerous_Goods_Flag] [bit] NOT NULL,
	[Delivery_Instructions] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NoOfPallet] [int] NOT NULL,
	[Pallet_Type] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Fixed_Delivery_date] [datetime] NULL,
	[Master_Airwaybill_Ref] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Dangerous_Class] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PreDelivery_Route_Code] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Province_Code] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Sort_Code] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pickup_Alert_Shown_Flag] [bit] NOT NULL,
	[Piece_Details_Mandatory] [bit] NOT NULL,
	[Origin_station_Code] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COD_Payment_Type] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LP_Number] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Routing_Code] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Branch_ReamusId] [varchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Terminal_ReamusId] [varchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Receiver_state_tax_id] [varchar](19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[receiver_federal_tax_id] [varchar](19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Invalid_Flag] [bit] NULL,
	[FileName] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tmp_airwaybills] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[cust_id] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_airwaybills] TO  SCHEMA OWNER 
GO
