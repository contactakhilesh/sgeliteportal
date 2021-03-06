USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_BC_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_BC_DET]
GO
/****** Object:  Table [dbo].[DOC_BC_DET]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_BC_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_BC_DET](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[att_desc1] [varchar](800) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[att_desc2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[att_desc3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[att_desc4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[att_desc5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[att_desc6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[commodity_desc1] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[commodity_desc2] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[commodity_desc3] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[commodity_desc4] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[commodity_desc5] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[commodity_desc6] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[last_comment] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[first_comment] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[qty_uom] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[price_unit_uom] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contract_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inv_value] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_opt] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[commodity_opt] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[qty_opt] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[price_opt] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inv_opt] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sail_opt] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_opt] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[net_wt_opt] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_opt] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_BC_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_BC_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_BC_DET] TO [public] AS [dbo]
GO
