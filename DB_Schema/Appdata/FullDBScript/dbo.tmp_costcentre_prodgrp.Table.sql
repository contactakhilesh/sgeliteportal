USE [appdata]
GO
/****** Object:  Table [dbo].[tmp_costcentre_prodgrp]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_costcentre_prodgrp]
GO
/****** Object:  Table [dbo].[tmp_costcentre_prodgrp]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_costcentre_prodgrp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_costcentre_prodgrp](
	[ccgrp_id] [numeric](10, 0) NOT NULL,
	[prodgrp_id] [numeric](10, 0) NOT NULL,
	[cost_centre] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[item_charge] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[costcentre_code] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[account_code] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[order_seqno] [int] NOT NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[modified_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_dt] [datetime] NULL,
	[PLANT_CODE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_costcentre_prodgrp] TO  SCHEMA OWNER 
GO
