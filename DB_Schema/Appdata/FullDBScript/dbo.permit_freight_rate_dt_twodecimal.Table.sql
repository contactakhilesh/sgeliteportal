USE [appdata]
GO
/****** Object:  Table [dbo].[permit_freight_rate_dt_twodecimal]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_freight_rate_dt_twodecimal]
GO
/****** Object:  Table [dbo].[permit_freight_rate_dt_twodecimal]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_freight_rate_dt_twodecimal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_freight_rate_dt_twodecimal](
	[row_id] [numeric](18, 0) NOT NULL,
	[pol_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[pod_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[amt_20] [numeric](10, 2) NULL,
	[amt_40] [numeric](10, 2) NULL,
	[freight] [numeric](5, 4) NULL,
	[insurance] [numeric](5, 4) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_freight_rate_dt_twodecimal] TO  SCHEMA OWNER 
GO
