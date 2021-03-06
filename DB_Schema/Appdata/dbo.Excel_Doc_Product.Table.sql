USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Excel_Doc_Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PoNo] [varchar](100) NULL,
	[ExportNo] [numeric](10, 0) NULL,
	[ProductlineNo] [int] NULL,
	[QuantityUom] [varchar](5) NULL,
	[NetPrice] [decimal](10, 2) NULL,
	[NetPriceCurrency] [varchar](5) NULL,
	[ThGrade] [varchar](20) NULL,
	[ThQuantity] [varchar](50) NULL,
	[ProductId] [varchar](50) NULL,
	[EvlsQuantity] [varchar](50) NULL,
	[LotNo] [varchar](20) NULL,
	[Warehouse] [varchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
