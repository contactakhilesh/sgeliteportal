USE [appdata]
GO
/****** Object:  Table [dbo].[NC_TEMP_TABLE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[NC_TEMP_TABLE]
GO
/****** Object:  Table [dbo].[NC_TEMP_TABLE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NC_TEMP_TABLE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NC_TEMP_TABLE](
	[job_n] [numeric](9, 0) NOT NULL,
	[old_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[new_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[NC_TEMP_TABLE] TO  SCHEMA OWNER 
GO
