USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COL_UPTD_WITIN_THE_DAY](
	[column_name] [varchar](150) NOT NULL,
	[export_n] [numeric](18, 0) NOT NULL,
	[date_updated] [datetime] NOT NULL,
	[old_datetime_value] [datetime] NULL,
	[new_datetime_value] [datetime] NULL,
	[old_character_value] [varchar](1000) NULL,
	[new_character_value] [varchar](1000) NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[user_last_updated] [varchar](100) NULL,
 CONSTRAINT [PK_rowid] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
