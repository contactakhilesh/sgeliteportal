USE [AMERICA]
GO
/****** Object:  Table [dbo].[domestic_master_fuel_levy_hd]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[domestic_master_fuel_levy_hd](
	[fuel_month] [numeric](18, 0) NOT NULL,
	[fuel_year] [numeric](18, 0) NOT NULL,
	[ave_cost_price] [decimal](9, 2) NULL,
	[var_base_price] [decimal](9, 2) NULL,
	[per_price_change] [decimal](9, 2) NULL,
	[per_fuel_component] [decimal](9, 2) NULL,
	[fuel_levy_prev_mo] [decimal](9, 2) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_master_fuel_levy_hd] PRIMARY KEY CLUSTERED 
(
	[fuel_month] ASC,
	[fuel_year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[domestic_master_fuel_levy_hd] TO  SCHEMA OWNER 
GO
