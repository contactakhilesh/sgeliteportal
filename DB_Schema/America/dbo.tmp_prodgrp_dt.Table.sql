USE [AMERICA]
GO
/****** Object:  Table [dbo].[tmp_prodgrp_dt]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_prodgrp_dt](
	[prodgrp_id] [numeric](10, 0) NOT NULL,
	[product_id] [varchar](20) NOT NULL,
	[cust_id] [varchar](15) NOT NULL,
	[order_seqno] [int] NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[tmp_prodgrp_dt] TO  SCHEMA OWNER 
GO
