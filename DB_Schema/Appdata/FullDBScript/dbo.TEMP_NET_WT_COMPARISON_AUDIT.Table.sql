USE [appdata]
GO
/****** Object:  Table [dbo].[TEMP_NET_WT_COMPARISON_AUDIT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[TEMP_NET_WT_COMPARISON_AUDIT]
GO
/****** Object:  Table [dbo].[TEMP_NET_WT_COMPARISON_AUDIT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TEMP_NET_WT_COMPARISON_AUDIT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TEMP_NET_WT_COMPARISON_AUDIT](
	[export_n] [numeric](9, 0) NULL,
	[line_n] [int] NULL,
	[product_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sn_net_wt] [numeric](9, 3) NULL,
	[mkgs_net_wt] [numeric](9, 3) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[TEMP_NET_WT_COMPARISON_AUDIT] TO  SCHEMA OWNER 
GO
