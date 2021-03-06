USE [AMERICA]
GO
/****** Object:  Table [dbo].[SABIC_SHIPPING_ADVICE_REPORT_EGS]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SABIC_SHIPPING_ADVICE_REPORT_EGS](
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
	[eta_dt] [datetime] NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[SABIC_SHIPPING_ADVICE_REPORT_EGS] TO  SCHEMA OWNER 
GO
