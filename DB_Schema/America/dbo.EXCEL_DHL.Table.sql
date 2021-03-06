USE [AMERICA]
GO
/****** Object:  Table [dbo].[EXCEL_DHL]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXCEL_DHL](
	[row_id] [numeric](10, 0) NOT NULL,
	[bill_acct_no] [varchar](12) NULL,
	[invoice_no] [varchar](15) NULL,
	[invoice_date] [datetime] NULL,
	[invoice_due_date] [datetime] NULL,
	[invoice_amount] [decimal](9, 2) NULL,
	[shipper_ref] [varchar](100) NULL,
	[airway_bill_no] [varchar](100) NULL,
	[filename] [varchar](100) NULL,
	[date_uploaded] [datetime] NULL,
 CONSTRAINT [PK_EXCEL_DHL] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EXCEL_DHL] TO  SCHEMA OWNER 
GO
