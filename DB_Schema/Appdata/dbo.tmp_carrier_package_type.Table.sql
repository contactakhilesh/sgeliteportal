USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tmp_carrier_package_type](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[vendor_id] [nvarchar](10) NOT NULL,
	[sc_package_code] [nvarchar](10) NOT NULL,
	[cr_package_type] [nvarchar](100) NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[created_by] [nvarchar](10) NULL
) ON [PRIMARY]

GO
