USE [appdata]
GO
/****** Object:  Table [dbo].[Excel_Doc_Product]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[Excel_Doc_Product]
GO
/****** Object:  Table [dbo].[Excel_Doc_Product]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Excel_Doc_Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Excel_Doc_Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PoNo] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExportNo] [numeric](10, 0) NULL,
	[ProductlineNo] [int] NULL,
	[QuantityUom] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NetPrice] [decimal](10, 2) NULL,
	[NetPriceCurrency] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ThGrade] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ThQuantity] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductId] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EvlsQuantity] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LotNo] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Warehouse] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedDate] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Excel_Doc_Product] TO  SCHEMA OWNER 
GO
