USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SABIC_SHIPPING_ADVICE_REPORT](
	[shipment_no] [varchar](40) NULL,
	[delivery_no] [varchar](40) NULL,
	[ship_line] [varchar](40) NOT NULL,
	[vessel_name] [varchar](40) NOT NULL,
	[voyage] [varchar](40) NOT NULL,
	[port_load_name] [varchar](40) NOT NULL,
	[sail_dt] [datetime] NOT NULL,
	[eta_dest] [datetime] NULL
) ON [PRIMARY]

GO
