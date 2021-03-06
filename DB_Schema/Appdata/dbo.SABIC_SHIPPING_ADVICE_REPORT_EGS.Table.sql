USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SABIC_SHIPPING_ADVICE_REPORT_EGS](
	[delivery_no] [varchar](40) NOT NULL,
	[shipment_no] [varchar](40) NOT NULL,
	[VENDOR_NAME] [varchar](40) NULL,
	[VENDOR_ID] [varchar](40) NULL,
	[PORT_LOAD_ID] [varchar](40) NULL,
	[cust_id] [varchar](40) NULL,
	[ACTUAL_SAIL_D] [datetime] NULL,
	[VESSEL] [varchar](40) NULL,
	[VOYAGE] [varchar](40) NULL,
	[ENTRY_D] [datetime] NULL,
	[ETA_DEST] [datetime] NULL,
	[ship_on_brd_d] [datetime] NULL,
	[etd] [datetime] NULL,
	[eta] [datetime] NULL,
	[stuff_d] [datetime] NULL
) ON [PRIMARY]

GO
