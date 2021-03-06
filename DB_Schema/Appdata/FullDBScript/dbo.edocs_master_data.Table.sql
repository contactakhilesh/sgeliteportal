USE [appdata]
GO
/****** Object:  Table [dbo].[edocs_master_data]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[edocs_master_data]
GO
/****** Object:  Table [dbo].[edocs_master_data]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[edocs_master_data]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[edocs_master_data](
	[scc_job_no] [decimal](18, 0) NOT NULL,
	[scc_ref_no] [decimal](18, 0) NOT NULL,
	[scc_ref_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_ord_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bkg_ref_n] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[order_value_currency] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[order_value] [decimal](18, 2) NULL,
	[lc_no] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_desc] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[applicant1] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[applicant2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[applicant3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[applicant4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[applicant5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[applicant6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[issuing_bank] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[draft_at] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[o_b_dt] [datetime] NULL,
	[vessel] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pol] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pod] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[marking] [varchar](800) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_pkgs] [decimal](18, 0) NULL,
	[pack_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_gross_wt] [decimal](18, 3) NULL,
	[gross_wt_uom] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_m3] [decimal](18, 4) NULL,
	[cr_agent_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NULL,
	[updated_by] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[updated_dt] [datetime] NULL,
	[pol_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pod_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_pallet] [decimal](18, 0) NULL,
	[fin_dest] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_net_wt] [numeric](18, 3) NULL,
	[fin_dest_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[so_prefix] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[so_suffix] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_edocs_master_data] PRIMARY KEY CLUSTERED 
(
	[scc_job_no] ASC,
	[scc_ref_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[edocs_master_data] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[edocs_master_data] TO [public] AS [dbo]
GO
