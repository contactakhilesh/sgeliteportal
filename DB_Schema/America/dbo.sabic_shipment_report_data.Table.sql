USE [AMERICA]
GO
/****** Object:  Table [dbo].[sabic_shipment_report_data]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sabic_shipment_report_data](
	[seq_no] [numeric](18, 0) NOT NULL,
	[received_date] [datetime] NOT NULL,
	[delivery_no] [varchar](20) NULL,
	[shipment_no] [varchar](20) NULL,
	[nomination_date] [varchar](20) NULL,
	[cust_ord_no] [varchar](40) NULL,
	[sold_to_party] [varchar](30) NULL,
	[po_no] [varchar](40) NULL,
	[sold_to_party_name] [varchar](70) NULL,
	[ship_to_party_name] [varchar](70) NULL,
	[prod_desc] [varchar](50) NULL,
	[material_cd] [varchar](20) NULL,
	[net_wt] [varchar](20) NULL,
	[cont_20] [varchar](9) NULL,
	[cont_40] [varchar](9) NULL,
	[loading_date] [varchar](20) NULL,
	[act_gds_mvt_date] [varchar](20) NULL,
	[othr_gds_mvt_stats] [char](1) NULL,
	[shipm_end_time] [varchar](20) NULL,
	[tot_gds_mvt_stats] [char](1) NULL,
	[batch] [varchar](20) NULL,
	[bill_of_lading] [varchar](70) NULL,
	[cont_id] [varchar](70) NULL,
	[external_id_1] [varchar](20) NULL,
	[name_of_forwarding_agent] [varchar](70) NULL,
	[lc_no] [varchar](70) NULL,
	[fd_no] [varchar](70) NULL,
	[payment_terms] [varchar](250) NULL,
	[incoterms] [varchar](40) NULL,
	[route] [varchar](20) NULL,
	[shipment_route_desc] [varchar](100) NULL,
	[incoterms_2] [varchar](70) NULL,
 CONSTRAINT [PK_sabic_shipment_report_data] PRIMARY KEY CLUSTERED 
(
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[sabic_shipment_report_data] TO  SCHEMA OWNER 
GO
