USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INTTRA_PACKAGE_TYPE_MAST](
	[MessageType] [char](10) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[AnsiCode] [char](20) NULL,
	[EdifactCode] [char](20) NULL,
	[XmlCode] [char](20) NULL,
 CONSTRAINT [PK_INTTRA_PACKAGE_TYPE_MAST] PRIMARY KEY CLUSTERED 
(
	[MessageType] ASC,
	[Description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
