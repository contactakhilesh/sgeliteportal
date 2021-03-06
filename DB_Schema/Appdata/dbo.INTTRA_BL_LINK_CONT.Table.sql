USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INTTRA_BL_LINK_CONT](
	[Export_n] [numeric](10, 0) NOT NULL,
	[LineNumber] [numeric](3, 0) NOT NULL,
	[EquipmentIdentifier] [varchar](17) NULL,
	[EquipmentTypeCode] [varchar](10) NULL,
	[EquipmentDescription] [varchar](35) NULL,
	[EquipmentGrossWeight] [decimal](10, 3) NULL,
	[EquipmentGrossWeightUOM] [varchar](35) NULL,
	[EquipmentGrossVolume] [decimal](10, 3) NULL,
	[EquipmentGrossVolumeUOM] [varchar](35) NULL,
	[SealingParty] [varchar](35) NULL,
	[EquipmentSeal] [varchar](15) NULL,
	[party] [varchar](10) NOT NULL,
 CONSTRAINT [PK_INTTRA_BL_LINK_PROD_DET] PRIMARY KEY CLUSTERED 
(
	[Export_n] ASC,
	[LineNumber] ASC,
	[party] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
