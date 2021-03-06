USE [appdata]
GO
/****** Object:  Table [dbo].[Job_add_text]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[Job_add_text]
GO
/****** Object:  Table [dbo].[Job_add_text]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Job_add_text]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Job_add_text](
	[export_n] [decimal](18, 0) NOT NULL,
	[seq_n] [decimal](18, 0) NOT NULL,
	[Text_Label] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Text_Value] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Job_add_text] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Job_add_text] TO [public] AS [dbo]
GO
