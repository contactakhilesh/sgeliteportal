USE [appdata]
GO
/****** Object:  Index [IND_xml_xom_header_1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IND_xml_xom_header_1] ON [dbo].[XML_XOM_HEADER]
GO
/****** Object:  Index [_dta_index_XML_XOM_HEADER_7_1795537480__K4_K3D_8_9_14_15_16]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_XML_XOM_HEADER_7_1795537480__K4_K3D_8_9_14_15_16] ON [dbo].[XML_XOM_HEADER]
GO
/****** Object:  Index [_dta_index_XML_XOM_HEADER_11_1795537480__K6_K4_1_3_8_9_14_15_16]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_XML_XOM_HEADER_11_1795537480__K6_K4_1_3_8_9_14_15_16] ON [dbo].[XML_XOM_HEADER]
GO
/****** Object:  Index [_dta_index_XML_XOM_HEADER_11_1795537480__K4_K3D_K6_K8_5_17]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_XML_XOM_HEADER_11_1795537480__K4_K3D_K6_K8_5_17] ON [dbo].[XML_XOM_HEADER]
GO
/****** Object:  Index [_dta_index_XML_XOM_HEADER_11_1795537480__K4_K3_8_9_14_15_16]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_XML_XOM_HEADER_11_1795537480__K4_K3_8_9_14_15_16] ON [dbo].[XML_XOM_HEADER]
GO
/****** Object:  Index [_dta_index_XML_XOM_HEADER_11_1795537480__K4_K3_5_6_8_9_10_14_15_16]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_XML_XOM_HEADER_11_1795537480__K4_K3_5_6_8_9_10_14_15_16] ON [dbo].[XML_XOM_HEADER]
GO
/****** Object:  Table [dbo].[XML_XOM_HEADER]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[XML_XOM_HEADER]
GO
/****** Object:  Table [dbo].[XML_XOM_HEADER]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XML_XOM_HEADER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XML_XOM_HEADER](
	[seq_n] [numeric](18, 0) NOT NULL,
	[idoc_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sent_dt] [datetime] NULL,
	[ref_1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[route] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sc_env] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tf_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sales_order_ref] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[notify_partner_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[msg_seq_n] [numeric](18, 0) NULL,
	[purchase_order_line_n] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipment_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[po_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[req_del_dt] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[proposed_del_dt] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[trans_plan_dt] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[notify_partner_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[notify_partner_email] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sap_cutoff_point] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exxon_transmit_status] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_cost_main] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_cost_prelim] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[move_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sap_disc_point] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_XML_XOM_HEADER] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[XML_XOM_HEADER] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[XML_XOM_HEADER] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_XML_XOM_HEADER_11_1795537480__K4_K3_5_6_8_9_10_14_15_16]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_XOM_HEADER]') AND name = N'_dta_index_XML_XOM_HEADER_11_1795537480__K4_K3_5_6_8_9_10_14_15_16')
CREATE NONCLUSTERED INDEX [_dta_index_XML_XOM_HEADER_11_1795537480__K4_K3_5_6_8_9_10_14_15_16] ON [dbo].[XML_XOM_HEADER]
(
	[ref_1] ASC,
	[sent_dt] ASC
)
INCLUDE ( 	[route],
	[sc_env],
	[sales_order_ref],
	[notify_partner_id],
	[msg_seq_n],
	[req_del_dt],
	[proposed_del_dt],
	[trans_plan_dt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_XML_XOM_HEADER_11_1795537480__K4_K3_8_9_14_15_16]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_XOM_HEADER]') AND name = N'_dta_index_XML_XOM_HEADER_11_1795537480__K4_K3_8_9_14_15_16')
CREATE NONCLUSTERED INDEX [_dta_index_XML_XOM_HEADER_11_1795537480__K4_K3_8_9_14_15_16] ON [dbo].[XML_XOM_HEADER]
(
	[ref_1] ASC,
	[sent_dt] ASC
)
INCLUDE ( 	[sales_order_ref],
	[notify_partner_id],
	[req_del_dt],
	[proposed_del_dt],
	[trans_plan_dt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_XML_XOM_HEADER_11_1795537480__K4_K3D_K6_K8_5_17]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_XOM_HEADER]') AND name = N'_dta_index_XML_XOM_HEADER_11_1795537480__K4_K3D_K6_K8_5_17')
CREATE NONCLUSTERED INDEX [_dta_index_XML_XOM_HEADER_11_1795537480__K4_K3D_K6_K8_5_17] ON [dbo].[XML_XOM_HEADER]
(
	[ref_1] ASC,
	[sent_dt] DESC,
	[sc_env] ASC,
	[sales_order_ref] ASC
)
INCLUDE ( 	[route],
	[notify_partner_name]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_XML_XOM_HEADER_11_1795537480__K6_K4_1_3_8_9_14_15_16]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_XOM_HEADER]') AND name = N'_dta_index_XML_XOM_HEADER_11_1795537480__K6_K4_1_3_8_9_14_15_16')
CREATE NONCLUSTERED INDEX [_dta_index_XML_XOM_HEADER_11_1795537480__K6_K4_1_3_8_9_14_15_16] ON [dbo].[XML_XOM_HEADER]
(
	[sc_env] ASC,
	[ref_1] ASC
)
INCLUDE ( 	[seq_n],
	[sent_dt],
	[sales_order_ref],
	[notify_partner_id],
	[req_del_dt],
	[proposed_del_dt],
	[trans_plan_dt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_XML_XOM_HEADER_7_1795537480__K4_K3D_8_9_14_15_16]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_XOM_HEADER]') AND name = N'_dta_index_XML_XOM_HEADER_7_1795537480__K4_K3D_8_9_14_15_16')
CREATE NONCLUSTERED INDEX [_dta_index_XML_XOM_HEADER_7_1795537480__K4_K3D_8_9_14_15_16] ON [dbo].[XML_XOM_HEADER]
(
	[ref_1] ASC,
	[sent_dt] DESC
)
INCLUDE ( 	[sales_order_ref],
	[notify_partner_id],
	[req_del_dt],
	[proposed_del_dt],
	[trans_plan_dt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IND_xml_xom_header_1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XML_XOM_HEADER]') AND name = N'IND_xml_xom_header_1')
CREATE NONCLUSTERED INDEX [IND_xml_xom_header_1] ON [dbo].[XML_XOM_HEADER]
(
	[notify_partner_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
GO
