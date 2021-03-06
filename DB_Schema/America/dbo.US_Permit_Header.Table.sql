USE [AMERICA]
GO
/****** Object:  Table [dbo].[US_Permit_Header]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[US_Permit_Header](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[export_n] [numeric](12, 0) NOT NULL,
	[export_ref_n] [numeric](12, 0) NOT NULL,
	[shipper_ref] [varchar](40) NOT NULL,
	[RelatedCompany_ind] [char](1) NOT NULL,
	[HAZMAT_ind] [char](1) NULL,
	[customs_permit_no] [varchar](20) NULL,
	[UstoPuertoRico_ind] [char](1) NULL,
	[ToBeSoldenRoute_ind] [char](1) NULL,
	[PuertoRicoToUS_ind] [char](1) NULL,
	[ForPrincParty_ind] [char](1) NOT NULL,
	[ModeofTransport] [char](2) NOT NULL,
	[FilingType_ind] [char](1) NOT NULL,
	[AEIFilingType] [char](1) NULL,
	[ShipmentRefNo] [varchar](17) NOT NULL,
	[EstExportDate] [datetime] NOT NULL,
	[PortOfExportation] [varchar](4) NOT NULL,
	[PortofUnlading] [varchar](5) NOT NULL,
	[CarrierID] [varchar](4) NOT NULL,
	[Vessel] [varchar](23) NOT NULL,
	[ForeignTradeZone] [varchar](7) NULL,
	[InBondType] [int] NOT NULL,
	[EntryNo] [varchar](15) NULL,
	[OriginState] [char](2) NOT NULL,
	[DestinationCountry] [char](2) NULL,
	[FPPIRoutedTransport] [char](1) NULL,
	[RowID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[EntryBy] [varchar](20) NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[SendStatus] [varchar](50) NULL,
	[ShipmentAction] [char](1) NULL,
	[actionType] [char](2) NULL,
	[pdf_filename] [varchar](50) NULL,
	[xml_filename] [varchar](50) NULL,
	[amend_reason] [text] NULL,
	[cancel_reason] [text] NULL,
	[amend_cnt] [int] NULL,
 CONSTRAINT [PK_US_Permit_Header] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[US_Permit_Header] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [US_Permit_Header_NonClusteredIndex]    Script Date: 3/14/2018 6:00:04 AM ******/
CREATE NONCLUSTERED INDEX [US_Permit_Header_NonClusteredIndex] ON [dbo].[US_Permit_Header]
(
	[export_n] ASC,
	[SendStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
