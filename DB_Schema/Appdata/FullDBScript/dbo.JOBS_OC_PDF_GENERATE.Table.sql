USE [appdata]
GO
/****** Object:  Table [dbo].[JOBS_OC_PDF_GENERATE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[JOBS_OC_PDF_GENERATE]
GO
/****** Object:  Table [dbo].[JOBS_OC_PDF_GENERATE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JOBS_OC_PDF_GENERATE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JOBS_OC_PDF_GENERATE](
	[ROW_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[SHIPPER_REF] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DOC_TYPE] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UPD_DT] [datetime] NULL,
	[CREATED_FLAG] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SEQ_NO] [numeric](10, 0) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[JOBS_OC_PDF_GENERATE] TO  SCHEMA OWNER 
GO
