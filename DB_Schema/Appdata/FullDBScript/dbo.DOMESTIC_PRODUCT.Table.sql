USE [appdata]
GO
/****** Object:  Trigger [TRG_DPROD_JOBS_UPDATED]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TRG_DPROD_JOBS_UPDATED]
GO
/****** Object:  Table [dbo].[DOMESTIC_PRODUCT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOMESTIC_PRODUCT]
GO
/****** Object:  Table [dbo].[DOMESTIC_PRODUCT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOMESTIC_PRODUCT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOMESTIC_PRODUCT](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[line_no] [decimal](18, 0) NOT NULL,
	[prod_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[prod_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prod_desc] [varchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_net_wt] [decimal](12, 4) NULL,
	[tot_gross_wt] [decimal](12, 4) NULL,
	[net_wt_uom] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gross_wt_uom] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_pkgs] [decimal](18, 0) NULL,
	[pack_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hazardous_flag] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[imo_class_code] [varchar](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[undg_n] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[e_contact_name] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[e_contact_number] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[goods_condition] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[damage_flag] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shortage_wt] [decimal](12, 4) NULL,
	[shortage_qty] [decimal](18, 0) NULL,
	[shortage_remarks] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[marks] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[des] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[m3] [decimal](10, 4) NULL,
	[CREATED_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATED_DT] [datetime] NULL,
	[LAST_UPDATED_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LAST_UPDATED_DT] [datetime] NULL,
	[prodgrp_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOMESTIC_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[domestic_job_n] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOMESTIC_PRODUCT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOMESTIC_PRODUCT] TO [public] AS [dbo]
GO
