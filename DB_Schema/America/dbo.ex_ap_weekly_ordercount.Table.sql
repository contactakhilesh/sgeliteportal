USE [AMERICA]
GO
/****** Object:  Table [dbo].[ex_ap_weekly_ordercount]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ex_ap_weekly_ordercount](
	[start_date] [varchar](50) NOT NULL,
	[end_date] [varchar](50) NOT NULL,
	[week] [int] NOT NULL,
	[order_count] [numeric](10, 0) NULL,
	[ytd] [numeric](18, 0) NULL,
	[year] [numeric](5, 0) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[ex_ap_weekly_ordercount] TO  SCHEMA OWNER 
GO
