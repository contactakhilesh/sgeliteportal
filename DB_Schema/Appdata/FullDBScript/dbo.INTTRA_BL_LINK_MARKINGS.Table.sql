USE [appdata]
GO
/****** Object:  Table [dbo].[INTTRA_BL_LINK_MARKINGS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[INTTRA_BL_LINK_MARKINGS]
GO
/****** Object:  Table [dbo].[INTTRA_BL_LINK_MARKINGS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INTTRA_BL_LINK_MARKINGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[INTTRA_BL_LINK_MARKINGS](
	[Export_n] [numeric](10, 0) NOT NULL,
	[LineNumber] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EquipmentIdentifier] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NumberOfPackages] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SplitGrossWeight] [decimal](10, 3) NULL,
	[SplitGrossWeightUOM] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SplitGoodsGrossVolume] [decimal](10, 3) NULL,
	[SplitGrossVolumeUOM] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[party] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_INTTRA_BL_LINK_MARKINGS_1] PRIMARY KEY CLUSTERED 
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
ALTER AUTHORIZATION ON [dbo].[INTTRA_BL_LINK_MARKINGS] TO  SCHEMA OWNER 
GO
