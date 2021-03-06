USE [appdata]
GO
/****** Object:  Table [dbo].[EXCEL_DHL]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXCEL_DHL]
GO
/****** Object:  Table [dbo].[EXCEL_DHL]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXCEL_DHL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXCEL_DHL](
	[row_id] [numeric](10, 0) NOT NULL,
	[bill_acct_no] [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_no] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_date] [datetime] NULL,
	[invoice_due_date] [datetime] NULL,
	[invoice_amount] [decimal](9, 2) NULL,
	[shipper_ref] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[airway_bill_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[filename] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[date_uploaded] [datetime] NULL,
 CONSTRAINT [PK_EXCEL_DHL] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXCEL_DHL] TO  SCHEMA OWNER 
GO
