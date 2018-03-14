USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_prodgrp_dt](
	[prodgrp_id] [numeric](10, 0) NOT NULL,
	[product_id] [varchar](20) NOT NULL,
	[cust_id] [varchar](15) NOT NULL,
	[order_seqno] [int] NOT NULL
) ON [PRIMARY]

GO
