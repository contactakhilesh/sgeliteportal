USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_RESPONSE]') AND type in (N'U'))
ALTER TABLE [dbo].[ORDER_RESPONSE] DROP CONSTRAINT IF EXISTS [DF_ORDER_REPONSE_processed]
GO
/****** Object:  Table [dbo].[ORDER_RESPONSE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[ORDER_RESPONSE]
GO
/****** Object:  Table [dbo].[ORDER_RESPONSE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDER_RESPONSE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ORDER_RESPONSE](
	[export_n] [numeric](10, 0) NOT NULL,
	[response_type] [int] NOT NULL,
	[processed] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[datesent] [datetime] NULL,
	[dateinserted] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[ORDER_RESPONSE] TO  SCHEMA OWNER 
GO
