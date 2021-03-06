USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_COLLECTION_ORDER]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_COLLECTION_ORDER](
	[doc_head_no] [varchar](30) NOT NULL,
	[title] [varchar](200) NULL,
	[left_add1] [varchar](600) NULL,
	[left_add2] [varchar](50) NULL,
	[left_add3] [varchar](50) NULL,
	[left_add4] [varchar](50) NULL,
	[left_add5] [varchar](50) NULL,
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
	[amount] [varchar](50) NULL,
	[inst1] [varchar](2) NULL,
	[inst2] [varchar](2) NULL,
	[inst3] [varchar](2) NULL,
	[inst4] [varchar](2) NULL,
	[inst5] [varchar](2) NULL,
	[inst6] [varchar](2) NULL,
	[inst7] [varchar](2) NULL,
	[inst8] [varchar](2) NULL,
	[inst9] [varchar](2) NULL,
	[inst10] [varchar](2) NULL,
	[inst11] [varchar](2) NULL,
	[inst12] [varchar](2) NULL,
	[inst13] [varchar](2) NULL,
	[inst14] [varchar](2) NULL,
	[inst15] [varchar](2) NULL,
	[inst16] [varchar](2) NULL,
	[inst17] [varchar](2) NULL,
	[create_dt] [datetime] NULL,
	[etd] [datetime] NULL,
	[shipper_ref] [varchar](50) NULL,
	[invoice_no] [varchar](50) NULL,
	[user_id] [varchar](50) NULL,
	[elite_ref] [varchar](50) NULL,
	[payment_terms] [varchar](500) NULL,
	[foot_shipper] [varchar](80) NULL,
	[foot_sig_ind] [varchar](2) NULL,
 CONSTRAINT [PK_DOC_COLLECTION_ORDER] PRIMARY KEY NONCLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_COLLECTION_ORDER] TO  SCHEMA OWNER 
GO
