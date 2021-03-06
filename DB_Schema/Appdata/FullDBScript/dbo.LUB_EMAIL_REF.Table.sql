USE [appdata]
GO
/****** Object:  Table [dbo].[LUB_EMAIL_REF]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[LUB_EMAIL_REF]
GO
/****** Object:  Table [dbo].[LUB_EMAIL_REF]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LUB_EMAIL_REF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LUB_EMAIL_REF](
	[country_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[consignee_name] [varchar](120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_addr] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[LUB_EMAIL_REF] TO  SCHEMA OWNER 
GO
