USE [appdata]
GO
/****** Object:  Table [dbo].[EMAIL_FLAG]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EMAIL_FLAG]
GO
/****** Object:  Table [dbo].[EMAIL_FLAG]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EMAIL_FLAG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EMAIL_FLAG](
	[export_ref_n] [numeric](9, 0) NULL,
	[email_status] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[transaction_id] [int] NULL,
	[transaction_description] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[date_created] [datetime] NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EMAIL_FLAG] TO  SCHEMA OWNER 
GO
