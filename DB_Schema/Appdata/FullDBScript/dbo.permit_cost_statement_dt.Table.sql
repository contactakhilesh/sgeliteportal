USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_cost_statement_dt]') AND type in (N'U'))
ALTER TABLE [dbo].[permit_cost_statement_dt] DROP CONSTRAINT IF EXISTS [FK_permit_cost_statement_dt_row_id]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_cost_statement_dt]') AND type in (N'U'))
ALTER TABLE [dbo].[permit_cost_statement_dt] DROP CONSTRAINT IF EXISTS [DF_pcs_dt_created_dt]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_cost_statement_dt]') AND type in (N'U'))
ALTER TABLE [dbo].[permit_cost_statement_dt] DROP CONSTRAINT IF EXISTS [DF_pcs_match_product_by]
GO
/****** Object:  Index [permit_cost_statement_dt_idx1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [permit_cost_statement_dt_idx1] ON [dbo].[permit_cost_statement_dt]
GO
/****** Object:  Table [dbo].[permit_cost_statement_dt]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_cost_statement_dt]
GO
/****** Object:  Table [dbo].[permit_cost_statement_dt]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_cost_statement_dt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_cost_statement_dt](
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
	[certdesc_hscode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_permit_cost_statement_dt] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_cost_statement_dt] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [permit_cost_statement_dt_idx1]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[permit_cost_statement_dt]') AND name = N'permit_cost_statement_dt_idx1')
CREATE NONCLUSTERED INDEX [permit_cost_statement_dt_idx1] ON [dbo].[permit_cost_statement_dt]
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_permit_cost_statement_dt_row_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[permit_cost_statement_dt]'))
ALTER TABLE [dbo].[permit_cost_statement_dt]  WITH CHECK ADD  CONSTRAINT [FK_permit_cost_statement_dt_row_id] FOREIGN KEY([row_id])
REFERENCES [dbo].[permit_cost_statement_hd] ([row_id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_permit_cost_statement_dt_row_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[permit_cost_statement_dt]'))
ALTER TABLE [dbo].[permit_cost_statement_dt] CHECK CONSTRAINT [FK_permit_cost_statement_dt_row_id]
GO
