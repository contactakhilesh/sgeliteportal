USE [appdata]
GO
/****** Object:  Table [dbo].[ACTIVE_LOG]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[ACTIVE_LOG]
GO
/****** Object:  Table [dbo].[ACTIVE_LOG]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACTIVE_LOG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ACTIVE_LOG](
	[ACTIVITY_SEQ_N] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ACTIVITY_ID] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ACTIVITY_DESC] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USER_ID] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SCHEMANAME] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OSUSER] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MACHINE] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TERMINAL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROGRAM] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATE_D] [datetime] NULL,
 CONSTRAINT [PK_ACTIVE_LOG] PRIMARY KEY NONCLUSTERED 
(
	[ACTIVITY_SEQ_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[ACTIVE_LOG] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[ACTIVE_LOG] TO [public] AS [dbo]
GO
