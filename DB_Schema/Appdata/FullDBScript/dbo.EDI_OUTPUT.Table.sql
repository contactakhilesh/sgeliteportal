USE [appdata]
GO
/****** Object:  Table [dbo].[EDI_OUTPUT]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EDI_OUTPUT]
GO
/****** Object:  Table [dbo].[EDI_OUTPUT]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EDI_OUTPUT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDI_OUTPUT](
	[EDI_DOC_TYPE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EDI_SENDER] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EDI_RECEIVER] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EDI_OUT_DIR] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EDI_OUTPUT] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[EDI_OUTPUT] TO [public] AS [dbo]
GO
