USE [AMERICA]
GO
/****** Object:  Table [dbo].[PICK_LIST_PROD]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PICK_LIST_PROD](
	[seq_n] [decimal](18, 0) NOT NULL,
	[line_n] [decimal](18, 0) NOT NULL,
	[prod_id] [varchar](20) NULL,
	[prod_name] [varchar](50) NULL,
	[qty] [decimal](10, 0) NULL,
	[qty_bal] [decimal](10, 0) NULL,
	[qty_uom] [varchar](20) NULL,
	[gross_wt] [decimal](11, 3) NULL,
	[net_wt] [decimal](11, 3) NULL,
	[prod_wt] [decimal](11, 3) NULL,
	[wt_uom] [varchar](10) NULL,
	[complete_alloc_ind] [varchar](2) NULL,
	[gross_wt_bal] [decimal](11, 3) NULL,
	[net_wt_bal] [decimal](11, 3) NULL,
 CONSTRAINT [PK_PICK_LIST_PROD] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC,
	[line_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[PICK_LIST_PROD] TO  SCHEMA OWNER 
GO
