USE [appdata]
GO
/****** Object:  Table [dbo].[permit_freight_rate_hd_102016]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_freight_rate_hd_102016]
GO
/****** Object:  Table [dbo].[permit_freight_rate_hd_102016]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_freight_rate_hd_102016]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_freight_rate_hd_102016](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[country_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[effective_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_dt] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_freight_rate_hd_102016] TO  SCHEMA OWNER 
GO
