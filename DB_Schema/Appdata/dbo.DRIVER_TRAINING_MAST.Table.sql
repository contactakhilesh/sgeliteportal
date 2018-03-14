USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DRIVER_TRAINING_MAST](
	[TRAINING_ID] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[DRIVER_ID] [decimal](18, 0) NOT NULL,
	[JOINING_DT] [datetime] NOT NULL,
	[TRAINED_BY] [varchar](20) NOT NULL,
	[TRAINING_START_DT] [datetime] NULL,
	[TRAINING_END_DT] [datetime] NULL,
	[REMARKS] [varchar](100) NULL,
	[CREATED_BY] [varchar](10) NULL,
	[CREATED_DT] [datetime] NULL,
	[LAST_UPDATED_BY] [varchar](10) NULL,
	[LAST_UPDATED_DT] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TRAINING_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
