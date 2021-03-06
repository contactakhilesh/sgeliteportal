USE [AMERICA]
GO
/****** Object:  Table [dbo].[carrier_nominated_master_15_02_2014]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carrier_nominated_master_15_02_2014](
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
	[port_del_id] [varchar](10) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[carrier_nominated_master_15_02_2014] TO  SCHEMA OWNER 
GO
