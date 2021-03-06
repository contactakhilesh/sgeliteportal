USE [appdata]
GO
/****** Object:  Table [dbo].[permit_pri_prod]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[permit_pri_prod]
GO
/****** Object:  Table [dbo].[permit_pri_prod]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permit_pri_prod]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permit_pri_prod](
	[country_id] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[prod_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[permit_pri_prod] TO  SCHEMA OWNER 
GO
