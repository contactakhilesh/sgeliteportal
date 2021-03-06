USE [AMERICA]
GO
/****** Object:  Table [dbo].[carrier_nominated_master]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carrier_nominated_master](
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
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
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
	[feu_forecast] [numeric](10, 2) NULL,
	[contract_number] [varchar](100) NULL,
	[hubbing_contract_number] [varchar](100) NULL,
	[comm_rate] [numeric](10, 5) NULL,
	[DTHC] [varchar](1) NULL,
	[dthc_include_indicator] [char](1) NULL,
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

GO
ALTER AUTHORIZATION ON [dbo].[carrier_nominated_master] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_carrier_nominated_master_5_1950629992__K9_K3_K4]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE NONCLUSTERED INDEX [_dta_index_carrier_nominated_master_5_1950629992__K9_K3_K4] ON [dbo].[carrier_nominated_master]
(
	[parentacctid] ASC,
	[port_load_id] ASC,
	[port_disc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
