USE [appdata]
GO
/****** Object:  Table [dbo].[Temp_LSR_inv]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[Temp_LSR_inv]
GO
/****** Object:  Table [dbo].[Temp_LSR_inv]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Temp_LSR_inv]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Temp_LSR_inv](
	[invoice_n] [numeric](10, 0) NULL,
	[lsr_file] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[reason] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Temp_LSR_inv] TO  SCHEMA OWNER 
GO
