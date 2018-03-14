USE [appdata]
GO
/****** Object:  Table [dbo].[PAYMENT_TERMS]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[PAYMENT_TERMS]
GO
/****** Object:  Table [dbo].[PAYMENT_TERMS]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PAYMENT_TERMS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PAYMENT_TERMS](
	[PAYMENT_TERMS] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[PAYMENT_TERMS] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[PAYMENT_TERMS] TO [public] AS [dbo]
GO
