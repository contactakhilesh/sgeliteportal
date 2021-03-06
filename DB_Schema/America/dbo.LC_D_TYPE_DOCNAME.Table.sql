USE [AMERICA]
GO
/****** Object:  Table [dbo].[LC_D_TYPE_DOCNAME]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LC_D_TYPE_DOCNAME](
	[LC_D_TYPE_DOCID] [decimal](10, 0) NOT NULL,
	[LC_D_TYPE_DOCNAME] [varchar](255) NULL,
 CONSTRAINT [PK_LC_D_TYPE_DOCNAME] PRIMARY KEY CLUSTERED 
(
	[LC_D_TYPE_DOCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[LC_D_TYPE_DOCNAME] TO  SCHEMA OWNER 
GO
