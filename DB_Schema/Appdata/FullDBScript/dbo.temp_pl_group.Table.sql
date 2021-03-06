USE [appdata]
GO
/****** Object:  Table [dbo].[temp_pl_group]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp_pl_group]
GO
/****** Object:  Table [dbo].[temp_pl_group]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_pl_group]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp_pl_group](
	[Sorting] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Subtype_desc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AC_CODE] [decimal](14, 5) NULL,
	[AC_DESC] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AC_DORC] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AC_SUBTYPE] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AC_YEAR] [decimal](4, 0) NULL,
	[AC_PERIOD] [decimal](4, 0) NULL,
	[DB_CRamt] [decimal](21, 2) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp_pl_group] TO  SCHEMA OWNER 
GO
