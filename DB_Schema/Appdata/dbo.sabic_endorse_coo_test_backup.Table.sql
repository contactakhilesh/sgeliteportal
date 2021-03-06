USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sabic_endorse_coo_test_backup](
	[RowId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ExportNo] [numeric](9, 0) NULL,
	[DateGenerated] [datetime] NULL,
	[SerialNo] [varchar](100) NULL,
	[Heijry] [varchar](100) NULL,
	[SobDate] [datetime] NULL,
	[CountryInitials] [varchar](100) NULL,
	[OrderNo] [varchar](40) NULL,
	[DeliveryNo] [varchar](40) NULL,
	[ShipmentNo] [varchar](40) NULL,
	[InvoiceNo] [numeric](9, 0) NULL,
	[Remarks] [varchar](100) NULL,
	[Note] [varchar](100) NULL,
	[Electronic] [varchar](100) NULL
) ON [PRIMARY]

GO
