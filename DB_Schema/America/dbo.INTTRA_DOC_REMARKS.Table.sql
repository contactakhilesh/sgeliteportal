USE [AMERICA]
GO
/****** Object:  Table [dbo].[INTTRA_DOC_REMARKS]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTTRA_DOC_REMARKS](
	[MSG_SEQ_N] [varchar](50) NOT NULL,
	[REM_TYPE_ID] [varchar](50) NOT NULL,
	[REM_TEXT] [varchar](8000) NULL,
	[severity] [varchar](1) NULL,
 CONSTRAINT [PK_INTTRA_DOC_REMARKS] PRIMARY KEY CLUSTERED 
(
	[MSG_SEQ_N] ASC,
	[REM_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[INTTRA_DOC_REMARKS] TO  SCHEMA OWNER 
GO
