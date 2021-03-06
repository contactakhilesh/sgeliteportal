USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GL_TEMPLATEHD]') AND type in (N'U'))
ALTER TABLE [dbo].[GL_TEMPLATEHD] DROP CONSTRAINT IF EXISTS [DF_GL_TEMPLATEHD_gltmph_crtdt]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GL_TEMPLATEHD]') AND type in (N'U'))
ALTER TABLE [dbo].[GL_TEMPLATEHD] DROP CONSTRAINT IF EXISTS [DF_GL_TEMPLATEHD_gltmph_valid]
GO
/****** Object:  Table [dbo].[GL_TEMPLATEHD]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[GL_TEMPLATEHD]
GO
/****** Object:  Table [dbo].[GL_TEMPLATEHD]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GL_TEMPLATEHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GL_TEMPLATEHD](
	[gltmphid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[gltmphname] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gltmph_valid] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gltmph_crtby] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gltmph_crtdt] [datetime] NULL,
	[gltmph_modby] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gltmph_moddt] [datetime] NULL,
 CONSTRAINT [PK_GL_TEMPLATEHD] PRIMARY KEY CLUSTERED 
(
	[gltmphid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[GL_TEMPLATEHD] TO  SCHEMA OWNER 
GO
