USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOMESTIC_PRODUCT](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[line_no] [decimal](18, 0) NOT NULL,
	[prod_id] [varchar](20) NOT NULL,
	[prod_name] [varchar](50) NULL,
	[prod_desc] [varchar](300) NULL,
	[tot_net_wt] [decimal](12, 4) NULL,
	[tot_gross_wt] [decimal](12, 4) NULL,
	[net_wt_uom] [varchar](10) NULL,
	[gross_wt_uom] [varchar](10) NULL,
	[tot_pkgs] [decimal](18, 0) NULL,
	[pack_type] [varchar](10) NULL,
	[hazardous_flag] [varchar](2) NULL,
	[imo_class_code] [varchar](7) NULL,
	[undg_n] [varchar](10) NULL,
	[e_contact_name] [varchar](150) NULL,
	[e_contact_number] [varchar](50) NULL,
	[goods_condition] [varchar](50) NULL,
	[damage_flag] [varchar](2) NULL,
	[shortage_wt] [decimal](12, 4) NULL,
	[shortage_qty] [decimal](18, 0) NULL,
	[shortage_remarks] [varchar](200) NULL,
	[marks] [varchar](1000) NULL,
	[des] [varchar](2000) NULL,
	[m3] [decimal](10, 4) NULL,
	[CREATED_BY] [varchar](20) NULL,
	[CREATED_DT] [datetime] NULL,
	[LAST_UPDATED_BY] [varchar](20) NULL,
	[LAST_UPDATED_DT] [datetime] NULL,
	[prodgrp_id] [varchar](20) NULL,
 CONSTRAINT [PK_DOMESTIC_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[domestic_job_n] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
