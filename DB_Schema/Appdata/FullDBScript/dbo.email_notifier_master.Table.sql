USE [appdata]
GO
/****** Object:  Table [dbo].[email_notifier_master]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[email_notifier_master]
GO
/****** Object:  Table [dbo].[email_notifier_master]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[email_notifier_master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[email_notifier_master](
	[TYPE] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VALUE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK__email_no__80334AA07CD1C6CD] PRIMARY KEY CLUSTERED 
(
	[TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[email_notifier_master] TO  SCHEMA OWNER 
GO
