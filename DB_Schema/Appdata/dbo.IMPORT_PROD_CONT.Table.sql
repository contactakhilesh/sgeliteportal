USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IMPORT_PROD_CONT](
	[PROD_IMPORT_N] [numeric](10, 0) NOT NULL,
	[PROD_LINE_N] [numeric](10, 0) NOT NULL,
	[PROD_ID] [varchar](20) NOT NULL,
	[CONT_SEQ_N] [numeric](18, 0) NOT NULL,
	[CONT_N] [varchar](20) NOT NULL,
	[SEAL_N] [varchar](20) NOT NULL,
	[CONT_TYPE_ID] [varchar](20) NOT NULL,
	[CONT_SIZE] [varchar](10) NOT NULL,
	[SELECT_IND] [char](1) NOT NULL,
 CONSTRAINT [PK_IMP_PROD_CONT] PRIMARY KEY CLUSTERED 
(
	[PROD_IMPORT_N] ASC,
	[PROD_LINE_N] ASC,
	[PROD_ID] ASC,
	[CONT_SEQ_N] ASC,
	[CONT_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
