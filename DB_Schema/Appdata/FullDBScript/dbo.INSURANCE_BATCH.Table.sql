USE [appdata]
GO
/****** Object:  Table [dbo].[INSURANCE_BATCH]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[INSURANCE_BATCH]
GO
/****** Object:  Table [dbo].[INSURANCE_BATCH]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSURANCE_BATCH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[INSURANCE_BATCH](
	[export_n] [numeric](10, 0) NULL,
	[cert_n] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_name] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[issue_date] [datetime] NULL,
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_ord_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[INSURANCE_BATCH] TO  SCHEMA OWNER 
GO
