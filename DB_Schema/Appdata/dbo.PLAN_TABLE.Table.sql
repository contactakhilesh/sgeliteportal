USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PLAN_TABLE](
	[STATEMENT_ID] [varchar](30) NULL,
	[TIMESTAMP] [datetime] NULL,
	[REMARKS] [varchar](80) NULL,
	[OPERATION] [varchar](30) NULL,
	[OPTIONS] [varchar](30) NULL,
	[OBJECT_NODE] [varchar](128) NULL,
	[OBJECT_OWNER] [varchar](30) NULL,
	[OBJECT_NAME] [varchar](30) NULL,
	[OBJECT_INSTANCE] [numeric](18, 0) NULL,
	[OBJECT_TYPE] [varchar](30) NULL,
	[OPTIMIZER] [varchar](255) NULL,
	[SEARCH_COLUMNS] [numeric](18, 0) NULL,
	[ID] [numeric](18, 0) NULL,
	[PARENT_ID] [numeric](18, 0) NULL,
	[POSITION] [numeric](18, 0) NULL,
	[COST] [numeric](18, 0) NULL,
	[CARDINALITY] [numeric](18, 0) NULL,
	[BYTES] [numeric](18, 0) NULL,
	[OTHER_TAG] [varchar](255) NULL,
	[OTHER] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
