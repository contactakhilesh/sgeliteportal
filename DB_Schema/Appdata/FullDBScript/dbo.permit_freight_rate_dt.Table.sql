USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_freight_rate_dt]') AND type in (N'U'))
ALTER TABLE [dbo].[permit_freight_rate_dt] DROP CONSTRAINT IF EXISTS [FK_permit_freight_rate_dt_row_id]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_freight_rate_dt]') AND type in (N'U'))
ALTER TABLE [dbo].[permit_freight_rate_dt] DROP CONSTRAINT IF EXISTS [DF__permit_fr__insur__0BA85F5B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_freight_rate_dt]') AND type in (N'U'))
ALTER TABLE [dbo].[permit_freight_rate_dt] DROP CONSTRAINT IF EXISTS [DF__permit_fr__freig__0AB43B22]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_freight_rate_dt]') AND type in (N'U'))
ALTER TABLE [dbo].[permit_freight_rate_dt] DROP CONSTRAINT IF EXISTS [DF__permit_fr__amt_4__09C016E9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_freight_rate_dt]') AND type in (N'U'))
ALTER TABLE [dbo].[permit_freight_rate_dt] DROP CONSTRAINT IF EXISTS [DF__permit_fr__amt_2__08CBF2B0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_freight_rate_dt]') AND type in (N'U'))
ALTER TABLE [dbo].[permit_freight_rate_dt] DROP CONSTRAINT IF EXISTS [DF__permit_fr__pol_i__07D7CE77]
GO
/****** Object:  Table [dbo].[permit_freight_rate_dt]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_freight_rate_dt]
GO
/****** Object:  Table [dbo].[permit_freight_rate_dt]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_freight_rate_dt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_freight_rate_dt](
	[row_id] [numeric](18, 0) NOT NULL,
	[pol_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[pod_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[amt_20] [numeric](10, 2) NULL,
	[amt_40] [numeric](10, 2) NULL,
	[freight] [numeric](5, 4) NULL,
	[insurance] [numeric](5, 4) NULL,
	[port_disc_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_permit_freight_rate_dt] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC,
	[pol_id] ASC,
	[pod_id] ASC,
	[port_disc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_freight_rate_dt] TO  SCHEMA OWNER 
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_permit_freight_rate_dt_row_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[permit_freight_rate_dt]'))
ALTER TABLE [dbo].[permit_freight_rate_dt]  WITH CHECK ADD  CONSTRAINT [FK_permit_freight_rate_dt_row_id] FOREIGN KEY([row_id])
REFERENCES [dbo].[permit_freight_rate_hd] ([row_id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_permit_freight_rate_dt_row_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[permit_freight_rate_dt]'))
ALTER TABLE [dbo].[permit_freight_rate_dt] CHECK CONSTRAINT [FK_permit_freight_rate_dt_row_id]
GO
