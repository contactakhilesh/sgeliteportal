USE [appdata]
GO
/****** Object:  Table [dbo].[tmp_export_prod_cont]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_export_prod_cont]
GO
/****** Object:  Table [dbo].[tmp_export_prod_cont]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_export_prod_cont]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_export_prod_cont](
	[PROD_EXPORT_N] [numeric](10, 0) NOT NULL,
	[PROD_LINE_N] [numeric](10, 0) NOT NULL,
	[PROD_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONT_SEQ_N] [numeric](18, 0) NOT NULL,
	[CONT_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SEAL_N] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONT_TYPE_ID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONT_SIZE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SELECT_IND] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_export_prod_cont] TO  SCHEMA OWNER 
GO
