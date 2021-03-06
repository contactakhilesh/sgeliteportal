USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[entity_info]') AND type in (N'U'))
ALTER TABLE [dbo].[entity_info] DROP CONSTRAINT IF EXISTS [DF__entity_in__chk_p__771756C9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[entity_info]') AND type in (N'U'))
ALTER TABLE [dbo].[entity_info] DROP CONSTRAINT IF EXISTS [DF_entity_info_created_dt]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[entity_info]') AND type in (N'U'))
ALTER TABLE [dbo].[entity_info] DROP CONSTRAINT IF EXISTS [DF_entity_info_ismain]
GO
/****** Object:  Table [dbo].[entity_info]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[entity_info]
GO
/****** Object:  Table [dbo].[entity_info]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[entity_info]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[entity_info](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[entity_db] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[entity_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ismain] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[chk_payable_linked_to_invoice] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_entity_info] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[entity_info] TO  SCHEMA OWNER 
GO
