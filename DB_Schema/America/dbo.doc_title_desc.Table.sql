USE [AMERICA]
GO
/****** Object:  Table [dbo].[doc_title_desc]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doc_title_desc](
	[doc_head_no] [varchar](30) NOT NULL,
	[doc_title] [varchar](200) NULL,
	[docs_description] [varchar](600) NULL,
 CONSTRAINT [PK_doc_title_desc] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[doc_title_desc] TO  SCHEMA OWNER 
GO
