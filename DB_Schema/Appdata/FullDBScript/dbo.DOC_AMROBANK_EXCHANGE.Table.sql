USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_AMROBANK_EXCHANGE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_AMROBANK_EXCHANGE]
GO
/****** Object:  Table [dbo].[DOC_AMROBANK_EXCHANGE]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_AMROBANK_EXCHANGE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_AMROBANK_EXCHANGE](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exg_amount] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exg_date] [datetime] NULL,
	[payment_term] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[to_order] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amount_words] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[credit_no] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[credit_dt] [datetime] NULL,
	[issued_by] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[issued_to] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_AMROBANK_EXCHANGE] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_AMROBANK_EXCHANGE] TO [public] AS [dbo]
GO
