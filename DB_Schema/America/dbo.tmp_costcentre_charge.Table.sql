USE [AMERICA]
GO
/****** Object:  Table [dbo].[tmp_costcentre_charge]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_costcentre_charge](
	[ccgrp_id] [numeric](10, 0) NOT NULL,
	[chgcode_id] [varchar](10) NOT NULL,
	[order_seqno] [int] NULL,
	[created_by] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
	[ISSAMPLEORDERCHG] [char](1) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[tmp_costcentre_charge] TO  SCHEMA OWNER 
GO
