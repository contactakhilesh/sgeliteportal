USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp_LSR_inv](
	[invoice_n] [numeric](10, 0) NULL,
	[lsr_file] [varchar](100) NULL,
	[reason] [varchar](50) NULL
) ON [PRIMARY]

GO
