USE [appdata]
GO
/****** Object:  Table [dbo].[tmp_export_mkgs]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_export_mkgs]
GO
/****** Object:  Table [dbo].[tmp_export_mkgs]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_export_mkgs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_export_mkgs](
	[export_n] [numeric](10, 0) NOT NULL,
	[product_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[pack_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[wt_uom] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[product_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[rowid] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[hd_flag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tmp_export_mkgs] PRIMARY KEY CLUSTERED 
(
	[export_n] ASC,
	[product_id] ASC,
	[pack_type] ASC,
	[wt_uom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_export_mkgs] TO  SCHEMA OWNER 
GO
