USE [AMERICA]
GO
/****** Object:  Table [dbo].[carrier_nominated_master_test_2016Jun21]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carrier_nominated_master_test_2016Jun21](
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
	[monthly_alloc_teu] [decimal](10, 2) NULL,
	[terminal_handling] [decimal](18, 3) NULL,
	[bl_fee] [decimal](18, 3) NULL,
	[admin_fee_per_cont] [decimal](18, 3) NULL,
	[service_option] [varchar](150) NULL,
	[routing] [varchar](150) NULL,
	[transit_time] [numeric](5, 0) NULL,
	[dest_free_time] [numeric](5, 0) NULL,
	[detention_charges] [numeric](10, 3) NULL,
	[demurrage_charges] [numeric](10, 3) NULL,
	[detention_currency_id] [varchar](10) NULL,
	[demurrage_currency_id] [varchar](10) NULL,
	[terminal_handling_currency_id] [varchar](10) NULL,
	[is_effective] [char](1) NULL,
	[all_water] [varchar](50) NULL,
	[mlp_servive] [varchar](50) NULL,
	[feu_forecast] [numeric](10, 2) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[carrier_nominated_master_test_2016Jun21] TO  SCHEMA OWNER 
GO
