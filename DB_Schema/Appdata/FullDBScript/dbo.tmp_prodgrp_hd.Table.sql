USE [appdata]
GO
/****** Object:  Table [dbo].[tmp_prodgrp_hd]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_prodgrp_hd]
GO
/****** Object:  Table [dbo].[tmp_prodgrp_hd]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_prodgrp_hd]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_prodgrp_hd](
	[prodgrp_id] [numeric](10, 0) NOT NULL,
	[prodgrp_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[order_seqno] [int] NULL,
	[created_dt] [datetime] NOT NULL,
	[modified_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_dt] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_prodgrp_hd] TO  SCHEMA OWNER 
GO
