USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_PACKING_LIST_DET_ALBEMARLE]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_PACKING_LIST_DET_ALBEMARLE](
	[doc_head_no] [varchar](30) NOT NULL,
	[scc_ref_no] [varchar](20) NULL,
	[CUST_ORD_NO] [varchar](40) NULL,
	[scc_ref_type] [varchar](20) NULL,
	[scc_hbl_n] [varchar](50) NULL,
	[LC_NO] [varchar](70) NULL,
	[gross_wt] [varchar](11) NULL,
	[gross_wt_uom] [varchar](80) NULL,
	[prod_desc] [varchar](6000) NULL,
	[PORT_LOAD_NAME] [varchar](40) NULL,
	[PORT_LOAD_ID] [varchar](10) NULL,
	[PORT_DISC_NAME] [varchar](40) NULL,
	[PORT_DESC_ID] [varchar](10) NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[country_origin] [varchar](100) NULL,
	[LOT_N] [varchar](200) NULL,
	[Created_by] [varchar](30) NULL,
	[create_date] [datetime] NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_PACKING_LIST_DET_ALBEMARLE] TO  SCHEMA OWNER 
GO
