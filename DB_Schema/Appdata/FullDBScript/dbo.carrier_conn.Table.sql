USE [appdata]
GO
/****** Object:  Table [dbo].[carrier_conn]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[carrier_conn]
GO
/****** Object:  Table [dbo].[carrier_conn]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[carrier_conn]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[carrier_conn](
	[vendor_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[carrier_name] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[carrier_conn] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[env] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[scac] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[carrier_msg315] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contract_ref] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FOB_CARRIER_CONN] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_carrier_conn] PRIMARY KEY CLUSTERED 
(
	[vendor_id] ASC,
	[carrier_conn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[carrier_conn] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[carrier_conn] TO [public] AS [dbo]
GO
