USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_LC_DET]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_LC_DET](
	[doc_head_no] [varchar](30) NOT NULL,
	[lc_det] [varchar](4500) NULL,
 CONSTRAINT [PK_DOC_LC_DET] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_LC_DET] TO  SCHEMA OWNER 
GO
