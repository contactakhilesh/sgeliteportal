USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MARKING_MULTIPLIER](
	[product_id] [varchar](20) NOT NULL,
	[net_weight] [decimal](15, 5) NULL,
	[gross_weight] [decimal](15, 5) NULL,
	[m3] [decimal](15, 5) NULL
) ON [PRIMARY]

GO
