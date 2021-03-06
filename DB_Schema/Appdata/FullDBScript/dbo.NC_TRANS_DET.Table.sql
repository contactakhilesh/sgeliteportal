USE [appdata]
GO
/****** Object:  Trigger [postupdate_nc_trans_det]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postupdate_nc_trans_det]
GO
/****** Object:  Trigger [postinsert_nc_trans_det]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[postinsert_nc_trans_det]
GO
/****** Object:  Table [dbo].[NC_TRANS_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[NC_TRANS_DET]
GO
/****** Object:  Table [dbo].[NC_TRANS_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NC_TRANS_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NC_TRANS_DET](
	[NC_TRAN_NO] [numeric](10, 0) NOT NULL,
	[NC_TYPE_CODE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[NC_CATE_CODE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [NC_TRANS_DET_PK] PRIMARY KEY CLUSTERED 
(
	[NC_TRAN_NO] ASC,
	[NC_TYPE_CODE] ASC,
	[NC_CATE_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[NC_TRANS_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[NC_TRANS_DET] TO [public] AS [dbo]
GO
