USE [appdata]
GO
/****** Object:  Table [dbo].[prod_mast_temp]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[prod_mast_temp]
GO
/****** Object:  Table [dbo].[prod_mast_temp]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prod_mast_temp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[prod_mast_temp](
	[mat_id] [char](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mat_desc] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[harmonized_code] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[prod_mast_temp] TO  SCHEMA OWNER 
GO
