USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_PACK_GENERAL_ENTRY_SECONDARY]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_PACK_GENERAL_ENTRY_SECONDARY](
	[doc_head_no] [varchar](30) NOT NULL,
	[doc_title] [varchar](200) NULL,
	[deal_dt] [datetime] NULL,
	[inco_terms] [varchar](50) NULL,
	[shipper_ref_no] [varchar](50) NULL,
	[consignee_attention] [varchar](50) NULL,
	[shipper_attention] [varchar](50) NULL,
	[order_ref] [varchar](50) NULL,
	[loading_range] [varchar](50) NULL,
	[packing] [varchar](50) NULL,
	[delivery_basis] [varchar](50) NULL,
	[land_port] [varchar](50) NULL,
	[discharge_port] [varchar](50) NULL,
	[payment_terms] [varchar](50) NULL,
	[title_transfer] [varchar](50) NULL,
	[quantity] [varchar](60) NULL,
	[loading_volume] [varchar](100) NULL,
	[terms] [varchar](50) NULL,
	[vessel] [varchar](50) NULL,
	[attention] [varchar](60) NULL,
	[fax_no] [varchar](30) NULL,
	[country_of_origin] [varchar](100) NULL,
	[avg_freight] [varchar](50) NULL,
	[seller] [varchar](90) NULL,
	[buyer] [varchar](90) NULL,
	[consignee_att] [varchar](100) NULL,
	[shipper_att] [varchar](120) NULL,
	[r_vessel] [varchar](50) NULL,
	[load_date_range] [varchar](50) NULL,
	[con_msg] [varchar](5) NULL,
	[prod_spec] [varchar](50) NULL,
	[price_change_dt] [datetime] NULL,
	[price_bef_date] [datetime] NULL,
	[amt_bef_date] [datetime] NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_PACK_GENERAL_ENTRY_SECONDARY] TO  SCHEMA OWNER 
GO
