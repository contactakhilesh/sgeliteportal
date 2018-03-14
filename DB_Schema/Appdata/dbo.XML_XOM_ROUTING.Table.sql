USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_XOM_ROUTING](
	[seq_n] [numeric](18, 0) NOT NULL,
	[sc_env] [varchar](10) NULL,
	[country_id] [varchar](50) NULL,
	[email_to] [varchar](100) NULL,
	[cust_id] [varchar](10) NULL,
	[product_ids] [varchar](100) NULL,
 CONSTRAINT [PK_XML_XOM_ROUTING] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
