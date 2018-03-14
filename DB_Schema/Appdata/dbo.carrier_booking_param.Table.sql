USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_booking_param](
	[export_n] [numeric](10, 0) NULL,
	[param1] [varchar](255) NULL,
	[param2] [varchar](255) NULL,
	[param3] [varchar](500) NULL,
	[param4] [varchar](255) NULL,
	[param5] [varchar](255) NULL,
	[booking_type] [varchar](50) NULL,
	[param6] [varchar](100) NULL,
	[param7] [varchar](100) NULL
) ON [PRIMARY]

GO
