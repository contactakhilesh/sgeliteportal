USE [appdata]
GO
/****** Object:  Table [dbo].[SABIC_SHIPPING_ADVICE_REPORT_EGS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[SABIC_SHIPPING_ADVICE_REPORT_EGS]
GO
/****** Object:  Table [dbo].[SABIC_SHIPPING_ADVICE_REPORT_EGS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SABIC_SHIPPING_ADVICE_REPORT_EGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SABIC_SHIPPING_ADVICE_REPORT_EGS](
	[delivery_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[shipment_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VENDOR_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VENDOR_ID] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_LOAD_ID] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ACTUAL_SAIL_D] [datetime] NULL,
	[VESSEL] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VOYAGE] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ENTRY_D] [datetime] NULL,
	[ETA_DEST] [datetime] NULL,
	[ship_on_brd_d] [datetime] NULL,
	[etd] [datetime] NULL,
	[eta] [datetime] NULL,
	[stuff_d] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[SABIC_SHIPPING_ADVICE_REPORT_EGS] TO  SCHEMA OWNER 
GO
