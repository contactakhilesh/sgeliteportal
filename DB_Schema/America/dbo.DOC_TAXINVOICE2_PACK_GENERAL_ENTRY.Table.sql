USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_TAXINVOICE2_PACK_GENERAL_ENTRY]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_TAXINVOICE2_PACK_GENERAL_ENTRY](
	[doc_head_no] [varchar](30) NOT NULL,
	[doc_title] [varchar](200) NULL,
	[bill_lading_dt] [datetime] NULL,
	[vessel] [varchar](50) NULL,
	[invoice_no] [varchar](100) NULL,
	[ref_doc_no] [varchar](50) NULL,
	[cust_account_no] [varchar](50) NULL,
	[inco_terms] [varchar](50) NULL,
	[mode_of_transport] [varchar](50) NULL,
	[invoice_dt] [datetime] NULL,
	[remit_to_bank] [varchar](600) NULL,
	[pay_due_dt] [datetime] NULL,
	[prod_del_no] [varchar](30) NULL,
	[pl_prod_taken] [varchar](100) NULL,
	[prod_freight] [numeric](11, 3) NULL,
	[bl_to_acc] [varchar](30) NULL,
	[sl_to_acc] [varchar](30) NULL,
	[cfr_fob] [varchar](30) NULL,
	[print_freight] [varchar](10) NULL,
	[discount_clause] [varchar](20) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_TAXINVOICE2_PACK_GENERAL_ENTRY] TO  SCHEMA OWNER 
GO
