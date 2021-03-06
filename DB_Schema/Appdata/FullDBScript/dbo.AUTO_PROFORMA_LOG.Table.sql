USE [appdata]
GO
/****** Object:  Table [dbo].[AUTO_PROFORMA_LOG]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[AUTO_PROFORMA_LOG]
GO
/****** Object:  Table [dbo].[AUTO_PROFORMA_LOG]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AUTO_PROFORMA_LOG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AUTO_PROFORMA_LOG](
	[export_n] [numeric](10, 0) NOT NULL,
	[log_description] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[entry_d] [datetime] NULL,
	[entry_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[AUTO_PROFORMA_LOG] TO  SCHEMA OWNER 
GO
