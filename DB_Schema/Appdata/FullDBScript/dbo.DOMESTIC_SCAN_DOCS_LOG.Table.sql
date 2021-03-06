USE [appdata]
GO
/****** Object:  Table [dbo].[DOMESTIC_SCAN_DOCS_LOG]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOMESTIC_SCAN_DOCS_LOG]
GO
/****** Object:  Table [dbo].[DOMESTIC_SCAN_DOCS_LOG]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOMESTIC_SCAN_DOCS_LOG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOMESTIC_SCAN_DOCS_LOG](
	[domestic_job_n] [decimal](18, 0) NOT NULL,
	[doc_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[pdf_name] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[active_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_DOMESTIC_SCAN_DOCS_LOG] PRIMARY KEY CLUSTERED 
(
	[domestic_job_n] ASC,
	[doc_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOMESTIC_SCAN_DOCS_LOG] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOMESTIC_SCAN_DOCS_LOG] TO [public] AS [dbo]
GO
