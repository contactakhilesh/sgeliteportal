USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_FORM3_DET]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_FORM3_DET](
	[doc_head_no] [varchar](30) NULL,
	[title] [varchar](200) NULL,
	[whereas_add1] [varchar](70) NULL,
	[whereas_add2] [varchar](70) NULL,
	[whereas_add3] [varchar](70) NULL,
	[whereas_add4] [varchar](70) NULL,
	[whereas_add5] [varchar](70) NULL,
	[whereas_add6] [varchar](70) NULL,
	[shipper1] [varchar](80) NULL,
	[product_desc] [varchar](800) NULL,
	[batch_no] [varchar](50) NULL,
	[manufactur_dt] [datetime] NULL,
	[expiry_dt] [datetime] NULL,
	[shipper2] [varchar](100) NULL,
	[lc_no] [varchar](100) NULL,
	[lc_det] [varchar](300) NULL,
	[create_dt] [datetime] NULL,
	[country_from] [varchar](50) NULL,
	[country_to] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_FORM3_DET] TO  SCHEMA OWNER 
GO
