USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DOCUMENTARY_CREDIT]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_DOCUMENTARY_CREDIT] DROP CONSTRAINT IF EXISTS [DF_DOC_DOCUMENTARY_CREDIT_create_dt]
GO
/****** Object:  Table [dbo].[DOC_DOCUMENTARY_CREDIT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_DOCUMENTARY_CREDIT]
GO
/****** Object:  Table [dbo].[DOC_DOCUMENTARY_CREDIT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_DOCUMENTARY_CREDIT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_DOCUMENTARY_CREDIT](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[credit_no] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[issued_by] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ind1] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ind2] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ind3] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ind4] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ind5] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ind6] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ind7] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ind8] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tel] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amt] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tenor] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mail_ind1] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mail_ind2] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mail_ind3] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_doc1] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_doc2] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_doc3] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_doc4] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_doc5] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_doc6] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_doc7] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_doc8] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_doc9] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_doc10] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[no_doc11] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[our_acno] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[currency] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[disposal_tel] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exg_rate] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[acu_acno] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[currency1] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[utilise] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[loan_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_dt] [datetime] NULL,
 CONSTRAINT [PK_DOC_DOCUMENTARY_CREDIT] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_DOCUMENTARY_CREDIT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_DOCUMENTARY_CREDIT] TO [public] AS [dbo]
GO
