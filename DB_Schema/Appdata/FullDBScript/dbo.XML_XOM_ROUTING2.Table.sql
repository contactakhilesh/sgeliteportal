USE [appdata]
GO
/****** Object:  Table [dbo].[XML_XOM_ROUTING2]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[XML_XOM_ROUTING2]
GO
/****** Object:  Table [dbo].[XML_XOM_ROUTING2]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XML_XOM_ROUTING2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XML_XOM_ROUTING2](
	[seq_n] [numeric](18, 0) NOT NULL,
	[cust_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[division] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[route] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sc_env] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_to] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PLANT_CODE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FORWARDER] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_XML_XOM_ROUTING2] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[XML_XOM_ROUTING2] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[XML_XOM_ROUTING2] TO [public] AS [dbo]
GO
