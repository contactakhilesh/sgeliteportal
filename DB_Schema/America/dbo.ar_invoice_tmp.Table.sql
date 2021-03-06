USE [AMERICA]
GO
/****** Object:  Table [dbo].[ar_invoice_tmp]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ar_invoice_tmp](
	[party_type] [varchar](5) NULL,
	[party_code] [varchar](20) NULL,
	[party_name] [varchar](255) NULL,
	[doc_no] [varchar](20) NULL,
	[doc_type] [varchar](20) NULL,
	[doc_date] [datetime] NULL,
	[doc_curr] [varchar](10) NULL,
	[doc_amt] [decimal](16, 2) NULL,
	[loc_amt] [decimal](16, 2) NULL,
	[rowid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [pk_ar_invoice_tmp] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[ar_invoice_tmp] TO  SCHEMA OWNER 
GO
