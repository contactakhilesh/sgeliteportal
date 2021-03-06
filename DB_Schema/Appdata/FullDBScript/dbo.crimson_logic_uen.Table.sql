USE [appdata]
GO
/****** Object:  Table [dbo].[crimson_logic_uen]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[crimson_logic_uen]
GO
/****** Object:  Table [dbo].[crimson_logic_uen]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[crimson_logic_uen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[crimson_logic_uen](
	[cr_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[entity_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[uen] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[uen_status] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[isssue_ageny] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[entity_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [crimson_logic_uen_pk] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[crimson_logic_uen] TO  SCHEMA OWNER 
GO
