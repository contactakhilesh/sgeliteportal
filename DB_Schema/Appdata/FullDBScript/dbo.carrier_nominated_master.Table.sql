USE [appdata]
GO
/****** Object:  Trigger [postupdate_audit_carrier_nominated_master]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_audit_carrier_nominated_master]
GO
/****** Object:  Trigger [postinsert_audit_carrier_nominated_master]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_audit_carrier_nominated_master]
GO
/****** Object:  Trigger [postdelete_audit_carrier_nominated_master]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postdelete_audit_carrier_nominated_master]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[carrier_nominated_master]') AND type in (N'U'))
ALTER TABLE [dbo].[carrier_nominated_master] DROP CONSTRAINT IF EXISTS [DF__carrier_n__is_ef__3891AB19]
GO
/****** Object:  Table [dbo].[carrier_nominated_master]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[carrier_nominated_master]
GO
/****** Object:  Table [dbo].[carrier_nominated_master]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[carrier_nominated_master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[carrier_nominated_master](
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[carrier_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[port_load_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[port_disc_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cont_size] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[remarks] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[parentacctid] [int] NOT NULL,
	[vol_forecast] [decimal](10, 2) NULL,
	[teu_forecast] [decimal](10, 2) NULL,
	[teu_percentage] [decimal](10, 2) NULL,
	[ytd_shipped] [decimal](10, 2) NULL,
	[ytd_booked] [decimal](10, 2) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[port_del_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_cost] [decimal](10, 3) NULL,
	[pack_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pallet_cost_151] [decimal](10, 3) NULL,
	[loose_cost_208] [decimal](10, 3) NULL,
	[route_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[weekly_alloc_teu] [decimal](10, 2) NULL,
	[monthly_alloc_teu] [decimal](10, 2) NULL,
	[terminal_handling] [decimal](18, 3) NULL,
	[bl_fee] [decimal](18, 3) NULL,
	[admin_fee_per_cont] [decimal](18, 3) NULL,
	[service_option] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[routing] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[transit_time] [numeric](5, 0) NULL,
	[dest_free_time] [numeric](5, 0) NULL,
	[detention_charges] [numeric](10, 3) NULL,
	[demurrage_charges] [numeric](10, 3) NULL,
	[detention_currency_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[demurrage_currency_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[terminal_handling_currency_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[is_effective] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[all_water] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mlp_servive] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[feu_forecast] [numeric](10, 2) NULL,
	[contract_number] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hubbing_contract_number] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comm_rate] [numeric](10, 5) NULL,
	[DTHC] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dthc_include_indicator] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_carrier_nominated_master] PRIMARY KEY CLUSTERED 
(
	[carrier_id] ASC,
	[port_load_id] ASC,
	[port_disc_id] ASC,
	[cont_size] ASC,
	[start_date] ASC,
	[end_date] ASC,
	[parentacctid] ASC,
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[carrier_nominated_master] TO  SCHEMA OWNER 
GO
