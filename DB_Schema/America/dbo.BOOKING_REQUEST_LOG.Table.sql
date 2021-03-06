USE [AMERICA]
GO
/****** Object:  Table [dbo].[BOOKING_REQUEST_LOG]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOKING_REQUEST_LOG](
	[RowId] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[export_n] [numeric](9, 0) NOT NULL,
	[DocId] [varchar](35) NULL,
	[DocDate] [datetime] NULL,
	[Parties] [varchar](50) NULL,
	[ContactName] [varchar](35) NULL,
	[ContactNumber] [varchar](35) NULL,
	[ContactEmail] [varchar](35) NULL,
	[ShipmentId] [varchar](35) NULL,
	[PurchaseOrderNumber] [varchar](35) NULL,
	[ShipperOrderNumber] [varchar](35) NULL,
	[ShipmentComments] [varchar](500) NULL,
	[MovementType] [varchar](35) NULL,
	[ServiceType] [varchar](35) NULL,
	[TransportStage] [varchar](35) NULL,
	[TransportMode] [varchar](35) NULL,
	[ConveyanceName] [varchar](35) NULL,
	[VoyageTripNumber] [varchar](35) NULL,
	[CarrierSCAC] [char](4) NULL,
	[PlaceOfReceipt] [varchar](35) NULL,
	[EstimatedDeparturePOR] [datetime] NULL,
	[PortOfLoading] [varchar](35) NULL,
	[EstimatedDeparturePOL] [datetime] NULL,
	[PlaceOfDelivery] [varchar](35) NULL,
	[EstimatedArrivalDel] [datetime] NULL,
	[PortOfDischarge] [varchar](35) NULL,
	[EstimatedArrivalDisc] [datetime] NULL,
	[CarrierId] [varchar](35) NULL,
	[CarrierName] [varchar](35) NULL,
	[CarrierAddr1] [varchar](35) NULL,
	[CarrierAddr2] [varchar](35) NULL,
	[CarrierAddr3] [varchar](35) NULL,
	[CarrierAddr4] [varchar](35) NULL,
	[BookingParty] [varchar](35) NULL,
	[BookingPartyAddr1] [varchar](35) NULL,
	[BookingPartyAddr2] [varchar](35) NULL,
	[BookingPartyAddr3] [varchar](35) NULL,
	[BookingPartyAddr4] [varchar](35) NULL,
	[Shipper] [varchar](35) NULL,
	[ShipperAddr1] [varchar](35) NULL,
	[ShipperAddr2] [varchar](35) NULL,
	[ShipperAddr3] [varchar](35) NULL,
	[ShipperAddr4] [varchar](35) NULL,
	[Consignee] [varchar](35) NULL,
	[ConsigneeAddr1] [varchar](35) NULL,
	[ConsigneeAddr2] [varchar](35) NULL,
	[ConsigneeAddr3] [varchar](35) NULL,
	[ConsigneeAddr4] [varchar](35) NULL,
	[NotifyParty] [varchar](35) NULL,
	[NotifyPartyAddr1] [varchar](35) NULL,
	[NotifyPartyAddr2] [varchar](35) NULL,
	[NotifyPartyAddr3] [varchar](35) NULL,
	[NotifyPartyAddr4] [varchar](35) NULL,
	[EquipmentTypeCode] [varchar](10) NULL,
	[EquipmentCount] [int] NULL,
	[LineNumber] [int] NULL,
	[NumberOfPackages] [varchar](35) NULL,
	[PackageTypeCode] [varchar](8) NULL,
	[GoodsDescription] [varchar](max) NULL,
	[PackageDetailWeight] [decimal](15, 3) NULL,
	[UOM] [varchar](35) NULL,
 CONSTRAINT [PK_BOOKING_REQUEST_LOG] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC,
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[BOOKING_REQUEST_LOG] TO  SCHEMA OWNER 
GO
