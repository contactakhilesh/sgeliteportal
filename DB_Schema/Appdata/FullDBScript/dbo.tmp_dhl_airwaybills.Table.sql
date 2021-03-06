USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_dhl_airwaybills]') AND type in (N'U'))
ALTER TABLE [dbo].[tmp_dhl_airwaybills] DROP CONSTRAINT IF EXISTS [DF_tmp_dhl_airwaybills_created_dt]
GO
/****** Object:  Table [dbo].[tmp_dhl_airwaybills]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[tmp_dhl_airwaybills]
GO
/****** Object:  Table [dbo].[tmp_dhl_airwaybills]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tmp_dhl_airwaybills]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tmp_dhl_airwaybills](
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[airwaybills_id] [numeric](18, 0) NOT NULL,
	[user_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_id] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[line_no] [int] NOT NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_tmp_dhl_airwaybills] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[tmp_dhl_airwaybills] TO  SCHEMA OWNER 
GO
