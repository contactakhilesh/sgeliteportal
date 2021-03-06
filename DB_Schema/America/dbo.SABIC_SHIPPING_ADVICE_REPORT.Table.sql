USE [AMERICA]
GO
/****** Object:  Table [dbo].[SABIC_SHIPPING_ADVICE_REPORT]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SABIC_SHIPPING_ADVICE_REPORT](
	[shipment_no] [varchar](40) NULL,
	[delivery_no] [varchar](40) NULL,
	[ship_line] [varchar](40) NOT NULL,
	[vessel_name] [varchar](40) NOT NULL,
	[voyage] [varchar](40) NOT NULL,
	[port_load_name] [varchar](40) NOT NULL,
	[sail_dt] [datetime] NOT NULL,
	[eta_dt] [datetime] NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[SABIC_SHIPPING_ADVICE_REPORT] TO  SCHEMA OWNER 
GO
