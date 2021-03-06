USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PCOO_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[shipper_add1] [varchar](70) NULL,
	[shipper_add2] [varchar](70) NULL,
	[shipper_add3] [varchar](70) NULL,
	[shipper_add4] [varchar](70) NULL,
	[shipper_add5] [varchar](70) NULL,
	[shipper_add6] [varchar](70) NULL,
	[consignee_add1] [varchar](70) NULL,
	[consignee_add2] [varchar](70) NULL,
	[consignee_add3] [varchar](70) NULL,
	[consignee_add4] [varchar](70) NULL,
	[consignee_add5] [varchar](70) NULL,
	[consignee_add6] [varchar](70) NULL,
	[dep_dt] [datetime] NULL,
	[vessel] [varchar](30) NULL,
	[voyer] [varchar](30) NULL,
	[pod] [varchar](50) NULL,
	[goods_produced] [varchar](50) NULL,
	[goods_exported] [varchar](50) NULL,
	[hs_code] [varchar](30) NULL
) ON [PRIMARY]

GO
