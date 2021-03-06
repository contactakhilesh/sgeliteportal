USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_COURIER_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_COURIER_MAST]
GO
/****** Object:  Table [dbo].[DOC_COURIER_MAST]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_COURIER_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_COURIER_MAST](
	[courier_id] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[courier_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[notes] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[courier_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_COURIER_MAST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_COURIER_MAST] TO [public] AS [dbo]
GO
