USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_CUST_MAP_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_CUST_MAP_DET]
GO
/****** Object:  Table [dbo].[DOC_CUST_MAP_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CUST_MAP_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_CUST_MAP_DET](
	[job_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[job_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[edoc_set] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[line_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[doc_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[link] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [pk_doc_cust_map_det] PRIMARY KEY CLUSTERED 
(
	[job_no] ASC,
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_CUST_MAP_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_CUST_MAP_DET] TO [public] AS [dbo]
GO
