USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_TRANSLETTER_COUNT]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_TRANSLETTER_COUNT](
	[doc_head_no] [varchar](30) NOT NULL,
	[doc_id] [varchar](20) NOT NULL,
	[doc_name] [varchar](200) NULL,
	[copy1] [varchar](10) NULL,
	[duplicate1] [varchar](10) NULL,
	[copy2] [varchar](10) NULL,
	[duplicate2] [varchar](10) NULL,
	[copy3] [varchar](10) NULL,
	[duplicate3] [varchar](10) NULL,
	[copy4] [varchar](10) NULL,
	[duplicate4] [varchar](10) NULL,
	[copy5] [varchar](10) NULL,
	[duplicate5] [varchar](10) NULL,
	[copy6] [varchar](10) NULL,
	[duplicate6] [varchar](10) NULL,
	[copy7] [varchar](10) NULL,
	[duplicate7] [varchar](10) NULL,
	[copy8] [varchar](10) NULL,
	[duplicate8] [varchar](10) NULL,
	[seqno] [int] NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_TRANSLETTER_COUNT] TO  SCHEMA OWNER 
GO
