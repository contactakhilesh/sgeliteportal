USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SYS_COUNTER_ISSUED](
	[RowId] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CustomerId] [char](50) NOT NULL,
	[CounterId] [char](20) NOT NULL,
	[CounterValue] [numeric](18, 0) NULL,
	[InsertDate] [datetime] NULL
) ON [PRIMARY]

GO
