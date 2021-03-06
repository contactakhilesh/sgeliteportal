USE [appdata]
GO
/****** Object:  Trigger [trg_u_import]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_u_import]
GO
/****** Object:  Trigger [TRG_IMP_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_IMP_JOBS_UPDATED]
GO
/****** Object:  Trigger [trg_i_import]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_i_import]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IMPORT]') AND type in (N'U'))
ALTER TABLE [dbo].[IMPORT] DROP CONSTRAINT IF EXISTS [FK_IMPORT]
GO
/****** Object:  Index [IX_REF_IMP]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_REF_IMP] ON [dbo].[IMPORT]
GO
/****** Object:  Index [_dta_index_IMPORT_c_11_719393682__K1_K2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_IMPORT_c_11_719393682__K1_K2] ON [dbo].[IMPORT] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[IMPORT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[IMPORT]
GO
/****** Object:  Table [dbo].[IMPORT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IMPORT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IMPORT](
	[IMPORT_N] [numeric](10, 0) NOT NULL,
	[IMPORT_REF_N] [numeric](10, 0) NOT NULL,
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[HBL_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TOT_M3] [numeric](13, 3) NOT NULL,
	[TOT_WT] [numeric](11, 3) NOT NULL,
	[TOT_PACKAGES] [numeric](10, 0) NOT NULL,
	[TOT_PACK_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GD_DES5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EXPRESS_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SHIPPER_1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIPPER_2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DO_READY_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_SHIP_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_VESSEL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_VOYAGE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_COLOADER] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_ETD_SIN] [datetime] NULL,
	[T_ETA_DEST] [datetime] NULL,
	[T_RATES] [numeric](11, 2) NULL,
	[T_PORT_DISC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_FIN_DEST] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_FINAGENT] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_WAREHOUSE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_REMARKS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_AGENT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[DO_TO] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PERMIT_NO] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TRUCKING_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COLLECT_A] [numeric](11, 2) NULL,
	[EXPORT_BKG_DIRECT_N] [numeric](10, 0) NULL,
	[TRUCKER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COLLECT_CURRENCY] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TRANSFER_FLAG] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TRANSFER_N] [numeric](10, 0) NULL,
	[DELIVERY_D] [datetime] NULL,
	[PO_N] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_20] [numeric](10, 0) NULL,
	[CONT_40] [numeric](10, 0) NULL,
	[CONT_45] [numeric](10, 0) NULL,
	[CUST_TYPE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[I_RATE] [numeric](12, 3) NULL,
	[F_M3_WT] [numeric](13, 3) NULL,
	[EXPORT_BKG_REF_NO] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EXPORT_BKG_REF_NO_LINE] [numeric](10, 0) NULL,
	[COLLECT_EX_RATE] [numeric](11, 5) NULL,
	[T_PORT_FIN_DEST] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS1] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS2] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS3] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS4] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS5] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FR_COLLECT_IND2] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_REMARKS1] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_REMARKS2] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_REMARKS3] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_REMARK1] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_REMARK2] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_REMARK3] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NOMINATE_IND] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETA_FINAL] [datetime] NULL,
	[WEB_WAREHOUSE] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_BL] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_POD] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_CFS] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_DO_READY] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_DO_COLLECT] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_CONSIGNEE] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEB_REMARKS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_CHG_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[T_CHG_D] [datetime] NULL,
	[UP_USER_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[TOT_CHG_WT] [numeric](11, 3) NULL,
	[LOT_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BATCH_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOT_NET_WT] [numeric](11, 3) NULL,
	[other1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[other2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[other3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[other4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[other5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[other6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cargo_loc1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cargo_loc2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cargo_loc3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cargo_loc4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cargo_loc5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cargo_loc6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_02] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_03] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_04] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_05] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_06] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_ORD_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONSIGNEE_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PO_N_NEW] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ISO] [numeric](18, 0) NULL,
	[LC_CONSIGNEE_1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_CONSIGNEE_2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_CONSIGNEE_3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_CONSIGNEE_4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_CONSIGNEE_5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_CONSIGNEE_6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_LOAD_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_LOAD_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_DISC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_DISC_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_REC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_REC_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_DEL_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_DEL_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
	[S_NP1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_NP2_6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUT_OFF_D] [datetime] NULL,
	[PLANT_LOAD_D] [datetime] NULL,
	[COUNTRY_ULTIMATE_DEST] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WT_UOM] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PRT_SIG_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIP_ON_BRD_D] [datetime] NULL,
	[CONTAIN_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_NO] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_DESC] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_DESC2] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BOARD_TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DTL_WTM3_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BL_PLACE_OF_SURRENDER] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_DEL_TERMS] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_REC_TERMS] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIP_ON_BRD_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SHIP_COUNT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_AG1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_AG2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_AG3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_AG4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_AG5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[S_AG6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BKG_REF_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_ISSUE_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SELECT_CONT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SIGNATURE_NAME] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SEND_TYPE_ID] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INCO_TERMS] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ACTUAL_SAIL_D] [datetime] NULL,
	[EDI_REMARKS1] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EDI_REMARKS2] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POINT_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POINT_DESC] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORIGIN_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORIGIN_DESC] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DG_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HAZARD_DECL] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HAZARD_DECL2] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PACK_CERT] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMER_CONT] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USBOYCOTT_CLAUSE] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SED_CLAUSE] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ITN] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SIGN_DECL] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD_REMARKS] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HAZARD_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PACK_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMER_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[US_BOYCOTT_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SED_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ITN_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SIGN_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADD_REM_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SELECT_CONT] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[F_AG1] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[F_AG2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[F_AG3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[F_AG4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[F_AG5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[F_AG6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INSURER] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[INSUR_VAL] [numeric](11, 3) NULL,
	[PRODUCT_ORIG] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOCS_DISP_BANK_D] [datetime] NULL,
	[DOCS_REC_CUST_D] [datetime] NULL,
	[modified_dt] [datetime] NULL,
	[modified_user] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_amt] [numeric](15, 2) NULL,
	[entity_rowid] [numeric](10, 0) NULL,
	[gr_d] [datetime] NULL,
	[container_clearance_d] [datetime] NULL,
 CONSTRAINT [PK_IMPORT] PRIMARY KEY NONCLUSTERED 
(
	[IMPORT_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[IMPORT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[IMPORT] TO [public] AS [dbo]
GO
/****** Object:  Index [_dta_index_IMPORT_c_11_719393682__K1_K2]    Script Date: 3/14/2018 6:12:01 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IMPORT]') AND name = N'_dta_index_IMPORT_c_11_719393682__K1_K2')
CREATE CLUSTERED INDEX [_dta_index_IMPORT_c_11_719393682__K1_K2] ON [dbo].[IMPORT]
(
	[IMPORT_N] ASC,
	[IMPORT_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_REF_IMP]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[IMPORT]') AND name = N'IX_REF_IMP')
CREATE NONCLUSTERED INDEX [IX_REF_IMP] ON [dbo].[IMPORT]
(
	[IMPORT_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_IMPORT]') AND parent_object_id = OBJECT_ID(N'[dbo].[IMPORT]'))
ALTER TABLE [dbo].[IMPORT]  WITH NOCHECK ADD  CONSTRAINT [FK_IMPORT] FOREIGN KEY([CUST_ID])
REFERENCES [dbo].[CUSTOMER_MAST] ([CUST_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_IMPORT]') AND parent_object_id = OBJECT_ID(N'[dbo].[IMPORT]'))
ALTER TABLE [dbo].[IMPORT] CHECK CONSTRAINT [FK_IMPORT]
GO
