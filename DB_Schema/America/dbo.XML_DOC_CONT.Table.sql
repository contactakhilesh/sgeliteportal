USE [AMERICA]
GO
/****** Object:  Table [dbo].[XML_DOC_CONT]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XML_DOC_CONT](
	[msg_seq_n] [numeric](10, 0) NOT NULL,
	[line_n] [numeric](10, 0) NOT NULL,
	[cont_n] [varchar](30) NULL,
	[cont_iso_code] [varchar](50) NULL,
	[seal1] [varchar](50) NULL,
	[seal2] [varchar](50) NULL,
	[seal3] [varchar](50) NULL,
	[seal4] [varchar](50) NULL,
	[CONT_WT] [decimal](11, 3) NULL,
	[CONT_NET_WT] [decimal](11, 3) NULL,
	[tare_wt] [decimal](10, 3) NULL,
	[vgm] [numeric](12, 3) NULL,
	[vgm_uom] [varchar](3) NULL,
 CONSTRAINT [PK_XML_DOC_CONT] PRIMARY KEY CLUSTERED 
(
	[msg_seq_n] ASC,
	[line_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[XML_DOC_CONT] TO  SCHEMA OWNER 
GO
