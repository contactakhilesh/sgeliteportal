USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_cost_statement_hd](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[cust_id] [varchar](10) NOT NULL,
	[cert_type] [varchar](2) NOT NULL,
	[country_id] [varchar](10) NOT NULL,
	[technical_name] [varchar](100) NOT NULL,
	[created_by] [varchar](10) NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_permit_cost_statement_hd] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
