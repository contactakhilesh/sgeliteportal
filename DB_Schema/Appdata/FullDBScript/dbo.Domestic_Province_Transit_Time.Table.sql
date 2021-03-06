USE [appdata]
GO
/****** Object:  Table [dbo].[Domestic_Province_Transit_Time]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[Domestic_Province_Transit_Time]
GO
/****** Object:  Table [dbo].[Domestic_Province_Transit_Time]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Domestic_Province_Transit_Time]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Domestic_Province_Transit_Time](
	[province] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[time_scale] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[transit_time] [decimal](18, 0) NULL,
	[remarks] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_by] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_d] [datetime] NULL,
	[modified_by] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[modified_d] [datetime] NULL,
	[port_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_desc] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Domestic_Province_Transit_Time] TO  SCHEMA OWNER 
GO
