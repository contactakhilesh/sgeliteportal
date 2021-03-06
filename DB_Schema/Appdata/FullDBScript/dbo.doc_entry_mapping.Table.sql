USE [appdata]
GO
/****** Object:  Table [dbo].[doc_entry_mapping]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[doc_entry_mapping]
GO
/****** Object:  Table [dbo].[doc_entry_mapping]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_entry_mapping]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[doc_entry_mapping](
	[doc_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[job_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[entry_name] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[entry_value] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[doc_entry_mapping] TO  SCHEMA OWNER 
GO
