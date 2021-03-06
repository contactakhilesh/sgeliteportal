USE [appdata]
GO
/****** Object:  Table [dbo].[INTTRA_PACKAGE_TYPE_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[INTTRA_PACKAGE_TYPE_MAST]
GO
/****** Object:  Table [dbo].[INTTRA_PACKAGE_TYPE_MAST]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INTTRA_PACKAGE_TYPE_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[INTTRA_PACKAGE_TYPE_MAST](
	[MessageType] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AnsiCode] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EdifactCode] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[XmlCode] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_INTTRA_PACKAGE_TYPE_MAST] PRIMARY KEY CLUSTERED 
(
	[MessageType] ASC,
	[Description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[INTTRA_PACKAGE_TYPE_MAST] TO  SCHEMA OWNER 
GO
