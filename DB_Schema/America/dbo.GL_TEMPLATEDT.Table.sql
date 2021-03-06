USE [AMERICA]
GO
/****** Object:  Table [dbo].[GL_TEMPLATEDT]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GL_TEMPLATEDT](
	[gltmpdid] [numeric](18, 0) NOT NULL,
	[gltmpdlineid] [int] NOT NULL,
	[gltmpd_accode] [numeric](20, 4) NULL,
	[gltmpd_desc] [varchar](50) NULL,
	[gltmpd_acdorc] [varchar](2) NULL,
 CONSTRAINT [PK_GL_TEMPLATEDT] PRIMARY KEY CLUSTERED 
(
	[gltmpdid] ASC,
	[gltmpdlineid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[GL_TEMPLATEDT] TO  SCHEMA OWNER 
GO
