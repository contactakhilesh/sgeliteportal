USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_CUST_MAP_DET]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_CUST_MAP_DET](
	[job_no] [varchar](30) NOT NULL,
	[job_type] [varchar](20) NOT NULL,
	[edoc_set] [varchar](50) NULL,
	[line_no] [varchar](20) NULL,
	[doc_id] [varchar](20) NOT NULL,
	[doc_name] [varchar](100) NULL,
	[link] [varchar](200) NULL,
 CONSTRAINT [pk_doc_cust_map_det] PRIMARY KEY CLUSTERED 
(
	[job_no] ASC,
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_CUST_MAP_DET] TO  SCHEMA OWNER 
GO
