USE [appdata]
GO
/****** Object:  Table [dbo].[DATAWINDOW_OBJECTS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DATAWINDOW_OBJECTS]
GO
/****** Object:  Table [dbo].[DATAWINDOW_OBJECTS]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DATAWINDOW_OBJECTS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DATAWINDOW_OBJECTS](
	[DataWindowName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Scripts] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UploadDate] [datetime] NOT NULL,
	[Remarks] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DATAWINDOW_OBJECTS] TO  SCHEMA OWNER 
GO
