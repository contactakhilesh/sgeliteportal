USE [appdata]
GO
/****** Object:  Table [dbo].[PLAN_TABLE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[PLAN_TABLE]
GO
/****** Object:  Table [dbo].[PLAN_TABLE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PLAN_TABLE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PLAN_TABLE](
	[STATEMENT_ID] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TIMESTAMP] [datetime] NULL,
	[REMARKS] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OPERATION] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OPTIONS] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OBJECT_NODE] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OBJECT_OWNER] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OBJECT_NAME] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OBJECT_INSTANCE] [numeric](18, 0) NULL,
	[OBJECT_TYPE] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OPTIMIZER] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SEARCH_COLUMNS] [numeric](18, 0) NULL,
	[ID] [numeric](18, 0) NULL,
	[PARENT_ID] [numeric](18, 0) NULL,
	[POSITION] [numeric](18, 0) NULL,
	[COST] [numeric](18, 0) NULL,
	[CARDINALITY] [numeric](18, 0) NULL,
	[BYTES] [numeric](18, 0) NULL,
	[OTHER_TAG] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OTHER] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[PLAN_TABLE] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[PLAN_TABLE] TO [public] AS [dbo]
GO
