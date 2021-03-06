USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [domestic_master_zone](
	[cust_id] [varchar](10) NOT NULL,
	[zone_id] [varchar](10) NOT NULL,
	[zone_desc] [varchar](200) NOT NULL,
	[zone_charge] [decimal](9, 4) NULL,
	[zone_rate] [decimal](9, 4) NULL,
	[distance] [varchar](20) NULL,
	[commodity_type] [varchar](20) NOT NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[entry_d] [datetime] NULL,
	[user_id] [varchar](20) NULL,
	[modified_d] [datetime] NULL,
	[modified_by] [varchar](20) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_master_zone] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[zone_id] ASC,
	[commodity_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
