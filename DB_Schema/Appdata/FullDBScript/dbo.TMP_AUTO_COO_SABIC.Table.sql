USE [appdata]
GO
/****** Object:  Table [dbo].[TMP_AUTO_COO_SABIC]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[TMP_AUTO_COO_SABIC]
GO
/****** Object:  Table [dbo].[TMP_AUTO_COO_SABIC]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_AUTO_COO_SABIC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TMP_AUTO_COO_SABIC](
	[EXPORT_N] [numeric](18, 0) NOT NULL,
	[EXPORT_REF_N] [numeric](18, 0) NOT NULL,
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DELIVERY_NO] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MODIFIED_BY] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[TMP_AUTO_COO_SABIC] TO  SCHEMA OWNER 
GO
