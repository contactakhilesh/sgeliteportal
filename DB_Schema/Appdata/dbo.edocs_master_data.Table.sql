USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [edocs_master_data](
	[scc_job_no] [decimal](18, 0) NOT NULL,
	[scc_ref_no] [decimal](18, 0) NOT NULL,
	[scc_ref_type] [varchar](20) NULL,
	[cust_ord_no] [varchar](40) NULL,
	[bkg_ref_n] [varchar](40) NULL,
	[order_value_currency] [varchar](10) NULL,
	[order_value] [decimal](18, 2) NULL,
	[lc_no] [varchar](70) NULL,
	[lc_desc] [varchar](2000) NULL,
	[applicant1] [varchar](500) NULL,
	[applicant2] [varchar](70) NULL,
	[applicant3] [varchar](70) NULL,
	[applicant4] [varchar](70) NULL,
	[applicant5] [varchar](70) NULL,
	[applicant6] [varchar](70) NULL,
	[issuing_bank] [varchar](500) NULL,
	[draft_at] [varchar](150) NULL,
	[o_b_dt] [datetime] NULL,
	[vessel] [varchar](30) NULL,
	[voyage] [varchar](20) NULL,
	[pol] [varchar](40) NULL,
	[pod] [varchar](40) NULL,
	[marking] [varchar](800) NULL,
	[tot_pkgs] [decimal](18, 0) NULL,
	[pack_type] [varchar](20) NULL,
	[tot_gross_wt] [decimal](18, 3) NULL,
	[gross_wt_uom] [varchar](10) NULL,
	[tot_m3] [decimal](18, 4) NULL,
	[cr_agent_id] [varchar](10) NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NULL,
	[updated_by] [varchar](30) NULL,
	[updated_dt] [datetime] NULL,
	[pol_id] [varchar](10) NULL,
	[pod_id] [varchar](10) NULL,
	[tot_pallet] [decimal](18, 0) NULL,
	[fin_dest] [varchar](40) NULL,
	[tot_net_wt] [numeric](18, 3) NULL,
	[fin_dest_id] [varchar](10) NULL,
	[so_prefix] [varchar](10) NULL,
	[so_suffix] [varchar](10) NULL,
 CONSTRAINT [PK_edocs_master_data] PRIMARY KEY CLUSTERED 
(
	[scc_job_no] ASC,
	[scc_ref_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
