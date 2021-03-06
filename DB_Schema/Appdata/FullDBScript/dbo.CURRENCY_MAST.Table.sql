USE [appdata]
GO
/****** Object:  Table [dbo].[CURRENCY_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[CURRENCY_MAST]
GO
/****** Object:  Table [dbo].[CURRENCY_MAST]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CURRENCY_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CURRENCY_MAST](
	[CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CURRENCY_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CURRENCY_EX_RATE] [numeric](10, 4) NULL,
 CONSTRAINT [PK_CURRENCY_MAST] PRIMARY KEY NONCLUSTERED 
(
	[CURRENCY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CURRENCY_MAST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[CURRENCY_MAST] TO [public] AS [dbo]
GO
