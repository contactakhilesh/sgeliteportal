USE [appdata]
GO
/****** Object:  Table [dbo].[PRESET_NC_MAST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[PRESET_NC_MAST]
GO
/****** Object:  Table [dbo].[PRESET_NC_MAST]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRESET_NC_MAST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRESET_NC_MAST](
	[parentacctid] [decimal](5, 0) NULL,
	[team_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nc_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nc_parties] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nc_type_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nc_add_desc] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[date_created] [datetime] NULL,
	[rowid] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pk_PRESET_NC_MAST_pid] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[PRESET_NC_MAST] TO  SCHEMA OWNER 
GO
