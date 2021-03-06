USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ORDER_RESPONSE](
	[export_n] [numeric](10, 0) NOT NULL,
	[response_type] [int] NOT NULL,
	[processed] [char](1) NULL,
	[datesent] [datetime] NULL,
	[dateinserted] [datetime] NULL
) ON [PRIMARY]

GO
