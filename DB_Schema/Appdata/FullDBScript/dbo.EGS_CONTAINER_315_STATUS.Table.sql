USE [appdata]
GO
/****** Object:  Table [dbo].[EGS_CONTAINER_315_STATUS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EGS_CONTAINER_315_STATUS]
GO
/****** Object:  Table [dbo].[EGS_CONTAINER_315_STATUS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EGS_CONTAINER_315_STATUS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EGS_CONTAINER_315_STATUS](
	[export_n] [numeric](9, 0) NOT NULL,
	[cust_ord_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cont_n] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[event_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EGS_CONTAINER_315_STATUS] TO  SCHEMA OWNER 
GO
