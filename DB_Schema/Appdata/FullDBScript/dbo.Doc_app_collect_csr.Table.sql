USE [appdata]
GO
/****** Object:  Table [dbo].[Doc_app_collect_csr]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[Doc_app_collect_csr]
GO
/****** Object:  Table [dbo].[Doc_app_collect_csr]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doc_app_collect_csr]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Doc_app_collect_csr](
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[csr_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[csr_tel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[csr_fax] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[csr_email] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_doc_app_collect_csr] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Doc_app_collect_csr] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Doc_app_collect_csr] TO [public] AS [dbo]
GO
