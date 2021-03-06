USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_DOCUMENTARY_COLLECTION]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_DOCUMENTARY_COLLECTION](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[left_add1] [varchar](50) NULL,
	[left_add2] [varchar](50) NULL,
	[left_add3] [varchar](50) NULL,
	[left_add4] [varchar](50) NULL,
	[left_add5] [varchar](50) NULL,
	[right_add1] [varchar](50) NULL,
	[right_add2] [varchar](50) NULL,
	[right_add3] [varchar](50) NULL,
	[right_add4] [varchar](50) NULL,
	[right_add5] [varchar](50) NULL,
	[head_remarks] [varchar](300) NULL,
	[collecting_bank1] [varchar](80) NULL,
	[collecting_bank2] [varchar](80) NULL,
	[collecting_bank3] [varchar](80) NULL,
	[collecting_bank4] [varchar](80) NULL,
	[drawee_add1] [varchar](80) NULL,
	[drawee_add2] [varchar](80) NULL,
	[drawee_add3] [varchar](80) NULL,
	[drawee_add4] [varchar](80) NULL,
	[drawee_add5] [varchar](80) NULL,
	[drawee_add6] [varchar](80) NULL,
	[drawer_add1] [varchar](80) NULL,
	[drawer_add2] [varchar](80) NULL,
	[drawer_add3] [varchar](80) NULL,
	[drawer_add4] [varchar](80) NULL,
	[drawer_add5] [varchar](80) NULL,
	[drawer_add6] [varchar](80) NULL,
	[dir_collect_nr] [varchar](50) NULL,
	[tenor] [varchar](50) NULL,
	[amount] [varchar](50) NULL,
	[drafts] [varchar](10) NULL,
	[bls] [varchar](10) NULL,
	[invoices] [varchar](10) NULL,
	[plist] [varchar](10) NULL,
	[msds] [varchar](10) NULL,
	[eur1] [varchar](10) NULL,
	[atr] [varchar](10) NULL,
	[analyse1] [varchar](10) NULL,
	[analyse2] [varchar](10) NULL,
	[ship_from] [varchar](50) NULL,
	[ship_to] [varchar](50) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[inst1] [varchar](2) NULL,
	[inst2] [varchar](2) NULL,
	[inst3] [varchar](2) NULL,
	[inst4] [varchar](2) NULL,
	[inst5] [varchar](2) NULL,
	[inst6] [varchar](2) NULL,
	[inst7] [varchar](2) NULL,
	[inst8] [varchar](2) NULL,
	[inst9] [varchar](2) NULL,
	[remit1] [varchar](2) NULL,
	[remit2] [varchar](2) NULL,
	[remit3] [varchar](2) NULL,
	[remit4] [varchar](2) NULL,
	[remit5] [varchar](2) NULL,
	[special_inst] [varchar](300) NULL,
	[create_dt] [datetime] NULL,
	[due_date] [varchar](50) NULL,
	[remarks] [varchar](50) NULL,
	[etd] [datetime] NULL,
	[shipper_ref] [varchar](50) NULL,
	[invoice_no] [varchar](50) NULL,
	[user_id] [varchar](50) NULL,
	[elite_ref] [varchar](50) NULL,
 CONSTRAINT [PK_DOC_DOCUMENTARY_COLLECTION] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_DOCUMENTARY_COLLECTION] TO  SCHEMA OWNER 
GO
