USE [AMERICA]
GO
/****** Object:  Table [dbo].[SYS_COUNTER_ISSUED]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_COUNTER_ISSUED](
	[RowId] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CustomerId] [char](50) NOT NULL,
	[CounterId] [char](20) NOT NULL,
	[CounterValue] [numeric](18, 0) NULL,
	[InsertDate] [datetime] NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[SYS_COUNTER_ISSUED] TO  SCHEMA OWNER 
GO
