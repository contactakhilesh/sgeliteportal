USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [prodgrp_hd](
	[prodgrp_id] [numeric](10, 0) NOT NULL,
	[prodgrp_name] [varchar](100) NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[order_seqno] [int] NULL,
	[created_dt] [datetime] NOT NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
 CONSTRAINT [PK_prodgrp_hd] PRIMARY KEY CLUSTERED 
(
	[prodgrp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
