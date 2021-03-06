USE [appdata]
GO
/****** Object:  Table [dbo].[XOM_duplicate_XML]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[XOM_duplicate_XML]
GO
/****** Object:  Table [dbo].[XOM_duplicate_XML]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XOM_duplicate_XML]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XOM_duplicate_XML](
	[Ref1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_XOM_duplicate_XML] PRIMARY KEY CLUSTERED 
(
	[Ref1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[XOM_duplicate_XML] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[XOM_duplicate_XML] TO [public] AS [dbo]
GO
