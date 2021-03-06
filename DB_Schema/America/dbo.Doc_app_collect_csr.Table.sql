USE [AMERICA]
GO
/****** Object:  Table [dbo].[Doc_app_collect_csr]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doc_app_collect_csr](
	[cust_id] [varchar](10) NULL,
	[csr_name] [varchar](50) NULL,
	[csr_tel] [varchar](50) NULL,
	[csr_fax] [varchar](50) NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[csr_email] [varchar](200) NULL,
 CONSTRAINT [PK_doc_app_collect_csr] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Doc_app_collect_csr] TO  SCHEMA OWNER 
GO
