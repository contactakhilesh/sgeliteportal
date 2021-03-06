USE [appdata]
GO
/****** Object:  Index [freight_deduction_mast_idx]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [freight_deduction_mast_idx] ON [dbo].[freight_deduction_mast]
GO
/****** Object:  Table [dbo].[freight_deduction_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[freight_deduction_mast]
GO
/****** Object:  Table [dbo].[freight_deduction_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[freight_deduction_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[freight_deduction_mast](
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[carrier_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[port_load_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[port_disc_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cont_size] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[freight_amt_usd] [numeric](10, 3) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[freight_deduction_mast] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [freight_deduction_mast_idx]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[freight_deduction_mast]') AND name = N'freight_deduction_mast_idx')
CREATE UNIQUE NONCLUSTERED INDEX [freight_deduction_mast_idx] ON [dbo].[freight_deduction_mast]
(
	[cust_id] ASC,
	[carrier_id] ASC,
	[port_load_id] ASC,
	[port_disc_id] ASC,
	[cont_size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
