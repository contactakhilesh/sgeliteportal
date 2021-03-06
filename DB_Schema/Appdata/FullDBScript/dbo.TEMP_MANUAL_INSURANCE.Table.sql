USE [appdata]
GO
/****** Object:  Table [dbo].[TEMP_MANUAL_INSURANCE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[TEMP_MANUAL_INSURANCE]
GO
/****** Object:  Table [dbo].[TEMP_MANUAL_INSURANCE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TEMP_MANUAL_INSURANCE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TEMP_MANUAL_INSURANCE](
	[cert_n] [numeric](10, 0) NULL,
	[ship_value] [numeric](18, 3) NULL,
	[so_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[TEMP_MANUAL_INSURANCE] TO  SCHEMA OWNER 
GO
