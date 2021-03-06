USE [appdata]
GO
/****** Object:  Table [dbo].[Format_Entry_Mapping]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[Format_Entry_Mapping]
GO
/****** Object:  Table [dbo].[Format_Entry_Mapping]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Format_Entry_Mapping]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Format_Entry_Mapping](
	[doc_head_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[format_key] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[entry_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[entry_value] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Format_Entry_Mapping] TO  SCHEMA OWNER 
GO
