USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_COUNT]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_COUNT](
	[doc_head_no] [varchar](30) NULL,
	[doc_send_count] [int] NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_COUNT] TO  SCHEMA OWNER 
GO
