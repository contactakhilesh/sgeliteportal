USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PDF_UPLOAD_LOG](
	[UPLOAD_ID] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[JOB_N] [varchar](10) NULL,
	[JOB_TYPE] [varchar](10) NULL,
	[DOC_TYPE] [varchar](50) NULL,
	[ORG_PDF_FILE] [varchar](100) NULL,
	[NEW_PDF_FILE] [varchar](100) NULL,
	[FILE_OPEN_STATUS] [varchar](500) NULL,
	[FILE_UPLOAD_STATUS] [varchar](500) NULL,
	[LOG_USER] [varchar](50) NULL,
	[LOG_DATE] [datetime] NULL
) ON [PRIMARY]

GO
