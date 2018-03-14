USE [appdata]
GO
/****** Object:  Table [dbo].[CHG_TYPE_MAST]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[CHG_TYPE_MAST]
GO
/****** Object:  Table [dbo].[CHG_TYPE_MAST]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CHG_TYPE_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CHG_TYPE_MAST](
	[CHG_TYPE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHG_TYPE_DES] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_CHG_TYPE_MAST] PRIMARY KEY NONCLUSTERED 
(
	[CHG_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CHG_TYPE_MAST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[CHG_TYPE_MAST] TO [public] AS [dbo]
GO
