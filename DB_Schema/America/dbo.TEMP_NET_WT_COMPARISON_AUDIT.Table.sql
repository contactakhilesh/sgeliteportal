USE [AMERICA]
GO
/****** Object:  Table [dbo].[TEMP_NET_WT_COMPARISON_AUDIT]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_NET_WT_COMPARISON_AUDIT](
	[export_n] [numeric](9, 0) NULL,
	[line_n] [int] NULL,
	[product_id] [varchar](50) NULL,
	[sn_net_wt] [numeric](9, 3) NULL,
	[mkgs_net_wt] [numeric](9, 3) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[TEMP_NET_WT_COMPARISON_AUDIT] TO  SCHEMA OWNER 
GO
