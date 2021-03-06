USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_PACKING_LIST_DET_ALBEMARLE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_PACKING_LIST_DET_ALBEMARLE]
GO
/****** Object:  Table [dbo].[DOC_PACKING_LIST_DET_ALBEMARLE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_PACKING_LIST_DET_ALBEMARLE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_PACKING_LIST_DET_ALBEMARLE](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[scc_ref_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUST_ORD_NO] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[scc_ref_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[scc_hbl_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LC_NO] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gross_wt] [varchar](11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gross_wt_uom] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[prod_desc] [varchar](6000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_LOAD_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_LOAD_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_DISC_NAME] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORT_DESC_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VESSEL] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VOYAGE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_origin] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LOT_N] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Created_by] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_date] [datetime] NULL,
	[sob_date] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_PACKING_LIST_DET_ALBEMARLE] TO  SCHEMA OWNER 
GO
