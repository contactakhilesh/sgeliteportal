USE [AMERICA]
GO
/****** Object:  Table [dbo].[tmp_costcentre_prodgrp]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_costcentre_prodgrp](
	[ccgrp_id] [numeric](10, 0) NOT NULL,
	[prodgrp_id] [numeric](10, 0) NOT NULL,
	[cost_centre] [char](1) NOT NULL,
	[item_charge] [varchar](100) NOT NULL,
	[costcentre_code] [varchar](15) NOT NULL,
	[account_code] [varchar](15) NOT NULL,
	[order_seqno] [int] NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL,
	[PLANT_CODE] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[tmp_costcentre_prodgrp] TO  SCHEMA OWNER 
GO
