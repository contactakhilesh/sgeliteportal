USE [appdata]
GO
/****** Object:  Table [dbo].[sabic_uploadlcreport]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[sabic_uploadlcreport]
GO
/****** Object:  Table [dbo].[sabic_uploadlcreport]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sabic_uploadlcreport]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sabic_uploadlcreport](
	[seq_no] [numeric](18, 0) NOT NULL,
	[record_create_date] [datetime] NOT NULL,
	[cust_country] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sold_to_cust] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ext_fin_doc_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_crcy] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fd_no] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fd_doc_val] [numeric](18, 2) NULL,
	[open_val] [numeric](18, 2) NULL,
	[open_date] [date] NULL,
	[create_date] [date] NULL,
	[red_date] [date] NULL,
	[latest_ship_date] [date] NULL,
	[val_end_date] [date] NULL,
	[conf_bank_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[neg_bank_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[neg_bank_country] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[open_bank_country] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[terms_payment] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[open_bank_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[allowed_draft] [numeric](18, 2) NULL,
	[search_term] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__sabic_up__4B660EB11C1567FC] PRIMARY KEY CLUSTERED 
(
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[sabic_uploadlcreport] TO  SCHEMA OWNER 
GO
