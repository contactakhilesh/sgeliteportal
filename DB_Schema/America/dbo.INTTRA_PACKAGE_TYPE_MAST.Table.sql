USE [AMERICA]
GO
/****** Object:  Table [dbo].[INTTRA_PACKAGE_TYPE_MAST]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTTRA_PACKAGE_TYPE_MAST](
	[MessageType] [char](10) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[AnsiCode] [char](20) NULL,
	[EdifactCode] [char](20) NULL,
	[XmlCode] [char](20) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[INTTRA_PACKAGE_TYPE_MAST] TO  SCHEMA OWNER 
GO
