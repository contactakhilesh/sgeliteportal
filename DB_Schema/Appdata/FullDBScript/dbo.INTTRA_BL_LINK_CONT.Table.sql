USE [appdata]
GO
/****** Object:  Table [dbo].[INTTRA_BL_LINK_CONT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[INTTRA_BL_LINK_CONT]
GO
/****** Object:  Table [dbo].[INTTRA_BL_LINK_CONT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INTTRA_BL_LINK_CONT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[INTTRA_BL_LINK_CONT](
	[Export_n] [numeric](10, 0) NOT NULL,
	[LineNumber] [numeric](3, 0) NOT NULL,
	[EquipmentIdentifier] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EquipmentTypeCode] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EquipmentDescription] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EquipmentGrossWeight] [decimal](10, 3) NULL,
	[EquipmentGrossWeightUOM] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EquipmentGrossVolume] [decimal](10, 3) NULL,
	[EquipmentGrossVolumeUOM] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SealingParty] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EquipmentSeal] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[party] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_INTTRA_BL_LINK_PROD_DET] PRIMARY KEY CLUSTERED 
(
	[Export_n] ASC,
	[LineNumber] ASC,
	[party] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[INTTRA_BL_LINK_CONT] TO  SCHEMA OWNER 
GO
