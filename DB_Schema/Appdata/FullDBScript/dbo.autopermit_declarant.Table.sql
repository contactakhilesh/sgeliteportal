USE [appdata]
GO
/****** Object:  Table [dbo].[autopermit_declarant]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[autopermit_declarant]
GO
/****** Object:  Table [dbo].[autopermit_declarant]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[autopermit_declarant]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[autopermit_declarant](
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dec_id] [varchar](17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dec_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dec_name] [varchar](105) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dec_contact] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fms_userid] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[autopermit_declarant] TO  SCHEMA OWNER 
GO
