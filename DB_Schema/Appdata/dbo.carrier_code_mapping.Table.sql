USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_code_mapping](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[vendor_id] [nvarchar](10) NOT NULL,
	[type] [nvarchar](10) NOT NULL,
	[input_code] [nvarchar](20) NOT NULL,
	[output_code] [nvarchar](100) NOT NULL,
	[created_by] [nvarchar](10) NOT NULL,
	[created_dt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
