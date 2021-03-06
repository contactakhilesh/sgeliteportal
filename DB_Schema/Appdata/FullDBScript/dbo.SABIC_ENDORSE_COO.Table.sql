USE [appdata]
GO
/****** Object:  Table [dbo].[SABIC_ENDORSE_COO]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[SABIC_ENDORSE_COO]
GO
/****** Object:  Table [dbo].[SABIC_ENDORSE_COO]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SABIC_ENDORSE_COO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SABIC_ENDORSE_COO](
	[RowId] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
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
	[Electronic] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[indicator] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[endorse_coo] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mci_coo] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_SABIC_ENDORSE_COO] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[SABIC_ENDORSE_COO] TO  SCHEMA OWNER 
GO
