USE [AMERICA]
GO
/****** Object:  Table [dbo].[carrier_nom_temp]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carrier_nom_temp](
	[carrier_name] [varchar](50) NULL,
	[port_load_name] [varchar](50) NULL,
	[port_disc_name] [varchar](50) NULL,
	[cont_size] [varchar](10) NULL,
	[teu_forecast] [decimal](10, 2) NULL,
	[teu_percentage] [decimal](10, 2) NULL,
	[Country_name] [varchar](50) NULL,
	[freight_cost] [decimal](10, 2) NULL,
	[pack_type] [varchar](10) NULL,
	[cost_151] [decimal](10, 2) NULL,
	[cost_208] [decimal](10, 2) NULL,
	[port_del_name] [varchar](50) NULL,
	[route_id] [varchar](10) NULL,
	[transit_time] [decimal](5, 0) NULL,
	[route_direction] [varchar](150) NULL,
	[route_option] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[carrier_nom_temp] TO  SCHEMA OWNER 
GO
