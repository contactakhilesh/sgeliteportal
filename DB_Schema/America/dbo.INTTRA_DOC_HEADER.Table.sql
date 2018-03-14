USE [AMERICA]
GO
/****** Object:  Table [dbo].[INTTRA_DOC_HEADER]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTTRA_DOC_HEADER](
	[msg_seq_n] [decimal](18, 0) NOT NULL,
	[msg_ver] [varchar](50) NOT NULL,
	[msg_type] [varchar](50) NOT NULL,
	[msg_dt] [datetime] NOT NULL,
	[doc_id] [varchar](50) NOT NULL,
	[xml_create_dt] [datetime] NOT NULL,
	[sender] [varchar](50) NOT NULL,
	[recipient] [varchar](50) NOT NULL,
	[shipment_id] [varchar](50) NOT NULL,
	[msg_status] [varchar](50) NOT NULL,
	[bkg_create_dt] [datetime] NULL,
	[user_name] [varchar](50) NULL,
	[user_email] [varchar](50) NULL,
	[po_n] [varchar](50) NULL,
	[ref_1] [varchar](50) NULL,
	[shipping_comment] [varchar](2000) NULL,
	[move_type] [varchar](50) NULL,
	[service_type] [varchar](50) NULL,
	[transport_stage] [varchar](50) NULL,
	[transport_mode] [varchar](50) NULL,
	[vessel] [varchar](50) NOT NULL,
	[voyage] [varchar](50) NOT NULL,
	[scac] [varchar](50) NULL,
	[place_rec_id] [varchar](50) NULL,
	[place_rec_name] [varchar](50) NULL,
	[port_load_id] [varchar](50) NULL,
	[port_load_name] [varchar](50) NULL,
	[place_del_id] [varchar](50) NULL,
	[place_del_name] [varchar](50) NULL,
	[port_disc_id] [varchar](50) NULL,
	[port_disc_name] [varchar](50) NULL,
	[etd] [datetime] NULL,
	[eta_dest] [datetime] NULL,
	[booking_n] [varchar](50) NULL,
	[inttra_booking_n] [varchar](50) NULL,
	[bl_n] [varchar](50) NULL,
	[consignee_n] [varchar](50) NULL,
	[contract_n] [varchar](50) NULL,
	[freight_n] [varchar](50) NULL,
	[export_bkg_direct_n] [numeric](18, 0) NULL,
	[cut_off] [datetime] NULL,
	[export_n] [numeric](18, 0) NULL,
	[msg_function] [varchar](50) NULL,
	[doc_msg_name] [varchar](50) NULL,
	[doc_msg_no] [varchar](50) NULL,
	[ref_to_prev_msg] [varchar](50) NULL,
	[equipment_no] [varchar](50) NULL,
	[carrier_ref_no] [varchar](50) NULL,
	[portnet_job_n] [varchar](50) NULL,
	[goods_dest] [varchar](50) NULL,
	[bl_release_off] [varchar](50) NULL,
	[carrier_name] [varchar](50) NULL,
	[event_code] [varchar](50) NULL,
	[event_loc_type] [varchar](50) NULL,
	[event_loc_code] [varchar](50) NULL,
	[event_loc_name] [varchar](50) NULL,
	[event_loc_country] [varchar](50) NULL,
	[event_dt] [datetime] NULL,
	[transport_id] [varchar](50) NULL,
	[transport_id_type] [varchar](50) NULL,
	[event_port] [varchar](2) NULL,
	[dt_qualifier] [varchar](2) NULL,
	[xml_filename] [varchar](250) NULL,
	[pdf_filename] [varchar](250) NULL,
 CONSTRAINT [PK_INTTRA_DOC_HEADER] PRIMARY KEY CLUSTERED 
(
	[msg_seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[INTTRA_DOC_HEADER] TO  SCHEMA OWNER 
GO
