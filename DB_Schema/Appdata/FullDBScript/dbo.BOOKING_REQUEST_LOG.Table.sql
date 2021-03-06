USE [appdata]
GO
/****** Object:  Table [dbo].[BOOKING_REQUEST_LOG]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[BOOKING_REQUEST_LOG]
GO
/****** Object:  Table [dbo].[BOOKING_REQUEST_LOG]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BOOKING_REQUEST_LOG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BOOKING_REQUEST_LOG](
	[RowId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[export_n] [numeric](9, 0) NOT NULL,
	[DocId] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DocDate] [datetime] NULL,
	[Parties] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContactName] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContactNumber] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContactEmail] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShipmentId] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PurchaseOrderNumber] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShipperOrderNumber] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShipmentComments] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MovementType] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ServiceType] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TransportStage] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TransportMode] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ConveyanceName] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VoyageTripNumber] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CarrierSCAC] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PlaceOfReceipt] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EstimatedDeparturePOR] [datetime] NULL,
	[PortOfLoading] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EstimatedDeparturePOL] [datetime] NULL,
	[PlaceOfDelivery] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EstimatedArrivalDel] [datetime] NULL,
	[PortOfDischarge] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EstimatedArrivalDisc] [datetime] NULL,
	[CarrierId] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CarrierName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CarrierAddr1] [varchar](140) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CarrierAddr2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CarrierAddr3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CarrierAddr4] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BookingParty] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BookingPartyAddr1] [varchar](140) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BookingPartyAddr2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BookingPartyAddr3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BookingPartyAddr4] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Shipper] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShipperAddr1] [varchar](140) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShipperAddr2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShipperAddr3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShipperAddr4] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Consignee] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ConsigneeAddr1] [varchar](140) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ConsigneeAddr2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ConsigneeAddr3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ConsigneeAddr4] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NotifyParty] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NotifyPartyAddr1] [varchar](140) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NotifyPartyAddr2] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NotifyPartyAddr3] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NotifyPartyAddr4] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EquipmentTypeCode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EquipmentCount] [int] NULL,
	[LineNumber] [int] NULL,
	[NumberOfPackages] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PackageTypeCode] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GoodsDescription] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PackageDetailWeight] [decimal](15, 3) NULL,
	[UOM] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_BOOKING_REQUEST_LOG] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC,
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[BOOKING_REQUEST_LOG] TO  SCHEMA OWNER 
GO
