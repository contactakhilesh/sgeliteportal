USE [AMERICA]
GO
/****** Object:  Table [dbo].[TEMP_ORDERS]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_ORDERS](
	[total_packages] [numeric](12, 3) NULL,
	[total_wt] [numeric](12, 3) NULL,
	[total_m3] [numeric](12, 4) NULL,
	[userid] [varchar](20) NULL,
	[date_created] [datetime] NULL,
	[product_id] [varchar](20) NULL,
	[prod_text] [varchar](2000) NULL,
	[line_tot_pack_type] [varchar](50) NULL,
	[wt_uom] [varchar](50) NULL,
	[dtl_wtm3_ind] [char](1) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[TEMP_ORDERS] TO  SCHEMA OWNER 
GO
