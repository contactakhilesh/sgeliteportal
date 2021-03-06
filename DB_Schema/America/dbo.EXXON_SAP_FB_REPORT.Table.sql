USE [AMERICA]
GO
/****** Object:  Table [dbo].[EXXON_SAP_FB_REPORT]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXXON_SAP_FB_REPORT](
	[sales_doc] [varchar](40) NULL,
	[division] [numeric](10, 0) NULL,
	[created_on] [datetime] NULL,
	[trans_plan_dt] [datetime] NULL,
	[mat_avlb_dt] [datetime] NULL,
	[plan_load_dt] [datetime] NULL,
	[so_req_del_dt] [datetime] NULL,
	[plant] [varchar](20) NULL,
	[ord_qty] [numeric](11, 3) NULL,
	[sales_unit] [varchar](5) NULL,
	[mat_desc] [varchar](50) NULL,
	[material] [numeric](15, 0) NULL,
	[ship_to_name] [varchar](50) NULL,
	[sold_to_name] [varchar](50) NULL,
	[ship_cond] [numeric](10, 0) NULL,
	[ship_cond_desc] [varchar](50) NULL,
	[route_desc] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EXXON_SAP_FB_REPORT] TO  SCHEMA OWNER 
GO
