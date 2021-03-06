USE [AMERICA]
GO
/****** Object:  Table [dbo].[doc_entry_mapping]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doc_entry_mapping](
	[doc_no] [varchar](30) NOT NULL,
	[job_no] [varchar](30) NOT NULL,
	[entry_name] [varchar](80) NOT NULL,
	[entry_value] [varchar](2000) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[doc_entry_mapping] TO  SCHEMA OWNER 
GO
