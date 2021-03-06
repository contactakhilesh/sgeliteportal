USE [appdata]
GO
/****** Object:  Table [dbo].[domestic_master_com_type]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[domestic_master_com_type]
GO
/****** Object:  Table [dbo].[domestic_master_com_type]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[domestic_master_com_type]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[domestic_master_com_type](
	[commodity_type] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Chgcode_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_domestic_master_com_type] PRIMARY KEY CLUSTERED 
(
	[commodity_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[domestic_master_com_type] TO  SCHEMA OWNER 
GO
