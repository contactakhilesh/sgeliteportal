USE [appdata]
GO
/****** Object:  Table [dbo].[carrier_nom_temp]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[carrier_nom_temp]
GO
/****** Object:  Table [dbo].[carrier_nom_temp]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[carrier_nom_temp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[carrier_nom_temp](
	[carrier_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_load_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_disc_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_size] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[teu_forecast] [decimal](10, 2) NULL,
	[teu_percentage] [decimal](10, 2) NULL,
	[Country_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[freight_cost] [decimal](10, 2) NULL,
	[pack_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cost_151] [decimal](10, 2) NULL,
	[cost_208] [decimal](10, 2) NULL,
	[port_del_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[route_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[carrier_nom_temp] TO  SCHEMA OWNER 
GO
