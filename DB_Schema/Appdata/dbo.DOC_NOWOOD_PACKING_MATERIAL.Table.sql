USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_NOWOOD_PACKING_MATERIAL](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[indent_no] [varchar](20) NULL,
	[sent_dt] [datetime] NULL,
	[sap_sono] [varchar](20) NULL,
	[po_no] [varchar](50) NULL,
	[pr_no] [varchar](20) NULL,
	[payment_term] [varchar](50) NULL,
	[sold_party_name] [varchar](80) NULL,
	[sold_party_no] [varchar](20) NULL,
	[ship_party_name] [varchar](80) NULL,
	[ship_party_no] [varchar](20) NULL,
	[material_name] [varchar](50) NULL,
	[packing] [varchar](50) NULL,
	[qty] [varchar](30) NULL,
	[selling_price] [varchar](50) NULL,
	[tot_amount] [varchar](50) NULL,
	[bl_dt] [datetime] NULL,
	[bl_no] [varchar](30) NULL,
	[country_from] [varchar](80) NULL,
	[country_to] [varchar](80) NULL,
	[vessel] [varchar](50) NULL,
	[etd_sin] [datetime] NULL,
	[eta_dest] [datetime] NULL,
	[export_company] [varchar](200) NULL,
	[create_dt] [datetime] NULL,
	[header_ind] [varchar](20) NULL,
 CONSTRAINT [PK_DOC_NOWOOD_PACKING_MATERIAL] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
