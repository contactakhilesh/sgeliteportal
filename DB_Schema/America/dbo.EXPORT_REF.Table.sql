USE [AMERICA]
GO
/****** Object:  Table [dbo].[EXPORT_REF]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXPORT_REF](
	[EXPORT_REF_N] [numeric](10, 0) NOT NULL,
	[VESSEL] [varchar](30) NOT NULL,
	[VOYAGE] [varchar](20) NOT NULL,
	[REF_YM] [varchar](6) NOT NULL,
	[COST_CENTRE_C] [varchar](10) NOT NULL,
	[AGENT_ID] [varchar](10) NOT NULL,
	[REF_EX_RATE] [numeric](11, 5) NOT NULL,
	[REF_CURRENCY_ID] [varchar](10) NOT NULL,
	[OCEAN_BL] [varchar](30) NOT NULL,
	[OBL_TERM_ID] [varchar](10) NOT NULL,
	[PORT_LOAD_ID] [varchar](10) NOT NULL,
	[PORT_DISC_ID] [varchar](10) NOT NULL,
	[CR_BKG_REF_N] [varchar](50) NOT NULL,
	[CR_AGENT_ID] [varchar](10) NOT NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NOT NULL,
	[ETA_DEST] [datetime] NOT NULL,
	[USER_ID] [varchar](20) NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[REF_CLOSE_IND] [varchar](1) NOT NULL,
	[REF_CLOSE_D] [datetime] NULL,
	[S_SHIPPER1] [varchar](70) NULL,
	[S_SHIPPER2] [varchar](70) NULL,
	[S_SHIPPER3] [varchar](70) NULL,
	[S_SHIPPER4] [varchar](70) NULL,
	[S_SHIPPER5] [varchar](70) NULL,
	[S_SHIPPER6] [varchar](70) NULL,
	[S_CON1] [varchar](70) NULL,
	[S_CON2] [varchar](70) NULL,
	[S_CON3] [varchar](70) NULL,
	[S_CON4] [varchar](70) NULL,
	[S_CON5] [varchar](70) NULL,
	[S_CON6] [varchar](70) NULL,
	[S_NP1] [varchar](70) NULL,
	[S_NP2] [varchar](70) NULL,
	[S_NP3] [varchar](70) NULL,
	[S_NP4] [varchar](70) NULL,
	[S_NP5] [varchar](70) NULL,
	[S_NP6] [varchar](70) NULL,
	[S_AG1] [varchar](70) NULL,
	[S_AG2] [varchar](70) NULL,
	[S_AG3] [varchar](70) NULL,
	[S_AG4] [varchar](70) NULL,
	[S_AG5] [varchar](70) NULL,
	[S_AG6] [varchar](70) NULL,
	[JOB_TYPE] [varchar](10) NULL,
	[D_CUST_ID] [varchar](10) NULL,
	[D_CONTACT] [varchar](50) NULL,
	[D_HAU_ID] [varchar](10) NULL,
	[D_RE] [varchar](70) NULL,
	[D_PACK_WORDS] [varchar](70) NULL,
	[D_YARD] [varchar](50) NULL,
	[D_REMARKS1] [varchar](70) NULL,
	[D_REMARKS2] [varchar](70) NULL,
	[D_REMARKS3] [varchar](70) NULL,
	[D_REMARKS4] [varchar](70) NULL,
	[D_REMARKS5] [varchar](70) NULL,
	[D_TRK_DATE] [varchar](70) NULL,
	[D_TRK_ADD] [varchar](70) NULL,
	[D_TRK_ADD2] [varchar](70) NULL,
	[D_STUFF_DATE] [varchar](70) NULL,
	[REF_EX_RATE_CR] [numeric](11, 5) NULL,
	[JOB_TYPE_DAMCO] [varchar](1) NULL,
	[PROFIT_LOSS_A] [numeric](11, 3) NULL,
	[SHARE_50_A] [numeric](11, 3) NULL,
	[CREDIT_A] [numeric](11, 3) NULL,
	[DEBIT_A] [numeric](11, 3) NULL,
	[NVOCC_AGENT_ID] [varchar](10) NULL,
	[STUFF_D] [datetime] NULL,
	[WAREHOUSE_ID] [varchar](10) NULL,
	[EXPRESS_BL] [varchar](1) NULL,
	[TOTAL_WT] [numeric](11, 3) NULL,
	[TOTAL_M3] [numeric](11, 3) NULL,
	[TOTAL_PKGS] [numeric](11, 3) NULL,
	[TOTAL_PKGS_TYPE] [varchar](20) NULL,
	[NO_HBL] [numeric](5, 0) NULL,
	[INV_IND] [varchar](1) NULL,
	[CONT_40] [numeric](3, 0) NULL,
	[CONT_20] [numeric](3, 0) NULL,
	[CONT_45] [numeric](3, 0) NULL,
	[VESSEL2] [varchar](30) NULL,
	[VOYAGE2] [varchar](20) NULL,
	[ETA2] [datetime] NULL,
	[ETD2] [datetime] NULL,
	[PO_HAULIER] [varchar](20) NULL,
	[PO_WAREHOUSE] [varchar](20) NULL,
	[SUM_M3] [numeric](11, 3) NULL,
	[SUM_WT] [numeric](11, 3) NULL,
	[SUM_DN] [numeric](11, 3) NULL,
	[SUM_CN] [numeric](11, 3) NULL,
	[SUM_PV] [numeric](11, 3) NULL,
	[SUM_JC] [numeric](11, 3) NULL,
	[SUM_IV] [numeric](11, 3) NULL,
	[UP_USER_ID] [varchar](20) NULL,
	[UP_ENTRY_DATE] [datetime] NULL,
	[PORT_DISC_ID2] [varchar](10) NULL,
	[NEUTRAL_IND] [varchar](1) NULL,
	[TOTAL_NET_WT] [numeric](11, 3) NULL,
	[ACTUAL_CR_ID] [varchar](10) NULL,
	[OBL_TYPE] [varchar](20) NULL,
	[OBL_TOTAL] [numeric](10, 0) NULL,
	[OBL_COPY] [numeric](10, 0) NULL,
	[TRANS_MODE] [varchar](10) NULL,
	[ATA_DEST] [datetime] NULL,
	[ATA] [datetime] NULL,
	[S_LC_CON1] [varchar](70) NULL,
	[S_LC_CON2] [varchar](70) NULL,
	[S_LC_CON3] [varchar](70) NULL,
	[S_LC_CON4] [varchar](70) NULL,
	[S_LC_CON5] [varchar](70) NULL,
	[S_LC_CON6] [varchar](70) NULL,
	[OBL_COLLECT_DATE] [datetime] NULL,
	[PORT_LOAD_NAME] [varchar](40) NULL,
	[PORT_DISC_NAME] [varchar](40) NULL,
	[EXPORT_BKG_N] [numeric](9, 0) NOT NULL,
	[PLACE_REC_ID] [varchar](10) NULL,
	[FIN_DEST] [varchar](50) NULL,
	[TRANSIT_DAYS] [numeric](5, 0) NULL,
	[TYPE_IND] [varchar](2) NULL,
	[CARRIER_PRINT_IND] [varchar](1) NULL,
	[NVOCCAG_PRINT_IND] [varchar](1) NULL,
	[POD_AGENT_ID] [varchar](10) NULL,
	[CONT_WORDS] [varchar](50) NULL,
	[SCH_FAX_IND] [varchar](1) NULL,
	[REMARKS] [varchar](100) NULL,
	[booked_etd] [datetime] NULL,
	[booked_etadest] [datetime] NULL,
	[modified_dt] [datetime] NULL,
	[modified_user] [varchar](20) NULL,
	[closed_by] [varchar](20) NULL,
	[opened_by] [varchar](20) NULL,
	[opened_d] [datetime] NULL,
	[permit_by_nvocc] [varchar](1) NULL,
	[cust_id_ref] [varchar](10) NULL,
	[previous_etd] [datetime] NULL,
	[vessel_loc_code_out] [varchar](7) NULL,
	[book_approver_status] [numeric](1, 0) NULL,
	[book_approver] [varchar](20) NULL,
	[book_approver_date] [datetime] NULL,
	[book_approver_remarks] [varchar](255) NULL,
	[book_rem_status_1] [numeric](1, 0) NULL,
	[book_rem_status_2] [numeric](1, 0) NULL,
	[book_rem_status_3] [numeric](1, 0) NULL,
	[DG_REMARKS] [varchar](255) NULL,
	[conf_bl_to_ssline_d] [datetime] NULL,
	[plant_code] [varchar](20) NULL,
	[booked_eta] [datetime] NULL,
	[truck_waybill_no] [varchar](30) NULL,
	[orig_booked_vessel_eta] [datetime] NULL,
	[order_type] [varchar](10) NULL,
	[vessel_ref] [decimal](10, 0) NULL,
	[reefer_temp] [decimal](10, 3) NULL,
	[route_id] [varchar](10) NULL,
	[no_permit_amendreq] [varchar](1) NULL,
	[eta_del] [datetime] NULL,
	[eta_portnet] [datetime] NULL,
	[InclContFlag] [char](2) NULL,
	[freight_forwarder] [varchar](100) NULL,
	[buffer_order] [int] NULL,
	[ServiceContractNo] [varchar](100) NULL,
	[free_detention_days] [int] NULL,
 CONSTRAINT [PK_EXPORT_REF] PRIMARY KEY CLUSTERED 
(
	[EXPORT_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_REF] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_REF_5_615673241__K1_2_3_15_16_46_134]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_REF_5_615673241__K1_2_3_15_16_46_134] ON [dbo].[EXPORT_REF]
(
	[EXPORT_REF_N] ASC
)
INCLUDE ( 	[VESSEL],
	[VOYAGE],
	[ETA],
	[ETD],
	[JOB_TYPE],
	[cust_id_ref]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_ExportRefEtd]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE NONCLUSTERED INDEX [I_ExportRefEtd] ON [dbo].[EXPORT_REF]
(
	[ETD] ASC
)
INCLUDE ( 	[EXPORT_REF_N],
	[VESSEL],
	[VOYAGE],
	[CR_AGENT_ID],
	[ETA],
	[ETA_DEST],
	[REF_CLOSE_IND],
	[S_CON1],
	[JOB_TYPE],
	[TOTAL_NET_WT],
	[ACTUAL_CR_ID],
	[TRANS_MODE],
	[FIN_DEST],
	[booked_etd],
	[booked_etadest],
	[vessel_ref]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_ExportRefTransModeIncl10]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE NONCLUSTERED INDEX [I_ExportRefTransModeIncl10] ON [dbo].[EXPORT_REF]
(
	[TRANS_MODE] ASC
)
INCLUDE ( 	[EXPORT_REF_N],
	[VESSEL],
	[VOYAGE],
	[CR_AGENT_ID],
	[ETD],
	[ETA_DEST],
	[JOB_TYPE],
	[STUFF_D],
	[ATA_DEST],
	[ATA]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
