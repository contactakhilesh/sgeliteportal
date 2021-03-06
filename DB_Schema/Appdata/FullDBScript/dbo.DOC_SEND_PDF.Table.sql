USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_SEND_PDF]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_SEND_PDF]
GO
/****** Object:  Table [dbo].[DOC_SEND_PDF]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_SEND_PDF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_SEND_PDF](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[doc_id] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[last_modify] [datetime] NULL,
	[chk_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_SEND_PDF] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_SEND_PDF] TO [public] AS [dbo]
GO
