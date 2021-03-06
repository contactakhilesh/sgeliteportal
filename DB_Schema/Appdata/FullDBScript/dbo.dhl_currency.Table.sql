USE [appdata]
GO
/****** Object:  Table [dbo].[dhl_currency]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[dhl_currency]
GO
/****** Object:  Table [dbo].[dhl_currency]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_currency]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dhl_currency](
	[Currency_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Currency_cd] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Decimal] [smallint] NULL,
 CONSTRAINT [PK__dhl_currency__39CE5167] PRIMARY KEY CLUSTERED 
(
	[Currency_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[dhl_currency] TO  SCHEMA OWNER 
GO
