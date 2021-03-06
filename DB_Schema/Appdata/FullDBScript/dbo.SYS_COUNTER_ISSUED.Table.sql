USE [appdata]
GO
/****** Object:  Trigger [TrgAfterInsert]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[TrgAfterInsert]
GO
/****** Object:  Table [dbo].[SYS_COUNTER_ISSUED]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[SYS_COUNTER_ISSUED]
GO
/****** Object:  Table [dbo].[SYS_COUNTER_ISSUED]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYS_COUNTER_ISSUED]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SYS_COUNTER_ISSUED](
	[RowId] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CustomerId] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CounterId] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CounterValue] [numeric](18, 0) NULL,
	[InsertDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[SYS_COUNTER_ISSUED] TO  SCHEMA OWNER 
GO
