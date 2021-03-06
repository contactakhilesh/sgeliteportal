USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [costcentre_grp](
	[ccgrp_id] [numeric](10, 0) NOT NULL,
	[ccgrp_name] [varchar](50) NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[order_seqno] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
 CONSTRAINT [PK_costcenter_group] PRIMARY KEY CLUSTERED 
(
	[ccgrp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
