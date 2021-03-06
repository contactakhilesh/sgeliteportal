USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_LIST_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_LIST_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_LIST_DET_line_tot]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_LIST_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_LIST_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_LIST_DET_line_unit_qty]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_LIST_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_LIST_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_LIST_DET_unit_price]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_LIST_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_LIST_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_LIST_DET_tot_m3_uom]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_LIST_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_LIST_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_LIST_DET_net_wt_uom]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_LIST_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_LIST_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_LIST_DET_gross_wt_uom]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_LIST_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_PACKING_LIST_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_PACKING_LIST_DET_doc_head_no]
GO
/****** Object:  Table [dbo].[DOC_PACKING_LIST_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_PACKING_LIST_DET]
GO
/****** Object:  Table [dbo].[DOC_PACKING_LIST_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_LIST_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_PACKING_LIST_DET](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[line_no] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[scc_ref_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[scc_ref_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_seq_no] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seal_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[alt_cont_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[alt_seal_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_packages] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pack_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gross_wt] [numeric](18, 3) NULL,
	[net_wt] [numeric](18, 3) NULL,
	[tot_m3] [numeric](12, 4) NULL,
	[gross_wt_uom] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[net_wt_uom] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_m3_uom] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[unit_price] [numeric](18, 5) NULL,
	[currency] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[product_desc1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mkgs1] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mkgs2] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mkgs3] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mkgs4] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mkgs5] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mkgs6] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mkgs7] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mkgs8] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mkgs9] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mkgs10] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mkgs11] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mkgs12] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mkgs13] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mkgs14] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mkgs15] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prod_desc] [varchar](6000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[line_unit_qty] [numeric](18, 3) NULL,
	[scc_hbl_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[chk_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[origin_criterion] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inv_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inv_dt] [datetime] NULL,
	[product_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mkgs_all] [varchar](800) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[unit_price_uom] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[line_tot] [numeric](18, 2) NULL,
	[kg_qty] [numeric](18, 3) NULL,
	[kg_unit_price] [numeric](18, 5) NULL,
	[kg_uom] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lb_qty] [numeric](18, 3) NULL,
	[lb_unit_price] [numeric](18, 5) NULL,
	[lb_uom] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lt_gross_wt] [numeric](18, 3) NULL,
	[lt_gross_wt_uom] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lt_net_wt] [numeric](18, 3) NULL,
	[lt_net_wt_uom] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dr_gross_wt] [numeric](18, 3) NULL,
	[dr_gross_wt_uom] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dr_net_wt] [numeric](18, 3) NULL,
	[dr_net_wt_uom] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[code] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_origin] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[check_pack] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[check_gross] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_PACKING_LIST_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_PACKING_LIST_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_PACKING_LIST_DET] TO [public] AS [dbo]
GO
