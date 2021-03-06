USE [appdata]
GO
/****** Object:  Table [dbo].[SHELL_PAYMENT_TERM]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[SHELL_PAYMENT_TERM]
GO
/****** Object:  Table [dbo].[SHELL_PAYMENT_TERM]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SHELL_PAYMENT_TERM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SHELL_PAYMENT_TERM](
	[days_payment] [int] NULL,
	[type_payment] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[description_payment] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[row_id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[SHELL_PAYMENT_TERM] TO  SCHEMA OWNER 
GO
