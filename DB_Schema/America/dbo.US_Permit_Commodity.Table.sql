USE [AMERICA]
GO
/****** Object:  Table [dbo].[US_Permit_Commodity]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[US_Permit_Commodity](
	[permit_id] [char](10) NOT NULL,
	[job_no] [varchar](14) NOT NULL,
	[HSCode] [varchar](10) NULL,
	[Seqno] [int] NOT NULL,
	[ProductID] [varchar](25) NULL,
	[CommodityDesc] [varchar](45) NULL,
	[OriginOfGoods] [char](1) NULL,
	[Qty1] [numeric](10, 0) NULL,
	[Qtry1UOM] [varchar](5) NULL,
	[Qty2] [numeric](10, 0) NULL,
	[Qtry2UOM] [varchar](5) NULL,
	[ValueOfGoods] [numeric](10, 0) NULL,
	[ShippingWeight] [numeric](10, 0) NULL,
	[ShippingWeight_uom] [varchar](3) NULL,
	[LicExemptCode] [varchar](3) NULL,
	[ECCN] [varchar](5) NULL,
	[ExportInfoCode] [char](2) NULL,
	[ExportLicNo] [varchar](12) NULL,
	[LicenseValue] [numeric](10, 0) NULL,
	[ITARCode] [varchar](12) NULL,
	[RegistrationNo] [varchar](6) NULL,
	[EligiblePartyCert] [char](1) NULL,
	[USMLCatCode] [char](2) NULL,
	[DDTCQty] [numeric](7, 0) NULL,
	[DDTCUOM] [varchar](5) NULL,
	[MilitaryEquipment] [char](1) NULL,
	[EntryDate] [datetime] NOT NULL,
	[EntryBy] [varchar](20) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UnitPrice] [numeric](13, 5) NULL,
	[UnitPriceUOM] [varchar](10) NULL,
	[CurrencyID] [varchar](10) NULL,
 CONSTRAINT [PK_US_Permit_Commodity] PRIMARY KEY CLUSTERED 
(
	[permit_id] ASC,
	[job_no] ASC,
	[Seqno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[US_Permit_Commodity] TO  SCHEMA OWNER 
GO
