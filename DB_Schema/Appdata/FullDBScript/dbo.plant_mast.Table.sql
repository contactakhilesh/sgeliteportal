USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plant_mast]') AND type in (N'U'))
ALTER TABLE [dbo].[plant_mast] DROP CONSTRAINT IF EXISTS [DF__plant_mas__creat__62713F9E]
GO
/****** Object:  Table [dbo].[plant_mast]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[plant_mast]
GO
/****** Object:  Table [dbo].[plant_mast]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plant_mast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[plant_mast](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[plant_name] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[contact_person1] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_person2] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[telephone1] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[telephone2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fax1] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[fax2] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email1] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email2] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_plant_mast] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[plant_mast] TO  SCHEMA OWNER 
GO
