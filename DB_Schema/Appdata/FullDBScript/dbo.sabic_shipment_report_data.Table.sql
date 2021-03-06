USE [appdata]
GO
/****** Object:  Table [dbo].[sabic_shipment_report_data]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[sabic_shipment_report_data]
GO
/****** Object:  Table [dbo].[sabic_shipment_report_data]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sabic_shipment_report_data]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sabic_shipment_report_data](
	[seq_no] [numeric](18, 0) NOT NULL,
	[received_date] [datetime] NOT NULL,
	[delivery_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipment_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nomination_date] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_ord_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sold_to_party] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[po_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sold_to_party_name] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_to_party_name] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prod_desc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[material_cd] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[net_wt] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_20] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_40] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[loading_date] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[act_gds_mvt_date] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[othr_gds_mvt_stats] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipm_end_time] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_gds_mvt_stats] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[batch] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bill_of_lading] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_id] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[external_id_1] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[name_of_forwarding_agent] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_no] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fd_no] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[payment_terms] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[incoterms] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[route] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipment_route_desc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[incoterms_2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_sabic_shipment_report_data] PRIMARY KEY CLUSTERED 
(
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[sabic_shipment_report_data] TO  SCHEMA OWNER 
GO
