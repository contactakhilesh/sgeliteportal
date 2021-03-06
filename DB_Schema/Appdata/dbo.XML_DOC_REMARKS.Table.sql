USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [XML_DOC_REMARKS](
	[MSG_SEQ_N] [varchar](50) NOT NULL,
	[REM_TYPE_ID] [varchar](50) NOT NULL,
	[REM_TEXT] [varchar](3500) NULL,
 CONSTRAINT [PK_XML_DOC_REMARKS] PRIMARY KEY CLUSTERED 
(
	[MSG_SEQ_N] ASC,
	[REM_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
