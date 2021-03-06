USE [appdata]
GO
/****** Object:  Trigger [trg_InsBlCompare]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_InsBlCompare]
GO
/****** Object:  Table [dbo].[INTTRA_BL_LINK]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[INTTRA_BL_LINK]
GO
/****** Object:  Table [dbo].[INTTRA_BL_LINK]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INTTRA_BL_LINK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[INTTRA_BL_LINK](
	[OfficeCode ] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Export_n] [numeric](10, 0) NOT NULL,
	[Cust_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProcessingDate] [datetime] NULL,
	[XML_File_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[status] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MessageType] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DocumentDate] [datetime] NULL,
	[AssignedBySender] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AssignedByRecipient] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BillOfLading] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShippedOnBoard] [datetime] NULL,
	[ReceivedForShipment] [datetime] NULL,
	[BillOfLadingReleaseCode] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BillOfLadingReleaseName] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BlReleaseDate] [datetime] NULL,
	[PurchaseOrderNumber] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShipperIdentifyingNumber] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BookingNumber] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BillOfLadingNumber] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContractNumber] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CustomerShipmentIdentifier] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[General] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BlClause] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NumberOfEquipment] [decimal](10, 3) NULL,
	[NumberOfPackages] [decimal](10, 3) NULL,
	[PackageTypeDescription] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GrossWeight] [decimal](10, 3) NULL,
	[GrossWeightUOM] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GrossVolume] [decimal](10, 3) NULL,
	[GrossVolumeUOM] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MovementType] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ServiceType] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TransportStage] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TransportMode] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ConveyanceName] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VoyageTripNumber] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CarrierSCAC] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TransportIdentificationType] [varchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TransportMeansType] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TransportNationality] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PlaceOfDeliveryCode] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PlaceOfDeliveryname] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PlaceOfReceiptCode] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PlaceOfReceiptName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PortOfDischargeCode] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PortOfDischargeName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PortOfLoadingCode] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PortOfLoadingName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Carrier] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShipperName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShipperAdd1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShipperAdd2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShipperAdd3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShipperAdd4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ConsigneeName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ConsigneeAdd1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ConsigneeAdd2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ConsigneeAdd3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ConsigneeAdd4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NotifyPartyName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NotifyPartyAdd1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NotifyPartyAdd2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NotifyPartyAdd3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NotifyPartyAdd4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BLRecipient] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BLRecipientName] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContactName] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Telephone] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Fax] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Add1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Add2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Add3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Add4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContractPartyName] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContractPartyAdd1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContractPartyAdd2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GoodsDescription] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PackageMarks] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[party] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[NotifyParty2Name] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NotifyParty2Add1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NotifyParty2Add2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NotifyParty2Add3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NotifyParty2Add4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PackageTypeCode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_INTTRA_BL_LINK] PRIMARY KEY CLUSTERED 
(
	[OfficeCode ] ASC,
	[Export_n] ASC,
	[party] ASC,
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[INTTRA_BL_LINK] TO  SCHEMA OWNER 
GO
