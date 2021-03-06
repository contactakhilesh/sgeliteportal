USE [appdata]
GO
/****** Object:  Table [dbo].[domestic_master_zone]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[domestic_master_zone]
GO
/****** Object:  Table [dbo].[domestic_master_zone]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[domestic_master_zone]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[domestic_master_zone](
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[zone_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[zone_desc] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[zone_charge] [decimal](9, 4) NULL,
	[zone_rate] [decimal](9, 4) NULL,
	[distance] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[commodity_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[entry_d] [datetime] NULL,
	[user_id] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_d] [datetime] NULL,
	[modified_by] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_master_zone] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC,
	[zone_id] ASC,
	[commodity_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[domestic_master_zone] TO  SCHEMA OWNER 
GO
