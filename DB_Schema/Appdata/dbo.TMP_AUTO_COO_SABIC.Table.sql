USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TMP_AUTO_COO_SABIC](
	[EXPORT_N] [numeric](18, 0) NOT NULL,
	[EXPORT_REF_N] [numeric](18, 0) NOT NULL,
	[CUST_ID] [varchar](10) NULL,
	[DELIVERY_NO] [varchar](30) NOT NULL,
	[MODIFIED_BY] [varchar](20) NULL
) ON [PRIMARY]

GO
