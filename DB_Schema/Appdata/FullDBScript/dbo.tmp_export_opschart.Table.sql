USE [appdata]
GO
/****** Object:  Table [dbo].[tmp_export_opschart]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_export_opschart]
GO
/****** Object:  Table [dbo].[tmp_export_opschart]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_export_opschart]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_export_opschart](
	[EXPORT_N] [numeric](10, 0) NOT NULL,
	[EXPORT_REF_N] [numeric](10, 0) NOT NULL,
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[HBL_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TOT_M3] [numeric](12, 4) NOT NULL,
	[TOT_WT] [numeric](11, 3) NOT NULL,
	[TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[TOT_PACK_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_LOAD_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_DISC_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_DEL_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_DEL_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_DEL_TERMS] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_REC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_REC_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PORT_REC_TERMS] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FREIGHT_TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SHIP_ON_BRD_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SHIP_ON_BRD_D] [datetime] NOT NULL,
	[EXPRESS_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SHIP_COUNT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[T_SHIP_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[BL_Q] [numeric](2, 0) NOT NULL,
	[S_SHIPPER1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_SHIPPER2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_SHIPPER3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_SHIPPER4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_SHIPPER5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_SHIPPER6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_CON1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_CON2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_CON3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_CON4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_CON5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_CON6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_NP1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_NP2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_NP3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_NP4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_NP5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_NP6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_AG1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_AG2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_AG3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_AG4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_AG5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[S_AG6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[CARGO_WORDS] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PRE_CARRIAGE] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COLLECT_A] [numeric](11, 3) NULL,
	[COLLECT_CURRENCY] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TRANS_IMPORT_N] [numeric](10, 0) NULL,
	[PO_N] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_20] [numeric](10, 0) NULL,
	[CONT_40] [numeric](10, 0) NULL,
	[CONT_45] [numeric](10, 0) NULL,
	[CUST_TYPE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[I_RATE] [numeric](11, 2) NULL,
	[PSC_IND] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_IND2] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AS_AGENT] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_WAREHOUSE] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_CFS] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_BL] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_POD] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_DO_READY] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_DO_COLLECT] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_CONSIGNEE] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PO_HAULIER] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_AGENT] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UP_USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[BKG_REF_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SWITCH_BL_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOT_CHG_WT] [numeric](11, 3) NULL,
	[WEB_IND] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_FIN_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_FIN_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_ORD_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COLLECT_DATE] [datetime] NULL,
	[CONTAIN_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOT_NET_WT] [numeric](11, 3) NULL,
	[BL_PRN_CNT] [numeric](10, 0) NULL,
	[CONSIGNEE_REF_N] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TIE_REF_N] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_NO] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_DESC] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BOARD_TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UP_TIE_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UP_TIE_D] [datetime] NULL,
	[EDI_RESP_SEQ] [numeric](5, 0) NULL,
	[EDI_RESP_D] [datetime] NULL,
	[EDI_RESP_USER] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SIGNATURE_NAME] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ISO] [numeric](18, 0) NULL,
	[PORT_LOAD_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_DESC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_LC_CON6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_ISSUE_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SELECT_CONT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_DESC2] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_REF1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_REF2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_REF3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_REF4] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_REF5] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INVOICE_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PAYMENT_TERMS] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILL_TO1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILL_TO2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILL_TO3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILL_TO4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILL_TO5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILL_TO6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OCEAN_FR_COST] [numeric](11, 3) NULL,
	[ACTUAL_ARR_D] [datetime] NULL,
	[BL_TO_SSLINE_D] [datetime] NULL,
	[BL_FROM_SSLINE_D] [datetime] NULL,
	[DOCS_SENT_TO_BANK_D] [datetime] NULL,
	[DOCS_SENT_TO_CUST_D] [datetime] NULL,
	[DTL_WTM3_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WT_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PLANT_LOAD_D] [datetime] NULL,
	[COUNTRY_ULTIMATE_DEST] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BL_PLACE_OF_SURRENDER] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SEND_TYPE_ID] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PRT_SIG_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INCO_TERMS] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ACTUAL_SAIL_D] [datetime] NULL,
	[EDI_REMARKS1] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_REMARKS2] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FCR_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HAZARD_DECL] [varchar](350) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PACK_CERT] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMER_CONT] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USBOYCOTT_CLAUSE] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SED_CLAUSE] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ITN] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SIGN_DECL] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD_REMARKS] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DG_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HAZARD_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PACK_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMER_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[US_BOYCOTT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SED_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ITN_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SIGN_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD_REM_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SELECT_CONT] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[tmp_export_opschart] ADD [HAZARD_DECL2] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [POINT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [POINT_DESC] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [ORIGIN_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [ORIGIN_DESC] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [PRICE_TERM_PORT] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[tmp_export_opschart] ADD [F_AG1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [F_AG2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [F_AG3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [F_AG4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [F_AG5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [F_AG6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[tmp_export_opschart] ADD [INSURER] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [INSUR_VAL] [numeric](11, 3) NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[tmp_export_opschart] ADD [PRODUCT_ORIG] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [DOCS_DISP_BANK_D] [datetime] NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [DOCS_REC_CUST_D] [datetime] NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [GI_CHEMICAL_D] [datetime] NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [HI_LUB_D] [datetime] NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [SURVEYOR_D] [datetime] NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [FLAG_IMPORT_N] [numeric](10, 0) NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [FLAG_EXPORT_N] [numeric](9, 0) NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [CNB_LICENSENO] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [final_del_remarks] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [palletize] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [status] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [laycan_dt] [datetime] NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [FFI] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [ATP] [datetime] NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [MAD] [datetime] NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [location_id] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
ALTER TABLE [dbo].[tmp_export_opschart] ADD [pack_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_export_opschart] TO  SCHEMA OWNER 
GO
