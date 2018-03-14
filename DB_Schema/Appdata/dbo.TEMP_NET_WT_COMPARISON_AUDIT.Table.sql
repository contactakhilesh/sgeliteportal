USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TEMP_NET_WT_COMPARISON_AUDIT](
	[export_n] [numeric](9, 0) NULL,
	[line_n] [int] NULL,
	[product_id] [varchar](50) NULL,
	[sn_net_wt] [numeric](9, 3) NULL,
	[mkgs_net_wt] [numeric](9, 3) NULL
) ON [PRIMARY]

GO
