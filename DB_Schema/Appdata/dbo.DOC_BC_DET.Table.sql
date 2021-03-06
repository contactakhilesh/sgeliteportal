USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DOC_BC_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[att_desc1] [varchar](800) NULL,
	[att_desc2] [varchar](70) NULL,
	[att_desc3] [varchar](70) NULL,
	[att_desc4] [varchar](70) NULL,
	[att_desc5] [varchar](70) NULL,
	[att_desc6] [varchar](70) NULL,
	[commodity_desc1] [varchar](2000) NULL,
	[commodity_desc2] [varchar](70) NULL,
	[commodity_desc3] [varchar](70) NULL,
	[commodity_desc4] [varchar](70) NULL,
	[commodity_desc5] [varchar](70) NULL,
	[commodity_desc6] [varchar](70) NULL,
	[last_comment] [varchar](2000) NULL,
	[first_comment] [varchar](2000) NULL,
	[qty_uom] [varchar](100) NULL,
	[price_unit_uom] [varchar](100) NULL,
	[contract_no] [varchar](100) NULL,
	[inv_value] [varchar](100) NULL,
	[vessel_opt] [varchar](100) NULL,
	[commodity_opt] [varchar](100) NULL,
	[qty_opt] [varchar](100) NULL,
	[price_opt] [varchar](100) NULL,
	[inv_opt] [varchar](100) NULL,
	[sail_opt] [varchar](100) NULL,
	[lc_opt] [varchar](100) NULL,
	[net_wt_opt] [varchar](100) NULL,
	[bl_opt] [varchar](100) NULL,
 CONSTRAINT [PK_DOC_BC_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
