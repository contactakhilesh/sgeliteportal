USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_BILL_OF_EXCHANGE]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_BILL_OF_EXCHANGE] DROP CONSTRAINT IF EXISTS [DF_DOC_BILL_OF_EXCHANGE_title]
GO
/****** Object:  Table [dbo].[DOC_BILL_OF_EXCHANGE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_BILL_OF_EXCHANGE]
GO
/****** Object:  Table [dbo].[DOC_BILL_OF_EXCHANGE]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_BILL_OF_EXCHANGE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_BILL_OF_EXCHANGE](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_no1] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inv_dt1] [datetime] NULL,
	[usd1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tenor1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amount_words1] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[credit_no1] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[credit_dt1] [datetime] NULL,
	[issued_by1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[to1] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_no2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inv_dt2] [datetime] NULL,
	[usd2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tenor2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amount_words2] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[credit_no2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[credit_dt2] [datetime] NULL,
	[issued_by2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[to2] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[signparty1] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[signparty2] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_BILL_OF_EXCHANGE] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_BILL_OF_EXCHANGE] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_BILL_OF_EXCHANGE] TO [public] AS [dbo]
GO
