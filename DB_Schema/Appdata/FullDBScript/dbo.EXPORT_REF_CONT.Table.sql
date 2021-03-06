USE [appdata]
GO
/****** Object:  Trigger [trg_update_on_inserted_export_ref_cont]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_update_on_inserted_export_ref_cont]
GO
/****** Object:  Trigger [trg_insert_on_inserted_export_ref_cont]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_insert_on_inserted_export_ref_cont]
GO
/****** Object:  Trigger [trg_insert_on_deleted_export_ref_cont]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_insert_on_deleted_export_ref_cont]
GO
/****** Object:  Trigger [TRG_ERC_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_ERC_JOBS_UPDATED]
GO
/****** Object:  Trigger [trg_delete_on_deleted_export_ref_cont]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_delete_on_deleted_export_ref_cont]
GO
/****** Object:  Trigger [trg_after_insert_export_ref_cont]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_insert_export_ref_cont]
GO
/****** Object:  Trigger [postupdate_audit_export_ref_cont]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_audit_export_ref_cont]
GO
/****** Object:  Trigger [postinsert_audit_export_ref_cont]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_audit_export_ref_cont]
GO
/****** Object:  Trigger [postdelete_audit_export_ref_cont]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_audit_export_ref_cont]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF_CONT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF_CONT] DROP CONSTRAINT IF EXISTS [DF__EXPORT_RE__email__087883A3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF_CONT]') AND type in (N'U'))
ALTER TABLE [dbo].[EXPORT_REF_CONT] DROP CONSTRAINT IF EXISTS [DF__EXPORT_RE__cont___52D0A009]
GO
/****** Object:  Index [IX_ExportRefCont_ContN_Seal_N_Incl_SealN1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_ExportRefCont_ContN_Seal_N_Incl_SealN1] ON [dbo].[EXPORT_REF_CONT]
GO
/****** Object:  Index [EXPORT_REF_CONT_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [EXPORT_REF_CONT_idx1] ON [dbo].[EXPORT_REF_CONT]
GO
/****** Object:  Index [_dta_index_EXPORT_REF_CONT_7_1579152671__K6_K3_2_4_5_8]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_REF_CONT_7_1579152671__K6_K3_2_4_5_8] ON [dbo].[EXPORT_REF_CONT]
GO
/****** Object:  Index [_dta_index_EXPORT_REF_CONT_7_1579152671__K6_K1_K7_K2_K5_3_4_8_9_10_11_12_13_15_16]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_REF_CONT_7_1579152671__K6_K1_K7_K2_K5_3_4_8_9_10_11_12_13_15_16] ON [dbo].[EXPORT_REF_CONT]
GO
/****** Object:  Index [_dta_index_EXPORT_REF_CONT_11_1579152671__K7_K5_K1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_REF_CONT_11_1579152671__K7_K5_K1] ON [dbo].[EXPORT_REF_CONT]
GO
/****** Object:  Index [_dta_index_EXPORT_REF_CONT_11_1579152671__K7_K1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_REF_CONT_11_1579152671__K7_K1] ON [dbo].[EXPORT_REF_CONT]
GO
/****** Object:  Index [_dta_index_EXPORT_REF_CONT_11_1579152671__K6_K5]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_REF_CONT_11_1579152671__K6_K5] ON [dbo].[EXPORT_REF_CONT]
GO
/****** Object:  Index [_dta_index_EXPORT_REF_CONT_11_1579152671__K6_3_4_5_9_10]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_EXPORT_REF_CONT_11_1579152671__K6_3_4_5_9_10] ON [dbo].[EXPORT_REF_CONT]
GO
/****** Object:  Table [dbo].[EXPORT_REF_CONT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXPORT_REF_CONT]
GO
/****** Object:  Table [dbo].[EXPORT_REF_CONT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF_CONT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXPORT_REF_CONT](
	[EXPORT_REF_N] [numeric](10, 0) NOT NULL,
	[CONT_SEQ_N] [numeric](18, 0) NOT NULL,
	[CONT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SEAL_N] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_TYPE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EXPORT_N] [numeric](10, 0) NULL,
	[SELECT_IND] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_SIZE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TOT_WT] [numeric](11, 3) NULL,
	[TOT_NET_WT] [numeric](11, 3) NULL,
	[TOT_PACKAGES] [numeric](10, 0) NULL,
	[TOT_PACK_TYPE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LOT_N] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ROWID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[M3] [numeric](9, 3) NULL,
	[tare_wt] [decimal](10, 3) NULL,
	[CAPACITY] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMPTY_TANK_RELEASE_DT] [datetime] NULL,
	[DEPOT_ROWID] [numeric](18, 0) NULL,
	[batch_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prod_line_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_pallet] [decimal](10, 0) NULL,
	[cont_rcv_dt] [datetime] NULL,
	[load_standard] [int] NULL,
	[product_id] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vgm] [numeric](12, 3) NULL,
	[vgm_uom] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[verified_d] [datetime] NULL,
	[verification_method] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[packmat_gw] [numeric](11, 3) NULL,
	[warehouse_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[delivery_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONTAINER_SERVICE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
	[DCT_REFERENCE_NO] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_ROTATION_NO] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[empty_pickup] [datetime] NULL,
	[gate_in] [datetime] NULL,
	[vessel_load] [datetime] NULL,
	[vessel_departure] [datetime] NULL,
	[vessel_arrival] [datetime] NULL,
	[unloaded_from_vessel] [datetime] NULL,
	[gated_out] [datetime] NULL,
	[returned] [datetime] NULL,
	[SEAL_N1] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_to_transporter] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_REF_CONT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[EXPORT_REF_CONT] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_REF_CONT_11_1579152671__K6_3_4_5_9_10]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF_CONT]') AND name = N'_dta_index_EXPORT_REF_CONT_11_1579152671__K6_3_4_5_9_10')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_REF_CONT_11_1579152671__K6_3_4_5_9_10] ON [dbo].[EXPORT_REF_CONT]
(
	[EXPORT_N] ASC
)
INCLUDE ( 	[CONT_N],
	[SEAL_N],
	[CONT_TYPE_ID],
	[TOT_WT],
	[TOT_NET_WT]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_REF_CONT_11_1579152671__K6_K5]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF_CONT]') AND name = N'_dta_index_EXPORT_REF_CONT_11_1579152671__K6_K5')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_REF_CONT_11_1579152671__K6_K5] ON [dbo].[EXPORT_REF_CONT]
(
	[EXPORT_N] ASC,
	[CONT_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_REF_CONT_11_1579152671__K7_K1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF_CONT]') AND name = N'_dta_index_EXPORT_REF_CONT_11_1579152671__K7_K1')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_REF_CONT_11_1579152671__K7_K1] ON [dbo].[EXPORT_REF_CONT]
(
	[SELECT_IND] ASC,
	[EXPORT_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_REF_CONT_11_1579152671__K7_K5_K1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF_CONT]') AND name = N'_dta_index_EXPORT_REF_CONT_11_1579152671__K7_K5_K1')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_REF_CONT_11_1579152671__K7_K5_K1] ON [dbo].[EXPORT_REF_CONT]
(
	[SELECT_IND] ASC,
	[CONT_TYPE_ID] ASC,
	[EXPORT_REF_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_EXPORT_REF_CONT_7_1579152671__K6_K1_K7_K2_K5_3_4_8_9_10_11_12_13_15_16]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF_CONT]') AND name = N'_dta_index_EXPORT_REF_CONT_7_1579152671__K6_K1_K7_K2_K5_3_4_8_9_10_11_12_13_15_16')
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
/****** Object:  Index [_dta_index_EXPORT_REF_CONT_7_1579152671__K6_K3_2_4_5_8]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF_CONT]') AND name = N'_dta_index_EXPORT_REF_CONT_7_1579152671__K6_K3_2_4_5_8')
CREATE NONCLUSTERED INDEX [_dta_index_EXPORT_REF_CONT_7_1579152671__K6_K3_2_4_5_8] ON [dbo].[EXPORT_REF_CONT]
(
	[EXPORT_N] ASC,
	[CONT_N] ASC
)
INCLUDE ( 	[CONT_SEQ_N],
	[SEAL_N],
	[CONT_TYPE_ID],
	[CONT_SIZE]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EXPORT_REF_CONT_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF_CONT]') AND name = N'EXPORT_REF_CONT_idx1')
CREATE NONCLUSTERED INDEX [EXPORT_REF_CONT_idx1] ON [dbo].[EXPORT_REF_CONT]
(
	[EXPORT_N] ASC,
	[CONT_SEQ_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ExportRefCont_ContN_Seal_N_Incl_SealN1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_REF_CONT]') AND name = N'IX_ExportRefCont_ContN_Seal_N_Incl_SealN1')
CREATE NONCLUSTERED INDEX [IX_ExportRefCont_ContN_Seal_N_Incl_SealN1] ON [dbo].[EXPORT_REF_CONT]
(
	[CONT_N] ASC,
	[SEAL_N] ASC
)
INCLUDE ( 	[SEAL_N1]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
