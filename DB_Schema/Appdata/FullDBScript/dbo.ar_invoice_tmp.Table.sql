USE [appdata]
GO
/****** Object:  Table [dbo].[ar_invoice_tmp]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[ar_invoice_tmp]
GO
/****** Object:  Table [dbo].[ar_invoice_tmp]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ar_invoice_tmp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ar_invoice_tmp](
	[party_type] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[party_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[party_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_date] [datetime] NULL,
	[doc_curr] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_amt] [decimal](16, 2) NULL,
	[loc_amt] [decimal](16, 2) NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [pk_ar_invoice_tmp] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[ar_invoice_tmp] TO  SCHEMA OWNER 
GO
