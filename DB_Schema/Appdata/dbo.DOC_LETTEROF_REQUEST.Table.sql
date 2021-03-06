USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_LETTEROF_REQUEST](
	[doc_head_no] [varchar](30) NOT NULL,
	[report_title] [varchar](200) NULL,
	[messers] [varchar](100) NULL,
	[attention] [varchar](50) NULL,
	[tel] [varchar](50) NULL,
	[fax] [varchar](50) NULL,
	[req_days] [numeric](18, 0) NULL,
	[vessel] [varchar](50) NULL,
	[voyage] [varchar](50) NULL,
	[etd] [datetime] NULL,
	[bl_no] [varchar](50) NULL,
	[period] [varchar](50) NULL,
	[detention_det] [varchar](500) NULL,
	[comp_name] [varchar](100) NULL,
	[cont_20] [numeric](10, 0) NULL,
	[cont_40] [numeric](10, 0) NULL,
	[cont_45] [numeric](10, 0) NULL,
	[iso] [numeric](10, 0) NULL,
	[create_dt] [datetime] NULL
) ON [PRIMARY]

GO
