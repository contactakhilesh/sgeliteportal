USE [appdata]
GO
/****** Object:  Table [dbo].[tmp_prodgrp_dt]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_prodgrp_dt]
GO
/****** Object:  Table [dbo].[tmp_prodgrp_dt]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_prodgrp_dt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_prodgrp_dt](
	[prodgrp_id] [numeric](10, 0) NOT NULL,
	[product_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_id] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[order_seqno] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_prodgrp_dt] TO  SCHEMA OWNER 
GO
