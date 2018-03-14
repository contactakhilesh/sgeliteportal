USE [appdata]
GO
/****** Object:  Table [dbo].[CUST_STAMP]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[CUST_STAMP]
GO
/****** Object:  Table [dbo].[CUST_STAMP]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUST_STAMP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUST_STAMP](
	[CUST_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CUST_STAMP_TYPE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CUST_STAMP] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_CUST_STAMP] PRIMARY KEY NONCLUSTERED 
(
	[CUST_ID] ASC,
	[CUST_STAMP_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CUST_STAMP] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[CUST_STAMP] TO [public] AS [dbo]
GO
