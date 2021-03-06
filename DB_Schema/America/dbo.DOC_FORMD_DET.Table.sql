USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_FORMD_DET]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_FORMD_DET](
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
	[hs_code] [varchar](30) NULL,
 CONSTRAINT [PK_DOC_FORMD_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_FORMD_DET] TO  SCHEMA OWNER 
GO
