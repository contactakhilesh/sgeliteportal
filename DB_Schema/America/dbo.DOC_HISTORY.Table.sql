USE [AMERICA]
GO
/****** Object:  Table [dbo].[DOC_HISTORY]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_HISTORY](
	[doc_seq_no] [numeric](18, 0) NOT NULL,
	[user_id] [varchar](50) NOT NULL,
	[job_no] [varchar](50) NULL,
	[job_type] [varchar](50) NULL,
	[edoc_set] [varchar](50) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[DOC_HISTORY] TO  SCHEMA OWNER 
GO
