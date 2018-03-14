USE [appdata]
GO
/****** Object:  Table [dbo].[temp_cust]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp_cust]
GO
/****** Object:  Table [dbo].[temp_cust]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_cust]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp_cust](
	[export_n] [numeric](10, 0) NOT NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp_cust] TO  SCHEMA OWNER 
GO
