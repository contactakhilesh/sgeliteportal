USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LC_D_TYPE_DOCNAME](
	[LC_D_TYPE_DOCID] [decimal](10, 0) NOT NULL,
	[LC_D_TYPE_DOCNAME] [varchar](255) NULL,
 CONSTRAINT [PK_LC_D_TYPE_DOCNAME] PRIMARY KEY CLUSTERED 
(
	[LC_D_TYPE_DOCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
