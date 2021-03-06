USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_FCL_CONTAINER_DET]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_FCL_CONTAINER_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[line_no] [numeric](18, 0) NOT NULL,
	[cont_n] [varchar](20) NULL,
	[seal_n] [varchar](100) NULL,
	[tot_wt] [numeric](11, 3) NULL,
	[tot_net_wt] [numeric](11, 3) NULL,
	[tot_packages] [numeric](18, 0) NULL,
	[tot_pack_type] [varchar](20) NULL,
	[wt_uom] [varchar](10) NULL,
	[caption] [varchar](80) NULL,
	[lot_n] [varchar](50) NULL,
	[cont_type_id] [varchar](50) NULL,
	[ROWID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_DOC_FCL_CONTAINER_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC,
	[ROWID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_FCL_CONTAINER_DET] TO  SCHEMA OWNER 
GO
