USE [appdata]
GO
/****** Object:  Table [dbo].[temp_export]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[temp_export]
GO
/****** Object:  Table [dbo].[temp_export]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp_export]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp_export](
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[export_n] [numeric](10, 0) NOT NULL,
	[cust_ord_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_load_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_desc_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_disc_name] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COUNTRY_ULTIMATE_DEST] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[etd] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[temp_export] TO  SCHEMA OWNER 
GO
