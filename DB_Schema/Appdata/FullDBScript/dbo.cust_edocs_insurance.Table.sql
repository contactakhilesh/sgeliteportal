USE [appdata]
GO
/****** Object:  Trigger [trg_insert_doc_cert_range]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_insert_doc_cert_range]
GO
/****** Object:  Trigger [trg_delete_doc_cert_range]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_delete_doc_cert_range]
GO
/****** Object:  Table [dbo].[cust_edocs_insurance]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[cust_edocs_insurance]
GO
/****** Object:  Table [dbo].[cust_edocs_insurance]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cust_edocs_insurance]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cust_edocs_insurance](
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[from_n] [numeric](10, 0) NOT NULL,
	[to_n] [numeric](10, 0) NOT NULL,
	[prefix] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[valid] [numeric](1, 0) NOT NULL,
	[user_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[entry_d] [datetime] NULL,
	[max_n] [numeric](10, 0) NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[parent_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_status] [int] NULL,
 CONSTRAINT [PK_cust_edocs_insurance] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[cust_edocs_insurance] TO  SCHEMA OWNER 
GO
