USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rpt_inv_sum](
	[sum_seq_n] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[cust_id] [varchar](10) NULL,
	[date_from] [datetime] NULL,
	[date_to] [datetime] NULL
) ON [PRIMARY]

GO
