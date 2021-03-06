USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[chgcode_mapping]') AND type in (N'U'))
ALTER TABLE [dbo].[chgcode_mapping] DROP CONSTRAINT IF EXISTS [DF__chgcode_m__creat__2D887613]
GO
/****** Object:  Table [dbo].[chgcode_mapping]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[chgcode_mapping]
GO
/****** Object:  Table [dbo].[chgcode_mapping]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[chgcode_mapping]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[chgcode_mapping](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[environment_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fr_chgcode_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[to_chgcode_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_chgcode_mapping] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[chgcode_mapping] TO  SCHEMA OWNER 
GO
