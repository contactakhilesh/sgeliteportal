USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [REGION_MAST](
	[REGION_ID] [varchar](10) NOT NULL,
	[REGION_NAME] [varchar](50) NULL,
	[SORT_K] [numeric](5, 0) NOT NULL,
 CONSTRAINT [PK_REGION_MAST] PRIMARY KEY NONCLUSTERED 
(
	[REGION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
