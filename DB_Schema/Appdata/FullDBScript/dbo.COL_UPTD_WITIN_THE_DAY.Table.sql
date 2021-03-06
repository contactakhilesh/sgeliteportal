USE [appdata]
GO
/****** Object:  Table [dbo].[COL_UPTD_WITIN_THE_DAY]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[COL_UPTD_WITIN_THE_DAY]
GO
/****** Object:  Table [dbo].[COL_UPTD_WITIN_THE_DAY]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COL_UPTD_WITIN_THE_DAY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COL_UPTD_WITIN_THE_DAY](
	[column_name] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[export_n] [numeric](18, 0) NOT NULL,
	[date_updated] [datetime] NOT NULL,
	[old_datetime_value] [datetime] NULL,
	[new_datetime_value] [datetime] NULL,
	[old_character_value] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[new_character_value] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[user_last_updated] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_rowid] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[COL_UPTD_WITIN_THE_DAY] TO  SCHEMA OWNER 
GO
