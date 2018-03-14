USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PERMIT_MASTER_NRT](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[vessel] [varchar](30) NULL,
	[nrt] [numeric](10, 3) NULL
) ON [PRIMARY]

GO
