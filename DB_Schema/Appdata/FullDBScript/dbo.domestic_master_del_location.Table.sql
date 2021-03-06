USE [appdata]
GO
/****** Object:  Table [dbo].[domestic_master_del_location]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[domestic_master_del_location]
GO
/****** Object:  Table [dbo].[domestic_master_del_location]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[domestic_master_del_location]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[domestic_master_del_location](
	[loc_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[loc_desc] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[country_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[province] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[longitude] [numeric](10, 5) NULL,
	[latitude] [numeric](10, 5) NULL,
 CONSTRAINT [PK_domestic_master_del_location] PRIMARY KEY CLUSTERED 
(
	[loc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[domestic_master_del_location] TO  SCHEMA OWNER 
GO
