USE [appdata]
GO
/****** Object:  Table [dbo].[permit_cost_statement_dt_08jan2018]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_cost_statement_dt_08jan2018]
GO
/****** Object:  Table [dbo].[permit_cost_statement_dt_08jan2018]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_cost_statement_dt_08jan2018]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_cost_statement_dt_08jan2018](
	[row_id] [numeric](18, 0) NOT NULL,
	[product_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cost_statement_dt] [datetime] NOT NULL,
	[validity_period] [int] NOT NULL,
	[expiry_dt] [datetime] NOT NULL,
	[hs_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[match_product_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[criterio] [numeric](5, 2) NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NOT NULL,
	[pref_code] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[origin_cri1] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[origin_cri2] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[origin_cri3] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[certdesc_hscode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_cost_statement_dt_08jan2018] TO  SCHEMA OWNER 
GO
