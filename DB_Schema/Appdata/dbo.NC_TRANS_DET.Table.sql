USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NC_TRANS_DET](
	[NC_TRAN_NO] [numeric](10, 0) NOT NULL,
	[NC_TYPE_CODE] [varchar](10) NOT NULL,
	[NC_CATE_CODE] [varchar](10) NOT NULL,
 CONSTRAINT [NC_TRANS_DET_PK] PRIMARY KEY CLUSTERED 
(
	[NC_TRAN_NO] ASC,
	[NC_TYPE_CODE] ASC,
	[NC_CATE_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
