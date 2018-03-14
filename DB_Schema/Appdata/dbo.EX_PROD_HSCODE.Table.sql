USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EX_PROD_HSCODE](
	[cust_id] [varchar](10) NOT NULL,
	[prod_id] [varchar](20) NOT NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[hs_code] [varchar](20) NULL,
 CONSTRAINT [PK_EX_PROD_HSCODE] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[prod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
