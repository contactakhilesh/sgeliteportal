USE [appdata]
GO
/****** Object:  Table [dbo].[MAST_ROLE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[MAST_ROLE]
GO
/****** Object:  Table [dbo].[MAST_ROLE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MAST_ROLE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MAST_ROLE](
	[ROLEID] [numeric](18, 0) NULL,
	[ROLENAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ROLENAME2] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[MAST_ROLE] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[MAST_ROLE] TO [public] AS [dbo]
GO
