USE [appdata]
GO
/****** Object:  Table [dbo].[permit_cost_statement_hd_13Mar2018]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_cost_statement_hd_13Mar2018]
GO
/****** Object:  Table [dbo].[permit_cost_statement_hd_13Mar2018]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_cost_statement_hd_13Mar2018]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_cost_statement_hd_13Mar2018](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cert_type] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[country_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[technical_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_cost_statement_hd_13Mar2018] TO  SCHEMA OWNER 
GO
