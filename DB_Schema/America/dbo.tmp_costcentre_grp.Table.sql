USE [AMERICA]
GO
/****** Object:  Table [dbo].[tmp_costcentre_grp]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_costcentre_grp](
	[ccgrp_id] [numeric](10, 0) NOT NULL,
	[ccgrp_name] [varchar](50) NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[order_seqno] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[modified_by] [varchar](10) NULL,
	[modified_dt] [datetime] NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[tmp_costcentre_grp] TO  SCHEMA OWNER 
GO
