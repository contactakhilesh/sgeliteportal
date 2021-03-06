USE [appdata]
GO
/****** Object:  Table [dbo].[dhl_state]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[dhl_state]
GO
/****** Object:  Table [dbo].[dhl_state]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dhl_state]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dhl_state](
	[state_id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[State] [varchar](35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Country_cd] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Country_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[postal_abbreviation] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__dhl_state__548247A3] PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[dhl_state] TO  SCHEMA OWNER 
GO
