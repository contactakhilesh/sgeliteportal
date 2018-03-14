USE [AMERICA]
GO
/****** Object:  Table [dbo].[Template_Format]    Script Date: 3/14/2018 6:00:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Template_Format](
	[job_no] [varchar](50) NOT NULL,
	[job_type] [varchar](10) NOT NULL,
	[doc_head_no] [varchar](50) NOT NULL,
	[format_key] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Template_Format] TO  SCHEMA OWNER 
GO
