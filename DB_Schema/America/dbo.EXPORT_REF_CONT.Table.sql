USE [AMERICA]
GO
/****** Object:  Table [dbo].[EXPORT_REF_CONT]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXPORT_REF_CONT](
	[EXPORT_REF_N] [numeric](10, 0) NOT NULL,
	[CONT_SEQ_N] [numeric](18, 0) NOT NULL,
	[CONT_N] [varchar](20) NOT NULL,
	[SEAL_N] [varchar](50) NULL,
	[CONT_TYPE_ID] [varchar](10) NOT NULL,
	[EXPORT_N] [numeric](10, 0) NULL,
	[SELECT_IND] [char](1) NULL,
	[CONT_SIZE] [varchar](10) NOT NULL,
	[TOT_WT] [numeric](11, 3) NULL,
	[TOT_NET_WT] [numeric](11, 3) NULL,
	[TOT_PACKAGES] [numeric](10, 0) NULL,
	[TOT_PACK_TYPE] [varchar](20) NULL,
	[LOT_N] [varchar](200) NULL,
	[ROWID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[M3] [numeric](9, 3) NULL,
	[tare_wt] [decimal](10, 3) NULL,
	[CAPACITY] [varchar](50) NULL,
	[EMPTY_TANK_RELEASE_DT] [datetime] NULL,
	[DEPOT_ROWID] [numeric](18, 0) NULL,
	[batch_no] [varchar](100) NULL,
	[prod_line_n] [varchar](50) NULL,
	[tot_pallet] [decimal](10, 0) NULL,
	[cont_rcv_dt] [datetime] NULL,
	[load_standard] [int] NULL,
	[product_id] [varchar](50) NULL,
	[vgm] [numeric](12, 3) NULL,
	[vgm_uom] [varchar](3) NULL,
	[verified_d] [datetime] NULL,
	[verification_method] [varchar](3) NULL,
	[packmat_gw] [numeric](11, 3) NULL,
	[warehouse_id] [varchar](10) NULL,
	[delivery_no] [varchar](20) NULL,
	[CONTAINER_SERVICE] [varchar](50) NULL,
	[SERVICE_DATE_MANIFESTED] [datetime] NULL,
	[SERVICE_DATE_TRUCK2YARD] [datetime] NULL,
	[SERVICE_DATE_PREXRAY] [datetime] NULL,
	[SERVICE_DATE_BOOKED_STRIPPPING] [datetime] NULL,
	[SERVICE_DATE_BOOKED_DOOROPEN] [datetime] NULL,
	[SERVICE_DATE_STRIP] [datetime] NULL,
	[SERVICE_DATE_STUFF] [datetime] NULL,
	[SERVICE_DATE_LOAD] [datetime] NULL,
	[CONTAINER_IN_TIME] [datetime] NULL,
	[CONTAINER_OUT_TIME] [datetime] NULL,
	[DCT_REFERENCE_NO] [varchar](50) NULL,
	[PORT_ROTATION_NO] [varchar](50) NULL,
	[empty_pickup] [datetime] NULL,
	[gate_in] [datetime] NULL,
	[vessel_load] [datetime] NULL,
	[vessel_departure] [datetime] NULL,
	[vessel_arrival] [datetime] NULL,
	[unloaded_from_vessel] [datetime] NULL,
	[gated_out] [datetime] NULL,
	[returned] [datetime] NULL,
	[SEAL_N1] [varchar](255) NULL,
	[email_to_transporter] [char](10) NOT NULL,
	[wh_gateindate] [datetime] NULL,
	[yard_gateindate] [datetime] NULL,
 CONSTRAINT [exp_ref_cont_pk] PRIMARY KEY CLUSTERED 
(
	[EXPORT_REF_N] ASC,
	[CONT_SEQ_N] ASC,
	[CONT_N] ASC,
	[CONT_TYPE_ID] ASC,
	[ROWID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_REF_CONT] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_REF_CONT_7_1579152671__K6_K1_K7_K2_K5_3_4_8_9_10_11_12_13_15_16]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_REF_CONT_7_1579152671__K6_K1_K7_K2_K5_3_4_8_9_10_11_12_13_15_16] ON [dbo].[EXPORT_REF_CONT]
(
	[EXPORT_N] ASC,
	[EXPORT_REF_N] ASC,
	[SELECT_IND] ASC,
	[CONT_SEQ_N] ASC,
	[CONT_TYPE_ID] ASC
)
INCLUDE ( 	[CONT_N],
	[SEAL_N],
	[CONT_SIZE],
	[TOT_WT],
	[TOT_NET_WT],
	[TOT_PACKAGES],
	[TOT_PACK_TYPE],
	[LOT_N],
	[M3],
	[tare_wt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ExportRefCont_ContN_Seal_N_Incl_SealN1]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE NONCLUSTERED INDEX [IX_ExportRefCont_ContN_Seal_N_Incl_SealN1] ON [dbo].[EXPORT_REF_CONT]
(
	[CONT_N] ASC,
	[SEAL_N] ASC
)
INCLUDE ( 	[SEAL_N1]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
