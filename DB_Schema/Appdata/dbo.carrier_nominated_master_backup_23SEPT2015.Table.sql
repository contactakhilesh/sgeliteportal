USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_nominated_master_backup_23SEPT2015](
	[cust_id] [varchar](10) NULL,
	[carrier_id] [varchar](10) NOT NULL,
	[port_load_id] [varchar](10) NOT NULL,
	[port_disc_id] [varchar](10) NOT NULL,
	[cont_size] [varchar](10) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[remarks] [varchar](255) NULL,
	[parentacctid] [int] NOT NULL,
	[vol_forecast] [decimal](10, 2) NULL,
	[teu_forecast] [decimal](10, 2) NULL,
	[teu_percentage] [decimal](10, 2) NULL,
	[ytd_shipped] [decimal](10, 2) NULL,
	[ytd_booked] [decimal](10, 2) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[port_del_id] [varchar](10) NULL,
	[freight_cost] [decimal](10, 3) NULL,
	[pack_type] [varchar](10) NULL,
	[pallet_cost_151] [decimal](10, 3) NULL,
	[loose_cost_208] [decimal](10, 3) NULL,
	[route_id] [varchar](10) NULL,
	[weekly_alloc_teu] [decimal](10, 2) NULL,
	[monthly_alloc_teu] [decimal](10, 2) NULL
) ON [PRIMARY]

GO
