USE [appdata]
GO
/****** Object:  Table [dbo].[xml_doc_remarks_2012below]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[xml_doc_remarks_2012below]
GO
/****** Object:  Table [dbo].[xml_doc_remarks_2012below]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[xml_doc_remarks_2012below]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[xml_doc_remarks_2012below](
	[MSG_SEQ_N] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REM_TYPE_ID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[REM_TEXT] [varchar](3500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[xml_doc_remarks_2012below] TO  SCHEMA OWNER 
GO
