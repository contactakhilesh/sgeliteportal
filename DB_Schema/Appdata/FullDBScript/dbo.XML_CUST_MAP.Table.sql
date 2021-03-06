USE [appdata]
GO
/****** Object:  Table [dbo].[XML_CUST_MAP]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[XML_CUST_MAP]
GO
/****** Object:  Table [dbo].[XML_CUST_MAP]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XML_CUST_MAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XML_CUST_MAP](
	[seq_n] [decimal](18, 0) NOT NULL,
	[from_cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[from_cust_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[to_cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[to_cust_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[from_office_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[to_office_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[product_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[XML_CUST_MAP] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[XML_CUST_MAP] TO [public] AS [dbo]
GO
