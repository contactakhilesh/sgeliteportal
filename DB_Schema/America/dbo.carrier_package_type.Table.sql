USE [AMERICA]
GO
/****** Object:  Table [dbo].[carrier_package_type]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carrier_package_type](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[vendor_id] [nvarchar](10) NOT NULL,
	[package_type] [nvarchar](100) NOT NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [PK__carrier_package___4A8310C6] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[carrier_package_type] TO  SCHEMA OWNER 
GO
