USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DROP_DOWN_DESC_REF](
	[Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CustomterId] [varchar](20) NOT NULL,
	[ColumnName] [char](100) NOT NULL,
	[Description] [varchar](1000) NOT NULL
) ON [PRIMARY]

GO
