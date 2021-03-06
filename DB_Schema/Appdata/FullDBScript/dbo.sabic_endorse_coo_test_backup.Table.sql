USE [appdata]
GO
/****** Object:  Table [dbo].[sabic_endorse_coo_test_backup]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[sabic_endorse_coo_test_backup]
GO
/****** Object:  Table [dbo].[sabic_endorse_coo_test_backup]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sabic_endorse_coo_test_backup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sabic_endorse_coo_test_backup](
	[RowId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ExportNo] [numeric](9, 0) NULL,
	[DateGenerated] [datetime] NULL,
	[SerialNo] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Heijry] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SobDate] [datetime] NULL,
	[CountryInitials] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OrderNo] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DeliveryNo] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ShipmentNo] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[InvoiceNo] [numeric](9, 0) NULL,
	[Remarks] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Note] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Electronic] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[sabic_endorse_coo_test_backup] TO  SCHEMA OWNER 
GO
