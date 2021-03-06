USE [appdata]
GO
/****** Object:  Table [dbo].[temp_prodtoupload]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp_prodtoupload]
GO
/****** Object:  Table [dbo].[temp_prodtoupload]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_prodtoupload]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp_prodtoupload](
	[mat_id] [char](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mat_desc] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[harmonized_code] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp_prodtoupload] TO  SCHEMA OWNER 
GO
