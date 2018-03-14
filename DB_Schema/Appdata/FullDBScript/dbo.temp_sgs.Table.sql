USE [appdata]
GO
/****** Object:  Table [dbo].[temp_sgs]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp_sgs]
GO
/****** Object:  Table [dbo].[temp_sgs]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_sgs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp_sgs](
	[export_n] [numeric](10, 0) NOT NULL,
	[item_desc1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty1] [numeric](10, 0) NULL,
	[item_desc2] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty2] [numeric](10, 0) NULL,
	[item_desc3] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty3] [numeric](10, 0) NULL,
	[item_desc4] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty4] [numeric](10, 0) NULL,
	[item_desc5] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty5] [numeric](10, 0) NULL,
	[item_desc6] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty6] [numeric](10, 0) NULL,
	[item_desc7] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty7] [numeric](10, 0) NULL,
	[item_desc8] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty8] [numeric](10, 0) NULL,
	[item_desc9] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty9] [numeric](10, 0) NULL,
	[item_desc10] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty10] [numeric](10, 0) NULL,
	[item_desc11] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty11] [numeric](10, 0) NULL,
	[item_desc12] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty12] [numeric](10, 0) NULL,
	[item_desc13] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty13] [numeric](10, 0) NULL,
	[item_desc14] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty14] [numeric](10, 0) NULL,
	[item_desc15] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty15] [numeric](10, 0) NULL,
	[item_desc16] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty16] [numeric](10, 0) NULL,
	[item_desc17] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty17] [numeric](10, 0) NULL,
	[item_desc18] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty18] [numeric](10, 0) NULL,
	[item_desc19] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty19] [numeric](10, 0) NULL,
	[item_desc20] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty20] [numeric](10, 0) NULL,
	[item_desc21] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty21] [numeric](10, 0) NULL,
	[item_desc22] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty22] [numeric](10, 0) NULL,
	[item_desc23] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty23] [numeric](10, 0) NULL,
	[item_desc24] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty24] [numeric](10, 0) NULL,
	[item_desc25] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty25] [numeric](10, 0) NULL,
	[item_desc26] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty26] [numeric](10, 0) NULL,
	[item_desc27] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty27] [numeric](10, 0) NULL,
	[item_desc28] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty28] [numeric](10, 0) NULL,
	[item_desc29] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty29] [numeric](10, 0) NULL,
	[item_desc30] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty30] [numeric](10, 0) NULL,
	[item_desc31] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty31] [numeric](10, 0) NULL,
	[item_desc32] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty32] [numeric](10, 0) NULL,
	[item_desc33] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty33] [numeric](10, 0) NULL,
	[item_desc34] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty34] [numeric](10, 0) NULL,
	[item_desc35] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty35] [numeric](10, 0) NULL,
	[item_desc36] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty36] [numeric](10, 0) NULL,
	[item_desc37] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty37] [numeric](10, 0) NULL,
	[item_desc38] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty38] [numeric](10, 0) NULL,
	[item_desc39] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[item_qty39] [numeric](10, 0) NULL,
 CONSTRAINT [PK_sgs_temp] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp_sgs] TO  SCHEMA OWNER 
GO
