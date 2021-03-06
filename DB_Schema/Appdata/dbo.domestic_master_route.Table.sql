USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [domestic_master_route](
	[origin_loc] [varchar](20) NOT NULL,
	[destination_loc] [varchar](20) NOT NULL,
	[zone_id] [varchar](10) NOT NULL,
	[zone_desc] [varchar](200) NULL,
	[cust_id] [varchar](10) NOT NULL,
	[distance] [varchar](20) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_master_route] PRIMARY KEY CLUSTERED 
(
	[origin_loc] ASC,
	[destination_loc] ASC,
	[zone_id] ASC,
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
