USE [appdata]
GO
/****** Object:  Table [dbo].[EXXON_PGK_GUIDE_ALI]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXXON_PGK_GUIDE_ALI]
GO
/****** Object:  Table [dbo].[EXXON_PGK_GUIDE_ALI]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXXON_PGK_GUIDE_ALI]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXXON_PGK_GUIDE_ALI](
	[PROD_GRADE] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_size] [numeric](3, 0) NULL,
	[pkg_type] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[net_wt] [numeric](15, 3) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXXON_PGK_GUIDE_ALI] TO  SCHEMA OWNER 
GO
