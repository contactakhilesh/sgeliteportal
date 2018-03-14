USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_PACKING_LIST_DET]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_PACKING_LIST_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[line_no] [varchar](10) NOT NULL,
	[scc_ref_no] [varchar](20) NULL,
	[scc_ref_type] [varchar](20) NULL,
	[cont_seq_no] [varchar](10) NULL,
	[cont_no] [varchar](30) NULL,
	[seal_no] [varchar](30) NULL,
	[alt_cont_no] [varchar](20) NULL,
	[alt_seal_no] [varchar](20) NULL,
	[tot_packages] [varchar](40) NULL,
	[pack_type] [varchar](50) NULL,
	[gross_wt] [numeric](18, 3) NULL,
	[net_wt] [numeric](18, 3) NULL,
	[tot_m3] [numeric](12, 4) NULL,
	[gross_wt_uom] [varchar](80) NULL,
	[net_wt_uom] [varchar](80) NULL,
	[tot_m3_uom] [varchar](80) NULL,
	[unit_price] [numeric](18, 5) NULL,
	[currency] [varchar](20) NULL,
	[product_desc1] [varchar](50) NULL,
	[mkgs1] [varchar](2) NULL,
	[mkgs2] [varchar](2) NULL,
	[mkgs3] [varchar](2) NULL,
	[mkgs4] [varchar](2) NULL,
	[mkgs5] [varchar](2) NULL,
	[mkgs6] [varchar](2) NULL,
	[mkgs7] [varchar](2) NULL,
	[mkgs8] [varchar](2) NULL,
	[mkgs9] [varchar](2) NULL,
	[mkgs10] [varchar](2) NULL,
	[mkgs11] [varchar](2) NULL,
	[mkgs12] [varchar](2) NULL,
	[mkgs13] [varchar](2) NULL,
	[mkgs14] [varchar](2) NULL,
	[mkgs15] [varchar](2) NULL,
	[prod_desc] [varchar](6000) NULL,
	[line_unit_qty] [numeric](18, 3) NULL,
	[scc_hbl_n] [varchar](50) NULL,
	[chk_ind] [varchar](2) NULL,
	[origin_criterion] [varchar](80) NULL,
	[inv_no] [varchar](30) NULL,
	[inv_dt] [datetime] NULL,
	[product_id] [varchar](20) NULL,
	[mkgs_all] [varchar](800) NULL,
	[unit_price_uom] [varchar](20) NULL,
	[line_tot] [numeric](18, 2) NULL,
	[kg_qty] [numeric](18, 3) NULL,
	[kg_unit_price] [numeric](18, 5) NULL,
	[kg_uom] [varchar](20) NULL,
	[lb_qty] [numeric](18, 3) NULL,
	[lb_unit_price] [numeric](18, 5) NULL,
	[lb_uom] [varchar](20) NULL,
	[lt_gross_wt] [numeric](18, 3) NULL,
	[lt_gross_wt_uom] [varchar](50) NULL,
	[lt_net_wt] [numeric](18, 3) NULL,
	[lt_net_wt_uom] [varchar](50) NULL,
	[dr_gross_wt] [numeric](18, 3) NULL,
	[dr_gross_wt_uom] [varchar](50) NULL,
	[dr_net_wt] [numeric](18, 3) NULL,
	[dr_net_wt_uom] [varchar](50) NULL,
	[code] [varchar](100) NULL,
	[country_origin] [varchar](100) NULL,
	[check_pack] [varchar](1) NULL,
	[check_gross] [varchar](1) NULL,
 CONSTRAINT [PK_DOC_PACKING_LIST_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_PACKING_LIST_DET] TO  SCHEMA OWNER 
GO
