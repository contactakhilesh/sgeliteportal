USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_XOM_HEADER](
	[seq_n] [numeric](18, 0) NOT NULL,
	[idoc_n] [varchar](50) NULL,
	[sent_dt] [datetime] NULL,
	[ref_1] [varchar](50) NULL,
	[route] [varchar](50) NULL,
	[sc_env] [varchar](50) NULL,
	[tf_code] [varchar](50) NULL,
	[sales_order_ref] [varchar](10) NULL,
	[notify_partner_id] [varchar](20) NULL,
	[msg_seq_n] [numeric](18, 0) NULL,
	[purchase_order_line_n] [varchar](100) NULL,
	[shipment_id] [varchar](50) NULL,
	[po_no] [varchar](50) NULL,
	[req_del_dt] [varchar](10) NULL,
	[proposed_del_dt] [varchar](10) NULL,
	[trans_plan_dt] [varchar](10) NULL,
	[notify_partner_name] [varchar](100) NULL,
	[notify_partner_email] [varchar](150) NULL,
	[sap_cutoff_point] [varchar](50) NULL,
	[exxon_transmit_status] [varchar](50) NULL,
	[ship_cost_main] [varchar](10) NULL,
	[ship_cost_prelim] [varchar](10) NULL,
	[move_type] [varchar](10) NULL,
	[sap_disc_point] [varchar](50) NULL,
 CONSTRAINT [PK_XML_XOM_HEADER] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
