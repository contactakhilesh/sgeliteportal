USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [doc_cert_range](
	[drid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[drno] [numeric](10, 0) NULL,
	[drinsuranceno] [varchar](50) NULL,
	[drcustid] [varchar](10) NULL,
	[drbatchid] [numeric](21, 0) NULL,
	[druserid] [varchar](30) NULL,
	[drstatus] [varchar](10) NULL,
	[drjobno] [numeric](10, 0) NULL,
	[isused] [char](1) NOT NULL,
	[ENVIRONMENT] [char](10) NULL,
 CONSTRAINT [PK_doc_cert_range] PRIMARY KEY CLUSTERED 
(
	[drid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
