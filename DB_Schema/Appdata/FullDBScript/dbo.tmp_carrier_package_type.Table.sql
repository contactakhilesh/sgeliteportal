USE [appdata]
GO
/****** Object:  Table [dbo].[tmp_carrier_package_type]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_carrier_package_type]
GO
/****** Object:  Table [dbo].[tmp_carrier_package_type]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_carrier_package_type]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_carrier_package_type](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[vendor_id] [nvarchar](10) COLLATE Chinese_PRC_Stroke_90_CI_AI_KS_WS NOT NULL,
	[sc_package_code] [nvarchar](10) COLLATE Chinese_PRC_Stroke_90_CI_AI_KS_WS NOT NULL,
	[cr_package_type] [nvarchar](100) COLLATE Chinese_PRC_Stroke_90_CI_AI_KS_WS NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[created_by] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[tmp_carrier_package_type] TO  SCHEMA OWNER 
GO
