USE [appdata]
GO
/****** Object:  Table [dbo].[GL_TEMPLATEDT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[GL_TEMPLATEDT]
GO
/****** Object:  Table [dbo].[GL_TEMPLATEDT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GL_TEMPLATEDT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GL_TEMPLATEDT](
	[gltmpdid] [numeric](18, 0) NOT NULL,
	[gltmpdlineid] [int] NOT NULL,
	[gltmpd_accode] [numeric](20, 4) NULL,
	[gltmpd_desc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[gltmpd_acdorc] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_GL_TEMPLATEDT] PRIMARY KEY CLUSTERED 
(
	[gltmpdid] ASC,
	[gltmpdlineid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[GL_TEMPLATEDT] TO  SCHEMA OWNER 
GO
