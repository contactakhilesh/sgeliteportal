USE [AMERICA]
GO
/****** Object:  Table [dbo].[Format_Entry_Mapping]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Format_Entry_Mapping](
	[doc_head_no] [varchar](100) NOT NULL,
	[format_key] [varchar](30) NOT NULL,
	[entry_name] [varchar](30) NOT NULL,
	[entry_value] [varchar](2000) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Format_Entry_Mapping] TO  SCHEMA OWNER 
GO
