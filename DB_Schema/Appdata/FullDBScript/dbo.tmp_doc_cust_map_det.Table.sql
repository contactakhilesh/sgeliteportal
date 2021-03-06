USE [appdata]
GO
/****** Object:  Table [dbo].[tmp_doc_cust_map_det]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_doc_cust_map_det]
GO
/****** Object:  Table [dbo].[tmp_doc_cust_map_det]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_doc_cust_map_det]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_doc_cust_map_det](
	[job_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[job_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[edoc_set] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[line_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[link] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_doc_cust_map_det] TO  SCHEMA OWNER 
GO
