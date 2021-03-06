USE [appdata]
GO
/****** Object:  Table [dbo].[dhl_directory]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[dhl_directory]
GO
/****** Object:  Table [dbo].[dhl_directory]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_directory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dhl_directory](
	[directory_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[country_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[country_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IATA] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[City] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Z_sector] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Z_rate_subset] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[L_sector] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[L_rate_subset] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[A_sector] [varchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[A_rate_subset] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__dhl_directory__3BB699D9] PRIMARY KEY CLUSTERED 
(
	[directory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[dhl_directory] TO  SCHEMA OWNER 
GO
