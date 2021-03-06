USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permit_product_auto](
	[CUST_ID] [varchar](15) NOT NULL,
	[PRODUCT_ID] [varchar](20) NOT NULL,
	[COMP_NAME] [varchar](50) NOT NULL,
	[country_origin] [varchar](10) NULL,
 CONSTRAINT [pk_permit_product_auto] PRIMARY KEY NONCLUSTERED 
(
	[CUST_ID] ASC,
	[PRODUCT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
