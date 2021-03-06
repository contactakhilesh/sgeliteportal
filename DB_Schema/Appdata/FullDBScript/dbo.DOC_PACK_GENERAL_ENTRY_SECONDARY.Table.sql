USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_PACK_GENERAL_ENTRY_SECONDARY]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_PACK_GENERAL_ENTRY_SECONDARY]
GO
/****** Object:  Table [dbo].[DOC_PACK_GENERAL_ENTRY_SECONDARY]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACK_GENERAL_ENTRY_SECONDARY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_PACK_GENERAL_ENTRY_SECONDARY](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[doc_title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[deal_dt] [datetime] NULL,
	[inco_terms] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_attention] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_attention] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[order_ref] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[loading_range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[packing] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[delivery_basis] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[land_port] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[discharge_port] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[payment_terms] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[title_transfer] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[quantity] [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[loading_volume] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[terms] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[attention] [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fax_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_of_origin] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[avg_freight] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seller] [varchar](90) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[buyer] [varchar](90) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_att] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_att] [varchar](120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[r_vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[load_date_range] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[con_msg] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prod_spec] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[price_change_dt] [datetime] NULL,
	[price_bef_date] [datetime] NULL,
	[amt_bef_date] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_PACK_GENERAL_ENTRY_SECONDARY] TO  SCHEMA OWNER 
GO
