USE [appdata]
GO
/****** Object:  Index [temp_cost_stmt_idx]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [temp_cost_stmt_idx] ON [dbo].[temp_cost_stmt]
GO
/****** Object:  Table [dbo].[temp_cost_stmt]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp_cost_stmt]
GO
/****** Object:  Table [dbo].[temp_cost_stmt]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_cost_stmt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp_cost_stmt](
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[product_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comp_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_type] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[technical_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cost_statement_dt] [datetime] NULL,
	[expiry_dt] [datetime] NULL,
	[hs_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[criterio] [numeric](5, 2) NULL,
	[origin_cri1] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[origin_cri2] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[origin_cri3] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[certdesc_hscode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp_cost_stmt] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [temp_cost_stmt_idx]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[temp_cost_stmt]') AND name = N'temp_cost_stmt_idx')
CREATE UNIQUE NONCLUSTERED INDEX [temp_cost_stmt_idx] ON [dbo].[temp_cost_stmt]
(
	[cust_id] ASC,
	[cert_type] ASC,
	[country] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
