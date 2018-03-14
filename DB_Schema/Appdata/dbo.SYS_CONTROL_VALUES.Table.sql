USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SYS_CONTROL_VALUES](
	[GST_P] [numeric](11, 3) NULL,
	[INV_REPRN_COUNT] [numeric](18, 0) NULL,
	[INV_ROUND_A] [numeric](18, 0) NULL,
	[ID_LOCKUP_COUNT] [numeric](18, 0) NULL,
	[CUURENT_FY] [varchar](4) NULL
) ON [PRIMARY]

GO
