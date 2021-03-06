USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EDI_BB](
	[EDI_N] [numeric](5, 0) NOT NULL,
	[LINE_N] [numeric](5, 0) NOT NULL,
	[JOB_ID] [varchar](1) NOT NULL,
	[REC_ID] [varchar](1) NOT NULL,
	[MBL] [varchar](20) NOT NULL,
	[CNTR] [varchar](12) NOT NULL,
	[CSIZE] [varchar](2) NOT NULL,
	[CTYPE] [varchar](2) NOT NULL,
	[SEAL_NO] [varchar](12) NOT NULL,
	[IMPORT_REF_N] [numeric](10, 0) NULL,
	[CONT_TYPE_ID] [varchar](10) NULL,
 CONSTRAINT [PK_EDIBB] PRIMARY KEY NONCLUSTERED 
(
	[EDI_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
