USE [appdata]
GO
/****** Object:  Table [dbo].[SABIC_SHIPPING_ADVICE_REPORT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[SABIC_SHIPPING_ADVICE_REPORT]
GO
/****** Object:  Table [dbo].[SABIC_SHIPPING_ADVICE_REPORT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SABIC_SHIPPING_ADVICE_REPORT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SABIC_SHIPPING_ADVICE_REPORT](
	[shipment_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[delivery_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_line] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[vessel_name] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[voyage] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[port_load_name] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[sail_dt] [datetime] NOT NULL,
	[eta_dest] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[SABIC_SHIPPING_ADVICE_REPORT] TO  SCHEMA OWNER 
GO
