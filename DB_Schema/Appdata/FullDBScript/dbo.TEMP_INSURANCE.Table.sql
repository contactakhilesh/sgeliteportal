USE [appdata]
GO
/****** Object:  Table [dbo].[TEMP_INSURANCE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[TEMP_INSURANCE]
GO
/****** Object:  Table [dbo].[TEMP_INSURANCE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TEMP_INSURANCE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TEMP_INSURANCE](
	[insurance_no] [numeric](9, 0) NULL,
	[shipperref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[export_no] [numeric](10, 0) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[TEMP_INSURANCE] TO  SCHEMA OWNER 
GO
