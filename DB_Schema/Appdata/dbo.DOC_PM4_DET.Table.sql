USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_PM4_DET](
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
	[vessel] [varchar](30) NULL,
	[voyer] [varchar](30) NULL,
	[pol] [varchar](50) NULL,
	[pod] [varchar](50) NULL,
	[portdelivery] [varchar](50) NULL,
	[refno] [varchar](50) NULL,
	[cont_operator] [varchar](80) NULL,
	[loc_board_ship] [varchar](50) NULL,
	[user_name] [varchar](50) NULL,
	[contact_no] [varchar](50) NULL,
	[container_nos] [varchar](80) NULL,
	[marks_no] [varchar](120) NULL,
	[kind_of_packages] [varchar](50) NULL,
	[gross_wt] [varchar](20) NULL,
	[net_wt] [varchar](20) NULL,
	[goods_delivered_as] [varchar](80) NULL,
	[cont_type] [varchar](10) NULL,
	[cont_status] [varchar](10) NULL,
 CONSTRAINT [PK_DOC_PM4_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
