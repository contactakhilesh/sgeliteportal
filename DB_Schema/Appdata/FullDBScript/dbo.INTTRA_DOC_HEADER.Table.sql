USE [appdata]
GO
/****** Object:  Trigger [trg_after_ins_INTTRA_DOC_HEADER]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_ins_INTTRA_DOC_HEADER]
GO
/****** Object:  Index [inttra_doc_header_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [inttra_doc_header_idx1] ON [dbo].[INTTRA_DOC_HEADER]
GO
/****** Object:  Index [_dta_index_INTTRA_DOC_HEADER_11_224055884__K42_K3_K1_7_10_34_46_64]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_INTTRA_DOC_HEADER_11_224055884__K42_K3_K1_7_10_34_46_64] ON [dbo].[INTTRA_DOC_HEADER]
GO
/****** Object:  Index [_dta_index_INTTRA_DOC_HEADER_11_224055884__K42_K1_K3_7_10_34_46_64]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_INTTRA_DOC_HEADER_11_224055884__K42_K1_K3_7_10_34_46_64] ON [dbo].[INTTRA_DOC_HEADER]
GO
/****** Object:  Index [_dta_index_INTTRA_DOC_HEADER_11_224055884__K3_K42_K1_10]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_INTTRA_DOC_HEADER_11_224055884__K3_K42_K1_10] ON [dbo].[INTTRA_DOC_HEADER]
GO
/****** Object:  Index [_dta_index_INTTRA_DOC_HEADER_11_224055884__K1_10_42]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_INTTRA_DOC_HEADER_11_224055884__K1_10_42] ON [dbo].[INTTRA_DOC_HEADER]
GO
/****** Object:  Table [dbo].[INTTRA_DOC_HEADER]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[INTTRA_DOC_HEADER]
GO
/****** Object:  Table [dbo].[INTTRA_DOC_HEADER]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INTTRA_DOC_HEADER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[INTTRA_DOC_HEADER](
	[msg_seq_n] [decimal](18, 0) NOT NULL,
	[msg_ver] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[msg_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[msg_dt] [datetime] NOT NULL,
	[doc_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[xml_create_dt] [datetime] NOT NULL,
	[sender] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[recipient] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[shipment_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[msg_status] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[bkg_create_dt] [datetime] NULL,
	[user_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_email] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[po_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref_1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipping_comment] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[move_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[service_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[transport_stage] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[transport_mode] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[voyage] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[scac] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[place_rec_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[place_rec_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_load_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_load_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[place_del_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[place_del_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_disc_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_disc_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[etd] [datetime] NULL,
	[eta_dest] [datetime] NULL,
	[booking_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inttra_booking_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contract_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[export_bkg_direct_n] [numeric](18, 0) NULL,
	[cut_off] [datetime] NULL,
	[export_n] [numeric](18, 0) NULL,
	[msg_function] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_msg_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_msg_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref_to_prev_msg] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[equipment_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[carrier_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[portnet_job_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[goods_dest] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_release_off] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[carrier_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[event_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[event_loc_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[event_loc_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[event_loc_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[event_loc_country] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[event_dt] [datetime] NULL,
	[transport_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[transport_id_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[event_port] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dt_qualifier] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[xml_filename] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pdf_filename] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_INTTRA_DOC_HEADER] PRIMARY KEY CLUSTERED 
(
	[msg_seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[INTTRA_DOC_HEADER] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[INTTRA_DOC_HEADER] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_INTTRA_DOC_HEADER_11_224055884__K1_10_42]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[INTTRA_DOC_HEADER]') AND name = N'_dta_index_INTTRA_DOC_HEADER_11_224055884__K1_10_42')
CREATE NONCLUSTERED INDEX [_dta_index_INTTRA_DOC_HEADER_11_224055884__K1_10_42] ON [dbo].[INTTRA_DOC_HEADER]
(
	[msg_seq_n] ASC
)
INCLUDE ( 	[msg_status],
	[export_n]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_INTTRA_DOC_HEADER_11_224055884__K3_K42_K1_10]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[INTTRA_DOC_HEADER]') AND name = N'_dta_index_INTTRA_DOC_HEADER_11_224055884__K3_K42_K1_10')
CREATE NONCLUSTERED INDEX [_dta_index_INTTRA_DOC_HEADER_11_224055884__K3_K42_K1_10] ON [dbo].[INTTRA_DOC_HEADER]
(
	[msg_type] ASC,
	[export_n] ASC,
	[msg_seq_n] ASC
)
INCLUDE ( 	[msg_status]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_INTTRA_DOC_HEADER_11_224055884__K42_K1_K3_7_10_34_46_64]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[INTTRA_DOC_HEADER]') AND name = N'_dta_index_INTTRA_DOC_HEADER_11_224055884__K42_K1_K3_7_10_34_46_64')
CREATE NONCLUSTERED INDEX [_dta_index_INTTRA_DOC_HEADER_11_224055884__K42_K1_K3_7_10_34_46_64] ON [dbo].[INTTRA_DOC_HEADER]
(
	[export_n] ASC,
	[msg_seq_n] ASC,
	[msg_type] ASC
)
INCLUDE ( 	[sender],
	[msg_status],
	[booking_n],
	[ref_to_prev_msg],
	[pdf_filename]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_INTTRA_DOC_HEADER_11_224055884__K42_K3_K1_7_10_34_46_64]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[INTTRA_DOC_HEADER]') AND name = N'_dta_index_INTTRA_DOC_HEADER_11_224055884__K42_K3_K1_7_10_34_46_64')
CREATE NONCLUSTERED INDEX [_dta_index_INTTRA_DOC_HEADER_11_224055884__K42_K3_K1_7_10_34_46_64] ON [dbo].[INTTRA_DOC_HEADER]
(
	[export_n] ASC,
	[msg_type] ASC,
	[msg_seq_n] ASC
)
INCLUDE ( 	[sender],
	[msg_status],
	[booking_n],
	[ref_to_prev_msg],
	[pdf_filename]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [inttra_doc_header_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[INTTRA_DOC_HEADER]') AND name = N'inttra_doc_header_idx1')
CREATE NONCLUSTERED INDEX [inttra_doc_header_idx1] ON [dbo].[INTTRA_DOC_HEADER]
(
	[export_n] ASC,
	[msg_seq_n] ASC,
	[msg_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
