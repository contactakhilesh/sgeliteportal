USE [appdata]
GO
/****** Object:  Table [dbo].[date_label_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[date_label_mast]
GO
/****** Object:  Table [dbo].[date_label_mast]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[date_label_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[date_label_mast](
	[label_id] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[label_name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[date_label_mast] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[date_label_mast] TO [public] AS [dbo]
GO
