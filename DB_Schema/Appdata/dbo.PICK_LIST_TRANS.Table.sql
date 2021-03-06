USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PICK_LIST_TRANS](
	[seq_n] [decimal](18, 0) NOT NULL,
	[line_n] [decimal](18, 0) NOT NULL,
	[group_n] [decimal](18, 0) NOT NULL,
	[prod_id] [varchar](20) NULL,
	[qty] [decimal](10, 0) NULL,
	[qty_uom] [varchar](20) NULL,
	[gross_wt] [decimal](11, 3) NULL,
	[net_wt] [decimal](11, 3) NULL,
	[wt_uom] [varchar](10) NULL,
	[export_n] [decimal](18, 0) NOT NULL,
	[export_prod_line_n] [decimal](18, 0) NOT NULL,
	[prod_wt] [decimal](11, 3) NULL,
 CONSTRAINT [PK_PICK_LIST_TRANS] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC,
	[line_n] ASC,
	[export_n] ASC,
	[export_prod_line_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
