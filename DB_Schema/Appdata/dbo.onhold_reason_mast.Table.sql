USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [onhold_reason_mast](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[onhold_reason] [varchar](255) NULL
) ON [PRIMARY]

GO
