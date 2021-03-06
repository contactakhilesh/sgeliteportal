USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_EDOC_SET_MAST]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_EDOC_SET_MAST](
	[doc_set_id] [varchar](20) NOT NULL,
	[doc_set_desc] [varchar](80) NULL,
	[userid] [varchar](20) NULL,
	[dept_id] [varchar](20) NULL,
	[create_dt] [datetime] NULL,
 CONSTRAINT [PK_DOC_EDOC_SET_MAST] PRIMARY KEY CLUSTERED 
(
	[doc_set_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_EDOC_SET_MAST] TO  SCHEMA OWNER 
GO
