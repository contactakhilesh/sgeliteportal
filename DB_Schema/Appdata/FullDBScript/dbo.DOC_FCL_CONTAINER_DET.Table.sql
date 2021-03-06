USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_FCL_CONTAINER_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_FCL_CONTAINER_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_FCL_CONTAINER_DET_caption]
GO
/****** Object:  Table [dbo].[DOC_FCL_CONTAINER_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_FCL_CONTAINER_DET]
GO
/****** Object:  Table [dbo].[DOC_FCL_CONTAINER_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_FCL_CONTAINER_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_FCL_CONTAINER_DET](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[line_no] [numeric](18, 0) NOT NULL,
	[cont_n] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seal_n] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_wt] [numeric](11, 3) NULL,
	[tot_net_wt] [numeric](11, 3) NULL,
	[tot_packages] [numeric](18, 0) NULL,
	[tot_pack_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[wt_uom] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[caption] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lot_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_type_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ROWID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_DOC_FCL_CONTAINER_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC,
	[ROWID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_FCL_CONTAINER_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_FCL_CONTAINER_DET] TO [public] AS [dbo]
GO
