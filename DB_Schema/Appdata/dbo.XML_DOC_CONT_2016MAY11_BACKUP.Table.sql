USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_DOC_CONT_2016MAY11_BACKUP](
	[msg_seq_n] [numeric](10, 0) NOT NULL,
	[line_n] [numeric](10, 0) NOT NULL,
	[cont_n] [varchar](30) NULL,
	[cont_iso_code] [varchar](50) NULL,
	[seal1] [varchar](50) NULL,
	[seal2] [varchar](50) NULL,
	[seal3] [varchar](50) NULL,
	[seal4] [varchar](50) NULL,
	[CONT_WT] [decimal](11, 3) NULL,
	[CONT_NET_WT] [decimal](11, 3) NULL
) ON [PRIMARY]

GO
