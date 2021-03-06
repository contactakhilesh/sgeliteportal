USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_TAXINVOICE2_PACK_GENERAL_ENTRY]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_TAXINVOICE2_PACK_GENERAL_ENTRY]
GO
/****** Object:  Table [dbo].[DOC_TAXINVOICE2_PACK_GENERAL_ENTRY]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_TAXINVOICE2_PACK_GENERAL_ENTRY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_TAXINVOICE2_PACK_GENERAL_ENTRY](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[doc_title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bill_lading_dt] [datetime] NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref_doc_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_account_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inco_terms] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mode_of_transport] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_dt] [datetime] NULL,
	[remit_to_bank] [varchar](600) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pay_due_dt] [datetime] NULL,
	[prod_del_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pl_prod_taken] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prod_freight] [numeric](11, 3) NULL,
	[bl_to_acc] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sl_to_acc] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cfr_fob] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[print_freight] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[discount_clause] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_TAXINVOICE2_PACK_GENERAL_ENTRY] TO  SCHEMA OWNER 
GO
