USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_prodgrp_hd](
	[prodgrp_id] [numeric](10, 0) NOT NULL,
	[prodgrp_name] [varchar](100) NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[order_seqno] [int] NULL,
	[created_dt] [datetime] NOT NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL
) ON [PRIMARY]

GO
