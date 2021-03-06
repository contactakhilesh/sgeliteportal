USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INTTRA_DOC_CONT](
	[msg_seq_n] [decimal](10, 0) NOT NULL,
	[line_n] [decimal](10, 0) NOT NULL,
	[cont_n] [varchar](30) NULL,
	[cont_iso_code] [varchar](50) NULL,
	[seal_n] [varchar](50) NULL,
	[CONT_WT] [decimal](11, 3) NULL,
	[CONT_NET_WT] [decimal](11, 3) NULL,
	[cont_count] [decimal](18, 0) NULL,
 CONSTRAINT [PK_INTTRA_DOC_CONT] PRIMARY KEY CLUSTERED 
(
	[msg_seq_n] ASC,
	[line_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
