USE [AMERICA]
GO
/****** Object:  Table [dbo].[EGS_CONTAINER_315_STATUS]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EGS_CONTAINER_315_STATUS](
	[export_n] [numeric](9, 0) NOT NULL,
	[cust_ord_no] [varchar](40) NOT NULL,
	[cont_n] [varchar](40) NOT NULL,
	[event_code] [varchar](20) NOT NULL,
	[empty_pick_up] [datetime] NULL,
	[gated_in] [datetime] NULL,
	[vessel_load] [datetime] NULL,
	[vessel_departure] [datetime] NULL,
	[transshipment] [datetime] NULL,
	[vessel_arrived] [datetime] NULL,
	[unloaded_from_vessel] [datetime] NULL,
	[gated_out] [datetime] NULL,
	[rail_truck] [datetime] NULL,
	[returned] [datetime] NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EGS_CONTAINER_315_STATUS] TO  SCHEMA OWNER 
GO
