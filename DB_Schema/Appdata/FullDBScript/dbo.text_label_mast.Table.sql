USE [appdata]
GO
/****** Object:  Table [dbo].[text_label_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[text_label_mast]
GO
/****** Object:  Table [dbo].[text_label_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[text_label_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[text_label_mast](
	[text_label] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[text_value] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[text_label_mast] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[text_label_mast] TO [public] AS [dbo]
GO
