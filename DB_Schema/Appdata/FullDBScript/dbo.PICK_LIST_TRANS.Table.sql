USE [appdata]
GO
/****** Object:  Table [dbo].[PICK_LIST_TRANS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[PICK_LIST_TRANS]
GO
/****** Object:  Table [dbo].[PICK_LIST_TRANS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PICK_LIST_TRANS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PICK_LIST_TRANS](
	[seq_n] [decimal](18, 0) NOT NULL,
	[line_n] [decimal](18, 0) NOT NULL,
	[group_n] [decimal](18, 0) NOT NULL,
	[prod_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[qty] [decimal](10, 0) NULL,
	[qty_uom] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gross_wt] [decimal](11, 3) NULL,
	[net_wt] [decimal](11, 3) NULL,
	[wt_uom] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[PICK_LIST_TRANS] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[PICK_LIST_TRANS] TO [public] AS [dbo]
GO
