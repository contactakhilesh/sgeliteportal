USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SABIC_ENDORSE_COO](
	[RowId] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
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
	[Electronic] [varchar](100) NULL,
	[indicator] [char](1) NULL,
	[endorse_coo] [char](1) NULL,
	[mci_coo] [char](1) NULL,
 CONSTRAINT [PK_SABIC_ENDORSE_COO] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
