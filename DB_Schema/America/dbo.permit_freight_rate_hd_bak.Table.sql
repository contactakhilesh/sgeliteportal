USE [AMERICA]
GO
/****** Object:  Table [dbo].[permit_freight_rate_hd_bak]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permit_freight_rate_hd_bak](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[country_id] [varchar](10) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[effective_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[permit_freight_rate_hd_bak] TO  SCHEMA OWNER 
GO
