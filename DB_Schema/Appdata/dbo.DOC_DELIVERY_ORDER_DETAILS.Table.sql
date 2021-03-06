USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_DELIVERY_ORDER_DETAILS](
	[doc_head_no] [varchar](30) NOT NULL,
	[doc_title] [varchar](100) NOT NULL,
	[from_text] [varchar](50) NOT NULL,
	[to_text] [varchar](50) NOT NULL,
	[collection_period_text] [varchar](100) NOT NULL,
	[collection_period_entry] [varchar](100) NULL,
	[lob_name] [varchar](100) NOT NULL,
	[lob_attn] [varchar](100) NULL,
	[lob_attn_position] [varchar](100) NULL,
	[lob_tel] [varchar](100) NULL,
	[lob_fax] [varchar](50) NULL,
	[lob_direct_line] [varchar](100) NULL,
	[lob_email] [varchar](50) NULL,
	[lob_mobile] [varchar](100) NULL,
	[tank_fare] [varchar](50) NULL,
	[remarks] [varchar](100) NULL,
	[lob_addr1] [varchar](100) NULL,
	[lob_addr2] [varchar](100) NULL,
	[lob_addr3] [varchar](100) NULL,
	[tmp_prod_desc] [varchar](100) NULL,
	[tmp_port_load] [varchar](100) NULL,
	[tmp_port_del] [varchar](100) NULL,
 CONSTRAINT [PK_DOC_DELIVERY_ORDER_DETAILS] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
