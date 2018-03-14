USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AUTO_PROFORMA_LOG](
	[export_n] [numeric](10, 0) NOT NULL,
	[log_description] [varchar](255) NULL,
	[entry_d] [datetime] NULL,
	[entry_by] [varchar](10) NULL
) ON [PRIMARY]

GO
