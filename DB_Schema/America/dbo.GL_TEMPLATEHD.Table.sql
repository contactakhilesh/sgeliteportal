USE [AMERICA]
GO
/****** Object:  Table [dbo].[GL_TEMPLATEHD]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GL_TEMPLATEHD](
	[gltmphid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[gltmphname] [varchar](255) NULL,
	[gltmph_valid] [char](1) NULL,
	[gltmph_crtby] [varchar](10) NULL,
	[gltmph_crtdt] [datetime] NULL,
	[gltmph_modby] [varchar](10) NULL,
	[gltmph_moddt] [datetime] NULL,
 CONSTRAINT [PK_GL_TEMPLATEHD] PRIMARY KEY CLUSTERED 
(
	[gltmphid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[GL_TEMPLATEHD] TO  SCHEMA OWNER 
GO
