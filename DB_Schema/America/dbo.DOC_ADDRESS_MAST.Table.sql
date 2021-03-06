USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_ADDRESS_MAST]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_ADDRESS_MAST](
	[doc_head_no] [varchar](30) NOT NULL,
	[scc_ref_no] [varchar](20) NOT NULL,
	[scc_ref_type] [varchar](20) NOT NULL,
	[shipper_add1] [varchar](70) NULL,
	[shipper_add2] [varchar](70) NULL,
	[shipper_add3] [varchar](70) NULL,
	[shipper_add4] [varchar](70) NULL,
	[shipper_add5] [varchar](70) NULL,
	[shipper_add6] [varchar](70) NULL,
	[other_add1] [varchar](70) NULL,
	[other_add2] [varchar](70) NULL,
	[other_add3] [varchar](70) NULL,
	[other_add4] [varchar](70) NULL,
	[other_add5] [varchar](70) NULL,
	[other_add6] [varchar](70) NULL,
	[shipto_add1] [varchar](70) NULL,
	[shipto_add2] [varchar](70) NULL,
	[shipto_add3] [varchar](70) NULL,
	[shipto_add4] [varchar](70) NULL,
	[shipto_add5] [varchar](70) NULL,
	[shipto_add6] [varchar](70) NULL,
	[billto_add1] [varchar](70) NULL,
	[billto_add2] [varchar](70) NULL,
	[billto_add3] [varchar](70) NULL,
	[billto_add4] [varchar](70) NULL,
	[billto_add5] [varchar](70) NULL,
	[billto_add6] [varchar](70) NULL,
	[consignee_add1] [varchar](70) NULL,
	[consignee_add2] [varchar](70) NULL,
	[consignee_add3] [varchar](70) NULL,
	[consignee_add4] [varchar](70) NULL,
	[consignee_add5] [varchar](70) NULL,
	[consignee_add6] [varchar](70) NULL,
	[notify_add1] [varchar](70) NULL,
	[notify_add2] [varchar](70) NULL,
	[notify_add3] [varchar](70) NULL,
	[notify_add4] [varchar](70) NULL,
	[notify_add5] [varchar](70) NULL,
	[notify_add6] [varchar](70) NULL,
 CONSTRAINT [PK_DOC_ADDRESS_MAST] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_ADDRESS_MAST] TO  SCHEMA OWNER 
GO
