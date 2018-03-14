USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DATAWINDOW_OBJECTS](
	[DataWindowName] [varchar](100) NOT NULL,
	[Scripts] [nvarchar](max) NOT NULL,
	[UploadDate] [datetime] NOT NULL,
	[Remarks] [varchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
