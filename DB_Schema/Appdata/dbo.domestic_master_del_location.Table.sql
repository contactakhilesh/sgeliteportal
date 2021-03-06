USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [domestic_master_del_location](
	[loc_code] [varchar](20) NOT NULL,
	[loc_desc] [varchar](200) NULL,
	[country_id] [varchar](10) NULL,
	[province] [varchar](100) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[longitude] [numeric](10, 5) NULL,
	[latitude] [numeric](10, 5) NULL,
 CONSTRAINT [PK_domestic_master_del_location] PRIMARY KEY CLUSTERED 
(
	[loc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
