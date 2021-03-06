USE [AMERICA]
GO
/****** Object:  Table [dbo].[INTTRA_BL_LINK_MARKINGS]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTTRA_BL_LINK_MARKINGS](
	[Export_n] [numeric](10, 0) NOT NULL,
	[LineNumber] [varchar](3) NOT NULL,
	[EquipmentIdentifier] [varchar](17) NULL,
	[NumberOfPackages] [varchar](8) NULL,
	[SplitGrossWeight] [decimal](10, 3) NULL,
	[SplitGrossWeightUOM] [varchar](35) NULL,
	[SplitGoodsGrossVolume] [decimal](10, 3) NULL,
	[SplitGrossVolumeUOM] [varchar](35) NULL,
	[party] [varchar](10) NOT NULL,
 CONSTRAINT [PK_INTTRA_BL_LINK_MARKINGS_1] PRIMARY KEY CLUSTERED 
(
	[Export_n] ASC,
	[LineNumber] ASC,
	[party] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[INTTRA_BL_LINK_MARKINGS] TO  SCHEMA OWNER 
GO
