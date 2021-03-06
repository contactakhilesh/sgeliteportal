USE [AMERICA]
GO
/****** Object:  Table [dbo].[PACKING_LIST_DATA]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PACKING_LIST_DATA](
	[DELIVERY_NO] [varchar](20) NULL,
	[CREATED_ON] [datetime] NULL,
	[SALES_DOC_NO] [varchar](40) NULL,
	[PURCHASE_ORDER_NO] [varchar](40) NULL,
	[ORDER_TYPE] [varchar](10) NULL,
	[SHIPMENT_NO] [varchar](20) NULL,
	[BATCH_NO] [varchar](10) NULL,
	[CONTAINER_NO] [varchar](20) NULL,
	[SHIPPING_TYPE] [varchar](40) NULL,
	[PRODUCT_ID] [varchar](50) NULL,
	[PRODUCT_DESCRIPTION] [varchar](2500) NULL,
	[SEAL_NO] [varchar](100) NULL,
	[STORAGE_LOCATION] [varchar](30) NULL,
	[DESTINATION] [varchar](50) NULL,
	[PORT_OF_LOADING] [varchar](50) NULL,
	[QUANTITY] [numeric](9, 3) NULL,
	[GROSS_WEIGHT] [numeric](9, 3) NULL,
	[NET_WEIGHT] [numeric](9, 3) NULL,
	[TARE_WEIGHT] [decimal](9, 3) NULL,
	[VGM_WEIGHT] [numeric](9, 3) NULL,
	[SHIPMENT_MODE] [varchar](10) NULL,
	[SHIPPING_LINE] [varchar](50) NULL,
	[VESSEL_NAME] [varchar](30) NULL,
	[VOYAGE_NUMBER] [varchar](20) NULL,
	[BOOKING_NUMBER] [varchar](50) NULL,
	[BL_NUMBER] [varchar](50) NULL,
	[EST_TIME_DEPARTURE] [datetime] NULL,
	[LOADING_DATE] [datetime] NULL,
	[ASN_DATE] [datetime] NULL,
	[ACTUAL_TIME_DEPARTURE] [datetime] NULL,
	[PGI_DATE] [datetime] NULL,
	[DELIVERY_DATE] [datetime] NULL,
	[WM_ACTIVITY] [varchar](50) NULL,
	[STAGING_AREA] [varchar](50) NULL,
	[FF_AGENT_NAME] [varchar](100) NULL,
	[POSTAL_CODE] [varchar](20) NULL,
	[DISTRIBUTION] [numeric](5, 0) NULL,
	[LOCAL_AGENT_CODE] [varchar](20) NULL,
	[SHIPPED_TO_PARTY] [varchar](20) NULL,
	[SOLD_TO_PARTY] [varchar](20) NULL,
	[DBL_STATUS] [varchar](20) NULL,
	[STATUS] [varchar](20) NULL,
	[ENTRY_DATE] [datetime] NULL,
	[ID] [int] NOT NULL,
 CONSTRAINT [PK__PACKING___3214EC2713202F48] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[PACKING_LIST_DATA] TO  SCHEMA OWNER 
GO
