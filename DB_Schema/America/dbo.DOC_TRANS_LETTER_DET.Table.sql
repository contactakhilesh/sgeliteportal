USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_TRANS_LETTER_DET]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_TRANS_LETTER_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[header_option] [varchar](2) NULL,
	[title] [varchar](200) NULL,
	[creation_dt] [datetime] NULL,
	[shipper_ref] [varchar](200) NULL,
	[vessel] [varchar](50) NULL,
	[sailing_dt] [datetime] NULL,
	[prepared_by] [varchar](50) NULL,
	[elite_ref] [varchar](80) NULL,
	[bl_no] [varchar](50) NULL,
	[eta] [datetime] NULL,
	[remarks1] [varchar](200) NULL,
	[remarks2] [varchar](200) NULL,
	[po_no] [varchar](200) NULL,
	[invoice_no] [varchar](50) NULL,
	[cust_ref_no] [varchar](50) NULL,
	[payment_inst] [varchar](500) NULL,
	[special_inst] [varchar](500) NULL,
	[comp_name] [varchar](200) NULL,
	[user_id] [varchar](50) NULL,
	[user_name] [varchar](80) NULL,
	[user_tel] [varchar](50) NULL,
	[shipper_ref1] [varchar](50) NULL,
	[comp_desc] [varchar](200) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_TRANS_LETTER_DET] TO  SCHEMA OWNER 
GO
