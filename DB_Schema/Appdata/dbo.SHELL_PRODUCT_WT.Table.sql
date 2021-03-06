USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SHELL_PRODUCT_WT](
	[ProductName] [varchar](100) NULL,
	[HsCode] [varchar](40) NULL,
	[PackingNetWt] [varchar](40) NULL,
	[NetWt] [numeric](18, 3) NULL,
	[GrossWt] [numeric](18, 3) NULL,
	[M3] [numeric](18, 3) NULL,
	[Remarks] [varchar](150) NULL
) ON [PRIMARY]

GO
