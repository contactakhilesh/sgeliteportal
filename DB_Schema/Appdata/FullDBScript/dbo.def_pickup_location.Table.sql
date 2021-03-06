USE [appdata]
GO
/****** Object:  Table [dbo].[def_pickup_location]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[def_pickup_location]
GO
/****** Object:  Table [dbo].[def_pickup_location]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[def_pickup_location]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[def_pickup_location](
	[carrier_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[def_pickup_location] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_def_pickup_location] PRIMARY KEY CLUSTERED 
(
	[carrier_id] ASC,
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[def_pickup_location] TO  SCHEMA OWNER 
GO
