USE [appdata]
GO
/****** Object:  Table [dbo].[ex_ap_weekly_ordercount]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[ex_ap_weekly_ordercount]
GO
/****** Object:  Table [dbo].[ex_ap_weekly_ordercount]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ex_ap_weekly_ordercount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ex_ap_weekly_ordercount](
	[start_date] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[end_date] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[week] [int] NOT NULL,
	[order_count] [numeric](10, 0) NULL,
	[ytd] [numeric](18, 0) NULL,
	[year] [numeric](5, 0) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[ex_ap_weekly_ordercount] TO  SCHEMA OWNER 
GO
