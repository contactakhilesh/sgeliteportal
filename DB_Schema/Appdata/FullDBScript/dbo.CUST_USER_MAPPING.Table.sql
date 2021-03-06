USE [appdata]
GO
/****** Object:  Table [dbo].[CUST_USER_MAPPING]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[CUST_USER_MAPPING]
GO
/****** Object:  Table [dbo].[CUST_USER_MAPPING]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUST_USER_MAPPING]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUST_USER_MAPPING](
	[custid] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[roleid] [numeric](18, 0) NOT NULL,
	[rolename] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[userid] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[username] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_CUST_USER_MAPPING] PRIMARY KEY CLUSTERED 
(
	[custid] ASC,
	[roleid] ASC,
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[CUST_USER_MAPPING] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[CUST_USER_MAPPING] TO [public] AS [dbo]
GO
