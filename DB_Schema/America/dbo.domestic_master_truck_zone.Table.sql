USE [AMERICA]
GO
/****** Object:  Table [dbo].[domestic_master_truck_zone]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[domestic_master_truck_zone](
	[cust_id] [varchar](10) NOT NULL,
	[truck_id] [varchar](50) NOT NULL,
	[zone_id] [varchar](10) NOT NULL,
	[truck_charge] [decimal](9, 4) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_master_truck_zone] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[truck_id] ASC,
	[zone_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[domestic_master_truck_zone] TO  SCHEMA OWNER 
GO
