USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_pri_prod](
	[country_id] [varchar](2) NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[prod_id] [varchar](20) NULL
) ON [PRIMARY]

GO
