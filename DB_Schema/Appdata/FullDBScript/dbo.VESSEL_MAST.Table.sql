USE [appdata]
GO
/****** Object:  Table [dbo].[VESSEL_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[VESSEL_MAST]
GO
/****** Object:  Table [dbo].[VESSEL_MAST]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VESSEL_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VESSEL_MAST](
	[VESSEL_NAME] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_VESSEL_MAST] PRIMARY KEY NONCLUSTERED 
(
	[VESSEL_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[VESSEL_MAST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[VESSEL_MAST] TO [public] AS [dbo]
GO
