USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_NOWOOD_PACKING_MATERIAL]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_NOWOOD_PACKING_MATERIAL] DROP CONSTRAINT IF EXISTS [DF_DOC_NOWOOD_PACKING_MATERIAL_header_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_NOWOOD_PACKING_MATERIAL]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_NOWOOD_PACKING_MATERIAL] DROP CONSTRAINT IF EXISTS [DF_DOC_NOWOOD_PACKING_MATERIAL_create_dt]
GO
/****** Object:  Table [dbo].[DOC_NOWOOD_PACKING_MATERIAL]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_NOWOOD_PACKING_MATERIAL]
GO
/****** Object:  Table [dbo].[DOC_NOWOOD_PACKING_MATERIAL]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_NOWOOD_PACKING_MATERIAL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_NOWOOD_PACKING_MATERIAL](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[indent_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sent_dt] [datetime] NULL,
	[sap_sono] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[po_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pr_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[payment_term] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sold_party_name] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sold_party_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_party_name] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_party_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[material_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[packing] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[qty] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[selling_price] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_amount] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_dt] [datetime] NULL,
	[bl_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_from] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_to] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[etd_sin] [datetime] NULL,
	[eta_dest] [datetime] NULL,
	[export_company] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_dt] [datetime] NULL,
	[header_ind] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_NOWOOD_PACKING_MATERIAL] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_NOWOOD_PACKING_MATERIAL] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_NOWOOD_PACKING_MATERIAL] TO [public] AS [dbo]
GO
