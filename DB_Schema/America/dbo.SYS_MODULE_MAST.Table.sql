USE [AMERICA]
GO
/****** Object:  Table [dbo].[SYS_MODULE_MAST]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_MODULE_MAST](
	[MODULE_ID] [varchar](10) NOT NULL,
	[MODULE_NAME] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SYS_MODULE_MAST] PRIMARY KEY NONCLUSTERED 
(
	[MODULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[SYS_MODULE_MAST] TO  SCHEMA OWNER 
GO
