USE [appdata]
GO
/****** Object:  Table [dbo].[TERM_CODE_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[TERM_CODE_MAST]
GO
/****** Object:  Table [dbo].[TERM_CODE_MAST]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TERM_CODE_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TERM_CODE_MAST](
	[TERM_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TERM_DES] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CREDIT_DAYS] [numeric](3, 0) NOT NULL,
 CONSTRAINT [PK_TERM_CODE_MAST] PRIMARY KEY NONCLUSTERED 
(
	[TERM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[TERM_CODE_MAST] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[TERM_CODE_MAST] TO [public] AS [dbo]
GO
