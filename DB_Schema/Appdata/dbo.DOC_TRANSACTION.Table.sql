USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_TRANSACTION](
	[doc_head_no] [varchar](30) NOT NULL,
	[load_d] [datetime] NULL,
	[cut_of_d] [datetime] NULL,
	[confirm_sail_d] [datetime] NULL,
	[doc_receive_d] [datetime] NULL,
	[bl_to_d] [datetime] NULL,
	[doc_to_bank_d] [datetime] NULL,
	[eta] [datetime] NULL,
	[consul_to_d] [datetime] NULL,
	[inspector_to_d] [datetime] NULL,
	[us_bank_d] [datetime] NULL,
	[foreign_d] [datetime] NULL,
	[release_d] [datetime] NULL,
	[confirm_load] [varchar](2) NULL,
	[sail_d] [datetime] NULL,
	[confirm_sailing] [varchar](2) NULL,
	[cust_display_d] [datetime] NULL,
	[bl_from_d] [datetime] NULL,
	[oseas_bank_d] [datetime] NULL,
	[consul_from_d] [datetime] NULL,
	[inspector_from_d] [datetime] NULL,
	[docs_bank_d] [datetime] NULL,
	[estimated_freight] [numeric](11, 3) NULL,
	[insurance_val] [varchar](20) NULL,
	[goods_pick_d] [datetime] NULL,
 CONSTRAINT [PK_DOC_TRANSACTION] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
